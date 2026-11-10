import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter/xray_core_flutter.dart';

import 'xray_26_10_21_test.dart' show withStream;

void main() {
  test('XHTTP retains raw h2Params through aliases and nested streams', () {
    for (final key in ['xhttpSettings', 'splithttpSettings']) {
      final json = <String, dynamic>{
        'network': 'xhttp',
        key: {
          'uplinkHTTPMethod': 'OPTIONS',
          'h2Params': {'MaxConcurrentStreams': 128, 'PingTimeout': 15000000000},
          'downloadSettings': {
            'network': 'xhttp',
            'xhttpSettings': {
              'h2Params': {'MaxReadFrameSize': 16384},
            },
          },
        },
      };
      final stream = StreamConfig.fromJson(json);
      expect(stream.toJson(), json);
      expect(withStream(stream, inbound: true).validate(), isEmpty);
      expect(withStream(stream).validate(), isEmpty);
    }
  });

  test('h2Params preserves raw JSON without imposing runtime HTTP2 schema', () {
    for (final value in <Object>[
      {},
      {'FutureOption': true},
      [],
      'raw',
      3,
      false,
    ]) {
      final json = {'h2Params': value};
      expect(SplitHTTPConfig.fromJson(json).toJson(), json);
    }
    expect(SplitHTTPConfig.fromJson({}).toJson(), isEmpty);
    expect(SplitHTTPConfig.fromJson({'h2Params': null}).toJson(), isEmpty);
    final extra = {
      'h2Params': {'MaxConcurrentStreams': 64},
    };
    expect(SplitHTTPConfig.fromJson({'extra': extra}).toJson(), {
      'extra': extra,
    });
  });

  test(
    'TUN accepts new WFP options and retains input spelling and duplicates',
    () {
      final values = [
        'DNS',
        'MisconfigTUN',
        'WinDNSClient',
        'tcp/53',
        'UDP/853',
        'tcp/0853',
        'udp/65535',
        'tcp/1',
        'tcp/00000000000000000053',
        'DNS',
      ];
      final json = {'autoSystemWfpBlockLeak': values};
      final tun = TunConfig.fromJson(json);
      expect(tun.toJson(), json);
      expect(
        XrayConfig(
          inbounds: [InboundDetourConfig.tun(settings: tun)],
        ).validate(),
        isEmpty,
      );
    },
  );

  test('TUN rejects malformed WFP ports with the exact element path', () {
    for (final value in [
      '',
      'ip',
      'tcp/',
      'tcp/0',
      'udp/65536',
      'tcp/-1',
      'tcp/+53',
      'tcp/53/1',
      'udp/abc',
      'icmp/1',
      'tcp:53',
      ' dns',
      'tcp/53 ',
      'tcp/0x35',
      'tcp/5_3',
      'udp/５３',
      'tcp/53\n',
    ]) {
      final config = XrayConfig(
        inbounds: [
          InboundDetourConfig.tun(
            settings: TunConfig(autoSystemWfpBlockLeak: ['dns', value]),
          ),
        ],
      );
      expect(
        config.validate().single.path,
        'inbounds[0].settings.autoSystemWfpBlockLeak[1]',
        reason: value,
      );
    }
  });
}
