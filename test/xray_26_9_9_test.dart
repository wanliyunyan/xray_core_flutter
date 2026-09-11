import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter/xray_core_flutter.dart';

void main() {
  test('round trips Xray 26.9.9 transport and finalmask options', () {
    final json = <String, dynamic>{
      'network': 'hysteria',
      'hysteriaSettings': {
        'version': 2,
        'masquerade': {'type': 'proxy', 'xForwarded': true},
      },
      'finalmask': {
        'udp': [
          {
            'type': 'udphop',
            'settings': {
              'mode': 'intervalremote,intervallocal',
              'sockopt': {'mark': 7},
              'remotePorts': '20000-20010',
              'remoteIPs': ['192.0.2.1', '198.51.100.0/24'],
              'interval': '5-10',
            },
          },
          {
            'type': 'realm',
            'settings': {
              'ipMode': 'v4',
              'portMapping': {'enabled': true, 'timeout': 10, 'lifetime': 60},
            },
          },
        ],
        'quicParams': {
          'brutalDisableLossCompensation': true,
          'disableChromeParrot': false,
          'disableGSO': true,
          'disableStatelessReset': false,
        },
      },
    };
    final stream = StreamConfig.fromJson(json);
    final hop = stream.finalmask!.udp!.first.settings! as UDPHop;
    expect(hop.remoteIPs, hasLength(2));
    expect(hop.interval!.from, 5);
    expect(hop.remotePorts, isA<XrayPortList>());
    final realm = stream.finalmask!.udp!.last.settings! as Realm;
    expect(realm.portMapping!.lifetime, 60);
    expect(stream.toJson(), json);
  });

  test('constructs and imports OS routing and WireGuard remote DNS', () {
    final rule = RouterRule.toOutbound(
      outboundTag: 'wg',
      localOS: const XrayStringList(['android', 'linux']),
    );
    expect(RouterRule.fromJson(rule.toJson()).toJson(), rule.toJson());
    expect(rule.toJson()['localOS'], ['android', 'linux']);
    final balanced = RouterRule.toBalancer(
      balancerTag: 'auto',
      localOS: XrayStringList.single('windows'),
    );
    expect(balanced.toJson()['localOS'], ['windows']);
    const wg = WireGuardConfig(secretKey: 'key', remoteDNS: ['1.1.1.1']);
    expect(WireGuardConfig.fromJson(wg.toJson()).remoteDNS, ['1.1.1.1']);
    expect(wg.toJson()['remoteDNS'], ['1.1.1.1']);
  });

  test('supports base64 custom blackhole responses and default none', () {
    const config = BlackholeConfig(response: BlackholeResponse.custom('b2s='));
    final json = {
      'response': {'type': 'custom', 'customResponseData': 'b2s='},
    };
    expect(config.toJson(), json);
    final parsed = BlackholeConfig.fromJson(json);
    expect(parsed.response, isA<ResponseConfig>());
    expect(parsed.toJson(), json);
    expect(BlackholeResponse.fromJson({}), isA<NoneResponse>());
  });

  test('rejects removed proxySettings but accepts dialerProxy migration', () {
    final legacy = XrayConfig.fromJson({
      'outbounds': [
        {'protocol': 'freedom', 'proxySettings': {}},
      ],
    });
    expect(legacy.validate().map((i) => i.path),
        contains('outbounds[0].proxySettings'));
    expect(legacy.assertValid, throwsA(isA<XrayConfigValidationException>()));
    const migrated = XrayConfig(outbounds: [
      OutboundDetourConfig(
        protocol: 'freedom',
        streamSettings:
            StreamConfig(sockopt: SocketConfig(dialerProxy: 'upstream')),
      ),
      OutboundDetourConfig(protocol: 'freedom', tag: 'upstream'),
    ]);
    expect(migrated.validate(), isEmpty);
    expect((migrated.toJson()['outbounds'] as List).first,
        isNot(contains('proxySettings')));
  });

  test('rejects freedom addressPortStrategy except none', () {
    for (final protocol in ['freedom', 'direct', 'FREEDOM', 'DiReCt']) {
      final config = XrayConfig(outbounds: [
        OutboundDetourConfig(
          protocol: protocol,
          streamSettings: const StreamConfig(
            sockopt: SocketConfig(
                addressPortStrategy: AddressPortStrategy.srvportonly),
          ),
        ),
      ]);
      expect(config.validate().single.path,
          'outbounds[0].streamSettings.sockopt.addressPortStrategy');
    }
    const valid = XrayConfig(outbounds: [
      OutboundDetourConfig(
          protocol: 'freedom',
          streamSettings: StreamConfig(
            sockopt:
                SocketConfig(addressPortStrategy: AddressPortStrategy.none),
          )),
    ]);
    expect(valid.validate(), isEmpty);
  });

  test('does not emit retired Hysteria and QUIC fields', () {
    final hysteria = HysteriaConfig.fromJson({
      'version': 2,
      'congestion': 'bbr',
      'up': '10mbps',
      'down': '20mbps',
      'udphop': {'ports': '1000-2000'},
    });
    expect(hysteria.toJson(), {'version': 2});
    expect(
        QuicParamsConfig.fromJson({
          'udpHop': {'ports': 1000}
        }).toJson(),
        isEmpty);
  });
}
