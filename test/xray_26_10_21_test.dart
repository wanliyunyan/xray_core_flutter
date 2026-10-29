import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter/xray_core_flutter.dart';

XrayConfig withStream(StreamConfig stream, {bool inbound = false}) => inbound
    ? XrayConfig(
        inbounds: [
          InboundDetourConfig.socks(
            port: XrayPortList.single(1080),
            settings: const SocksServerConfig(),
            streamSettings: stream,
          ),
        ],
      )
    : XrayConfig(
        outbounds: [OutboundDetourConfig.direct(streamSettings: stream)],
      );

StreamConfig drive({
  List<String>? alpn,
  String service = 'google-drive',
  String security = 'tls',
  Map<String, dynamic>? finalmask,
  Map<String, dynamic>? xmux,
}) => StreamConfig.fromJson({
  'method': 'xdrive',
  'security': security,
  'tlsSettings': {'alpn': alpn},
  'xdriveSettings': {
    'service': service,
    'secrets': ['a', 'b', 'c'],
    'template': {},
    'xmux': ?xmux,
  },
  'finalmask': ?finalmask,
});

void main() {
  test(
    'XDrive preserves XMUX and two-step templates without adding defaults',
    () {
      final json = <String, dynamic>{
        'service': 'template',
        'template': {
          'upload': {'hrefPath': 'data.url', 'method': 'PUT'},
        },
        'xmux': {'maxConnections': '1-2', 'hKeepAlivePeriod': -1},
      };
      expect(XDriveConfig.fromJson(json).toJson(), json);
      expect(const XDriveConfig(service: 'local').toJson(), {
        'service': 'local',
      });
    },
  );

  test('XDrive rejects conflicting positive XMUX upper endpoints', () {
    for (final connections in [0, '0-0', '0-2']) {
      final issues = withStream(
        drive(xmux: {'maxConnections': connections, 'maxConcurrency': '1-8'}),
      ).validate();
      expect(
        issues
            .map((i) => i.path)
            .contains('outbounds[0].streamSettings.xdriveSettings.xmux'),
        connections == '0-2',
      );
    }
  });

  test('XDrive h3 checks exact ALPN, TLS, service and congestion', () {
    for (final alpn in [
      null,
      ['h2'],
      ['h3'],
      ['h3', 'h2'],
    ]) {
      for (final service in ['google-drive', 'Google Drive', 'local']) {
        for (final congestion in [
          'bbr',
          'reno',
          'brutal',
          'force-brutal',
          'BRUTAL',
        ]) {
          final stream = drive(
            alpn: alpn,
            service: service,
            finalmask: {
              'udp': [
                {
                  'type': 'salamander',
                  'settings': {'password': 'p'},
                },
              ],
              'quicParams': {'congestion': congestion},
            },
          );
          final paths = withStream(
            stream,
          ).validate().map((i) => i.path).toList();
          final h3 = alpn?.length == 1 && alpn?.single == 'h3';
          expect(
            paths.contains('outbounds[0].streamSettings.finalmask.udp[0].type'),
            h3 && service != 'local',
            reason: '$alpn $service',
          );
          expect(
            paths.contains(
              'outbounds[0].streamSettings.finalmask.quicParams.congestion',
            ),
            h3 && congestion.toLowerCase().contains('brutal'),
            reason: '$alpn $congestion',
          );
        }
      }
    }
    expect(
      withStream(
        drive(
          alpn: ['h3'],
          finalmask: {
            'udp': [
              {'type': 'Noise', 'settings': {}},
            ],
          },
        ),
      ).validate(),
      isEmpty,
    );
    expect(
      withStream(
        drive(
          alpn: ['h3'],
          security: 'none',
          finalmask: {
            'quicParams': {'congestion': 'brutal'},
          },
        ),
      ).validate(),
      isEmpty,
    );
  });

  test('filter is typed and round trips on both transports', () {
    for (final udp in [false, true]) {
      final json = {
        'type': 'FiLtEr',
        'settings': {
          'blockedSourceIPs': ['192.0.2.0/24'],
          'allowedSourceIPs': <String>[],
        },
      };
      final mask = Mask.fromJson(json, udp: udp);
      expect(mask.settings, isNot(isA<RawFinalMaskSettings>()));
      expect(mask.toJson(), json);
    }
  });

  test('filter validates rule syntax in both directions and mask chains', () {
    for (final inbound in [false, true]) {
      for (final network in ['tcp', 'udp']) {
        for (final field in ['blockedSourceIPs', 'allowedSourceIPs']) {
          for (final rule in [
            '192.0.2.0/33',
            'example.com',
            'geoip:',
            'ext::cn',
            '!',
          ]) {
            final stream = StreamConfig.fromJson({
              'finalmask': {
                network: [
                  {
                    'type': 'filter',
                    'settings': {
                      field: [rule],
                    },
                  },
                ],
              },
            });
            expect(
              withStream(
                stream,
                inbound: inbound,
              ).validate().map((i) => i.path),
              contains(
                '${inbound ? 'inbounds' : 'outbounds'}[0].streamSettings.finalmask.$network[0].settings.$field[0]',
              ),
              reason: rule,
            );
          }
        }
        final stream = StreamConfig.fromJson({
          'finalmask': {
            network: [
              {
                'type': 'filter',
                'settings': {
                  'blockedSourceIPs': [
                    '!192.0.2.1',
                    '!!2001:db8::/32',
                    '192.0.2.0/024',
                    '192.0.2.1/',
                    '[2001:db8::1]/64',
                    ' 192.0.2.1 /24',
                  ],
                  'allowedSourceIPs': ['geoip:!cn', '!ext-ip:custom.dat:!!cn'],
                },
              },
            ],
          },
        });
        expect(withStream(stream, inbound: inbound).validate(), isEmpty);
      }
    }
  });
}
