import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter/xray_core_flutter.dart';

import 'xray_26_10_21_test.dart' show withStream;

Map<String, dynamic> s3Settings() => {
  'service': 's3',
  'remoteFolder': 'xray/sessions/',
  'secrets': ['access-key', 'secret-key'],
  's3': <String, dynamic>{
    'endpoint': 'https://s3.example.com/prefix',
    'region': 'us-east-1',
    'bucket': 'xray-bucket',
  },
};

List<XrayValidationIssue> validateDrive(
  Map<String, dynamic> json, {
  bool inbound = false,
}) => withStream(
  StreamConfig(xdriveSettings: XDriveConfig.fromJson(json)),
  inbound: inbound,
).validate();

void main() {
  test('S3 IPv6 zones distinguish raw Unicode from escaped bytes like Go', () {
    for (final entry in {
      'https://[fe80::1%25接口]': true,
      'https://[fe80::1%25%E6%8E%A5%E5%8F%A3]': false,
      'https://[fe80::1%25%FF]': false,
      'https://[fe80::1%25Ethernet%202]': true,
    }.entries) {
      final json = s3Settings();
      (json['s3'] as Map)['endpoint'] = entry.key;
      expect(validateDrive(json).isEmpty, entry.value, reason: entry.key);
    }
  });

  test('S3 hostname parsing follows Go without Dart URI normalization', () {
    for (final endpoint in [
      'https://a]b.example.com',
      'https://a\u00a0b.example.com',
      'https://a\u2028b.example.com',
      'https://a\ufeffb.example.com',
      'http://[::1]:9999999999999999999999',
    ]) {
      final json = s3Settings();
      (json['s3'] as Map)['endpoint'] = endpoint;
      expect(validateDrive(json), isEmpty, reason: endpoint);
      expect(XDriveConfig.fromJson(json).toJson(), json);
    }
    final json = s3Settings();
    (json['s3'] as Map)['endpoint'] = 'https://[fe80::1%25%FF]';
    expect(
      validateDrive(json).map((i) => i.path),
      contains('outbounds[0].streamSettings.xdriveSettings.s3.endpoint'),
    );
  });

  test('S3 h3 respects effective transport and nested download streams', () {
    for (final method in [null, 'xdrive', 'tcp']) {
      final stream = StreamConfig.fromJson({
        'network': 'xdrive',
        'method': ?method,
        'security': 'tls',
        'tlsSettings': {
          'alpn': ['h3'],
        },
        'xdriveSettings': s3Settings(),
        'finalmask': {
          'udp': [
            {
              'type': 'salamander',
              'settings': {'password': 'test'},
            },
          ],
          'quicParams': {'congestion': 'brutal'},
        },
      });
      final direct = withStream(stream);
      final nested = withStream(
        StreamConfig(
          network: TransportProtocol.xhttp,
          xhttpSettings: SplitHTTPConfig(downloadSettings: stream),
        ),
      );
      for (final config in [direct, nested]) {
        final expected = method == 'tcp'
            ? isEmpty
            : contains(endsWith('finalmask.quicParams.congestion'));
        expect(config.validate().map((i) => i.path), expected);
        expect(
          config.validate().any(
            (i) => i.path.endsWith('finalmask.udp[0].type'),
          ),
          isFalse,
        );
        expect(
          XrayConfig.fromJson(config.toJson()).validate().map((i) => i.path),
          expected,
        );
      }
    }
    final bad = s3Settings()..remove('s3');
    final config = withStream(
      StreamConfig(
        xhttpSettings: SplitHTTPConfig(
          downloadSettings: StreamConfig(
            network: TransportProtocol.xdrive,
            xdriveSettings: XDriveConfig.fromJson(bad),
          ),
        ),
      ),
    );
    expect(
      config.validate().map((i) => i.path),
      contains(
        'outbounds[0].streamSettings.xhttpSettings.downloadSettings.xdriveSettings.s3',
      ),
    );
  });

  group('active Geodata schedules', () {
    const asset = GeodataAssetConfig(
      url: 'https://example.com/geoip.dat',
      file: 'geoip.dat',
    );
    test('limits assets to 100 and requires .dat extensions', () {
      for (final count in [100, 101]) {
        final config = XrayConfig(
          geodata: GeodataConfig(
            cron: '0 0 * * *',
            assets: List.filled(count, asset),
          ),
        );
        expect(
          config.validate().map((i) => i.path),
          count == 100 ? isEmpty : contains('geodata.assets'),
        );
      }
      for (final file in ['geoip.json', 'geoip.dat/', '']) {
        final config = XrayConfig(
          geodata: GeodataConfig(
            cron: '@daily',
            assets: [asset.copyWith(file: file)],
          ),
        );
        expect(
          config.validate().map((i) => i.path),
          contains('geodata.assets[0].file'),
        );
      }
      for (final file in ['geoip.DAT', 'subdir/geosite.dat', 'missing.dat']) {
        expect(
          XrayConfig(
            geodata: GeodataConfig(
              cron: '@daily',
              assets: [asset.copyWith(file: file)],
            ),
          ).validate(),
          isEmpty,
        );
      }
    });

    test('checks Go duration syntax and the one-minute interval minimum', () {
      for (final duration in [
        '0',
        '-1h',
        '59.999999999s',
        '1ms',
        '1µs',
        '1μs',
        '0.5m',
        'invalid',
        '1d',
        '1e2s',
        '9223372036854775808ns',
        '9223372036854775807.9999999999999999999ns',
      ]) {
        for (final prefix in ['', 'CRON_TZ=UTC ', 'TZ=UTC ']) {
          expect(
            XrayConfig(
              geodata: GeodataConfig(cron: '$prefix@every $duration'),
            ).validate().map((i) => i.path),
            contains('geodata.cron'),
            reason: duration,
          );
        }
      }
      for (final duration in [
        '1m',
        '60s',
        '+60s',
        '0.5m30s',
        '1.m',
        '60000000000ns',
        '1h30m',
        '60.000000001s',
        '59.99999999999999999999s',
      ]) {
        expect(
          XrayConfig(
            geodata: GeodataConfig(cron: '@every $duration'),
          ).validate(),
          isEmpty,
          reason: duration,
        );
      }
    });

    test('asset runtime restrictions do not apply without a schedule', () {
      for (final cron in <String?>[null, '']) {
        expect(
          XrayConfig(
            geodata: GeodataConfig(
              cron: cron,
              assets: List.filled(101, asset.copyWith(file: 'inactive.json')),
            ),
          ).validate(),
          isEmpty,
        );
      }
    });
  });

  test('S3 accepts escaped DNS hosts and scoped IPv6 like Go net/url', () {
    for (final endpoint in [
      'https://%E4%BE%8B.example.com',
      'http://[fe80::1%25eth0]:9000',
      'http://[fe80::1%25Ethernet%202]:99999/base path',
    ]) {
      final json = s3Settings();
      (json['s3'] as Map)['endpoint'] = endpoint;
      for (final style in [true, false]) {
        (json['s3'] as Map)['pathStyle'] = style;
        expect(validateDrive(json), isEmpty, reason: '$endpoint $style');
        expect(XDriveConfig.fromJson(json).toJson(), json);
      }
    }
  });

  test('S3 typed constructors and copyWith retain nested settings', () {
    const drive = XDriveConfig(
      service: 's3',
      s3: XDriveS3Config(
        endpoint: 'https://s3.example.com',
        bucket: 'bucket',
        pathStyle: false,
      ),
    );
    final copy = drive.copyWith(s3: drive.s3!.copyWith(region: 'us-west-2'));
    expect(copy.s3!.toJson(), {
      'endpoint': 'https://s3.example.com',
      'bucket': 'bucket',
      'pathStyle': false,
      'region': 'us-west-2',
    });
    expect(drive.s3!.region, isNull);
  });

  test('S3 settings round trip including omitted and explicit pathStyle', () {
    for (final style in [null, true, false]) {
      final json = s3Settings();
      if (style != null) (json['s3'] as Map)['pathStyle'] = style;
      expect(XDriveConfig.fromJson(json).toJson(), json);
      expect(validateDrive(json), isEmpty);
    }
  });

  test('S3 validates fields for both inbound and outbound streams', () {
    final cases = <String, List<Object?>>{
      's3': [null],
      's3.endpoint': [
        '',
        'ftp://host',
        'https://user@host',
        'https://@host',
        'https://host?',
        'https://host#fragment',
        'https://host/a%zz',
        'https://host:abc',
        'https://%41.example.com',
        'https://[fe80::1%25eth%0A0]',
        'https://[fe80::1%25]',
        'https://[fe80::1%25eth%2F0]',
        'https://bad host',
      ],
      's3.region': [
        'us/east',
        'us,east',
        'us east',
        'us\teast',
        'us\neast',
        '\x7f',
      ],
      's3.bucket': ['', 'a/b', '.', '..', 'a\\b', 'a\nb'],
      'remoteFolder': ['', '/absolute', 'a//b', 'a/../b', './a', 'a//', 'a\\b'],
      'secrets': [
        <String>[],
        ['a'],
        ['', 'b'],
        ['a', ''],
        ['a', 'b', 'c', 'd'],
        ['a/b', 'b'],
        ['a b', 'b'],
        ['a', 'b\nc'],
        ['a', 'b', 'c\x7f'],
      ],
    };
    for (final inbound in [false, true]) {
      for (final entry in cases.entries) {
        for (final value in entry.value) {
          final json = s3Settings();
          final parts = entry.key.split('.');
          if (parts.length == 2) {
            (json[parts.first] as Map)[parts.last] = value;
          } else {
            json[entry.key] = value;
          }
          expect(
            validateDrive(json, inbound: inbound).map((i) => i.path),
            contains(
              '${inbound ? 'inbounds' : 'outbounds'}[0].streamSettings.xdriveSettings.${entry.key}',
            ),
            reason: '${entry.key}: $value',
          );
        }
      }
    }
  });

  test(
    'S3 virtual hosts require DNS endpoints and compatible bucket names',
    () {
      for (final endpoint in ['http://127.0.0.1:9000', 'http://[::1]:9000']) {
        final json = s3Settings();
        (json['s3'] as Map)['endpoint'] = endpoint;
        expect(
          validateDrive(json),
          isEmpty,
        ); // Omitted pathStyle defaults to true in Core.
        (json['s3'] as Map)['pathStyle'] = false;
        expect(
          validateDrive(json).map((i) => i.path),
          contains('outbounds[0].streamSettings.xdriveSettings.s3.endpoint'),
        );
      }
      for (final bucket in ['Upper', 'a_b', 'a..b', '.bucket', 'bucket.']) {
        final json = s3Settings();
        (json['s3'] as Map)['bucket'] = bucket;
        expect(validateDrive(json), isEmpty);
        (json['s3'] as Map)['pathStyle'] = false;
        expect(
          validateDrive(json).map((i) => i.path),
          contains('outbounds[0].streamSettings.xdriveSettings.s3.bucket'),
        );
      }
    },
  );

  test(
    'S3 accepts Core defaults, session tokens and opaque prefix characters',
    () {
      final json = s3Settings();
      (json['s3'] as Map).remove('region');
      json['remoteFolder'] = 'x ray/会话/';
      json['secrets'] = ['key', 'secret/with spaces', ''];
      expect(validateDrive(json), isEmpty);
      json['service'] = 'local';
      json['s3'] = {'endpoint': 'invalid'};
      expect(validateDrive(json), isEmpty);
    },
  );
}
