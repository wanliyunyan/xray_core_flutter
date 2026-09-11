import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter/xray_core_flutter.dart';

const _id = '00000000-0000-0000-0000-000000000000';

XrayConfig outbound(
  String protocol,
  String address, {
  bool full = false,
  String encryption = 'none',
  StreamConfig? stream,
}) {
  final endpoint = XrayAddress(address);
  final XrayOutboundSettings settings;
  if (protocol.toLowerCase() == 'vless') {
    settings = full
        ? VLessOutboundConfig(
            vnext: [
              VLessOutboundVnext(
                address: endpoint,
                port: 443,
                users: [VLessUser(id: _id, encryption: encryption)],
              ),
            ],
          )
        : VLessOutboundConfig(
            address: endpoint,
            port: 443,
            id: _id,
            encryption: encryption,
          );
  } else {
    settings = full
        ? TrojanClientConfig(
            servers: [
              TrojanServerTarget(
                address: endpoint,
                port: 443,
                password: 'secret',
              ),
            ],
          )
        : TrojanClientConfig(address: endpoint, port: 443, password: 'secret');
  }
  return XrayConfig(
    outbounds: [
      OutboundDetourConfig(
        protocol: protocol,
        settings: settings,
        streamSettings: stream,
      ),
    ],
  );
}

