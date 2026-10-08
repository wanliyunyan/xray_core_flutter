import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter/xray_core_flutter.dart';

XrayConfig server(String address) => XrayConfig(
  inbounds: [
    InboundDetourConfig.masque(
      port: XrayPortList.single(443),
      settings: MasqueServerConfig(address: [address]),
      streamSettings: const StreamConfig(
        network: TransportProtocol.masque,
        security: SecurityProtocol.tls,
      ),
    ),
  ],
);

void main() {
  test('MASQUE host syntax preserves Go authority and unsigned port rules', () {
    final cases = <String, bool>{
      '@host': false,
      '@example.com': false,
      'example.com:+443': false,
      'example.com:-1': false,
      ']host': true,
      'a]b': true,
      'example.com:': true,
      'example.com:65536': true,
      'example.com:000443': true,
      ':443': true,
      '[::1]': true,
      '[::1]:443': true,
      '[::1]:': true,
      '[bad]:53': false,
      '[1.2.3.4]:53': false,
      '::1': false,
      'x[::1]:443': false,
      '[::1]suffix': false,
      'example.com:443\n': false,
    };
    for (final entry in cases.entries) {
      final config = XrayConfig(
        outbounds: [
          OutboundDetourConfig.direct(
            streamSettings: StreamConfig(
              masqueSettings: MasqueConfig(host: entry.key),
            ),
          ),
        ],
      );
      expect(config.validate().isEmpty, entry.value, reason: entry.key);
      expect(
        XrayConfig.fromJson(config.toJson()).validate().isEmpty,
        entry.value,
        reason: entry.key,
      );
    }
  });

  test('MASQUE rejects address pools that fail Core instance initialization', () {
    // Confirmed with core.New (without starting listeners), not just conf.Build.
    for (final address in [
      '10.0.0.0/24',
      '10.0.0.255/24',
      '10.0.0.1/31',
      '10.0.0.1/32',
      'fd00::/64',
      'fd00::1/127',
      'fd00::1/128',
      '::ffff:10.0.0.1/120',
    ]) {
      final config = server(address);
      for (final candidate in [config, XrayConfig.fromJson(config.toJson())]) {
        expect(
          candidate.validate().single.path,
          'inbounds[0].settings.address[0]',
          reason: address,
        );
        expect(
          candidate.assertValid,
          throwsA(isA<XrayConfigValidationException>()),
        );
      }
    }
  });

  test('MASQUE accepts small usable pools and keeps original host CIDRs', () {
    for (final address in [
      '10.0.0.1/24',
      '10.0.0.1/30',
      '10.0.0.2/30',
      'fd00::1/126',
      'fd00::3/126',
      '2001:db8::1/64',
    ]) {
      final config = server(address);
      final before = config.toJson();
      expect(config.validate(), isEmpty, reason: address);
      expect(config.toJson(), before);
      expect(XrayConfig.fromJson(before).validate(), isEmpty);
    }
  });
}