void main() {
  test('IP listeners require a port, including empty listen and localhost', () {
    for (final listen in <String?>[
      null,
      '',
      ' ',
      'localhost',
      '0.0.0.0',
      '127.0.0.1',
      '::',
      '[::1]',
      '::ffff:127.0.0.1',
    ]) {
      final config = XrayConfig(
        inbounds: [
          InboundDetourConfig(
            protocol: 'SoCkS',
            listen: listen == null ? null : XrayAddress(listen),
            settings: const SocksServerConfig(),
          ),
        ],
      );
      for (final candidate in [config, XrayConfig.fromJson(config.toJson())]) {
        expect(candidate.validate().map((i) => i.path), [
          'inbounds[0].port',
        ], reason: '$listen');
        expect(
          candidate.assertValid,
          throwsA(isA<XrayConfigValidationException>()),
        );
      }
      expect(
        config
            .copyWith(
              inbounds: [
                config.inbounds!.single.copyWith(
                  port: XrayPortList.single(1080),
                ),
              ],
            )
            .validate(),
        isEmpty,
      );
    }
  });

  test('TUN and Unix socket listeners do not require a port', () {
    const tun = XrayConfig(
      inbounds: [InboundDetourConfig(protocol: 'TuN', settings: TunConfig())],
    );
    expect(tun.validate(), isEmpty);
    for (final address in ['/tmp/xray.sock', '@xray', 'env:XRAY_LISTEN']) {
      final config = XrayConfig(
        inbounds: [
          InboundDetourConfig(
            protocol: 'socks',
            listen: XrayAddress(address),
            settings: const SocksServerConfig(),
          ),
        ],
      );
      expect(config.validate(), isEmpty);
      expect(XrayConfig.fromJson(config.toJson()).validate(), isEmpty);
    }
  });

  test('public VLESS and Trojan require security in both JSON forms', () {
    for (final protocol in ['vless', 'VLESS', 'trojan', 'TrOjAn']) {
      for (final full in [false, true]) {
        for (final address in [
          'example.com',
          'EXAMPLE.COM.',
          '8.8.8.8',
          '100.128.0.1',
          '172.32.0.1',
          '192.0.1.1',
          '198.20.0.1',
          '2001:4860:4860::8888',
          '[2001:4860:4860::8888]',
          '::ffff:8.8.8.8',
          'notlocal.com',
          '999',
          'a.local.com',
        ]) {
          final config = outbound(
            protocol,
            address,
            full: full,
            stream: const StreamConfig(security: SecurityProtocol.none),
          );
          for (final candidate in [
            config,
            XrayConfig.fromJson(config.toJson()),
          ]) {
            expect(candidate.validate().map((i) => i.path), [
              'outbounds[0].streamSettings.security',
            ], reason: '$protocol $full $address');
            expect(
              candidate.assertValid,
              throwsA(isA<XrayConfigValidationException>()),
            );
          }
        }
        expect(
          outbound(protocol, 'example.com', full: full).validate(),
          hasLength(1),
        );
        for (final security in [
          SecurityProtocol.tls,
          SecurityProtocol.reality,
        ]) {
          expect(
            outbound(
              protocol,
              'example.com',
              full: full,
              stream: StreamConfig(security: security),
            ).validate(),
            isEmpty,
          );
        }
      }
    }
  });

  test('Core private IP ranges and domain suffixes are exempt', () {
    for (final address in [
      '0.1.2.3',
      '10.1.2.3',
      '100.64.0.1',
      '100.127.255.255',
      '127.0.0.1',
      '169.254.1.2',
      '172.16.0.1',
      '172.31.255.255',
      '192.0.0.1',
      '192.0.2.1',
      '192.88.99.1',
      '192.168.1.1',
      '198.18.0.1',
      '198.19.255.255',
      '198.51.100.1',
      '203.0.113.1',
      '224.0.0.1',
      '255.255.255.255',
      '::',
      '::1',
      '[::1]',
      'fc00::1',
      'fdff::1',
      'fe80::1',
      'febf::1',
      'ff02::1',
      '::ffff:192.168.1.1',
      'LOCALHOST.',
      'a.local',
      'a.lan',
      'a.localdomain',
      'a.example',
      'a.invalid',
      'a.test',
      'a.home.arpa',
      'a.internal',
      'my-router',
    ]) {
      for (final protocol in ['vless', 'trojan']) {
        for (final full in [false, true]) {
          expect(
            outbound(protocol, address, full: full).validate(),
            isEmpty,
            reason: '$protocol $full $address',
          );
        }
      }
    }
  });

  test(
    'uses the effective VLESS account and simplified address precedence',
    () {
      // This tests the transport requirement, not encryption key validity.
      for (final full in [false, true]) {
        expect(
          outbound(
            'vless',
            'example.com',
            full: full,
            encryption: 'mlkem768x25519plus.native.0rtt.key',
          ).validate(),
          isEmpty,
        );
        expect(
          outbound(
            'vless',
            'example.com',
            full: full,
            encryption: '',
          ).validate(),
          hasLength(1),
        );
      }
      final full = outbound('vless', 'example.com', full: true);
      final original = full.outbounds!.single;
      final settings = original.settings! as VLessOutboundConfig;
      final ignoredRootEncryption = full.copyWith(
        outbounds: [
          original.copyWith(settings: settings.copyWith(encryption: 'ignored')),
        ],
      );
      expect(ignoredRootEncryption.validate(), hasLength(1));
      final simplified = full.copyWith(
        outbounds: [
          original.copyWith(
            settings: settings.copyWith(
              address: const XrayAddress('localhost'),
              encryption: 'none',
            ),
          ),
        ],
      );
      expect(simplified.validate(), isEmpty);
      final trojan = outbound('trojan', 'example.com', full: true);
      expect(
        trojan
            .copyWith(
              outbounds: [
                trojan.outbounds!.single.copyWith(
                  settings:
                      (trojan.outbounds!.single.settings! as TrojanClientConfig)
                          .copyWith(address: const XrayAddress('localhost')),
                ),
              ],
            )
            .validate(),
        isEmpty,
      );
    },
  );

  test('environment addresses and raw settings are deferred to Core', () {
    for (final protocol in ['vless', 'trojan']) {
      expect(outbound(protocol, 'env:XRAY_SERVER').validate(), isEmpty);
      final raw = XrayConfig(
        outbounds: [
          OutboundDetourConfig(
            protocol: protocol,
            settings: const XrayRawOutboundSettings({'address': 'example.com'}),
          ),
        ],
      );
      expect(raw.validate(), isEmpty);
      expect(raw.validate(allowRawSettings: false), isNotEmpty);
    }
  });
}
