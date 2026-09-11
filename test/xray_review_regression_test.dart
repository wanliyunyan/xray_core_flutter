import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter/xray_core_flutter.dart';

const _id = '00000000-0000-0000-0000-000000000000';
const _user = VLessUser(
  id: _id,
  reverse: VLessReverseConfig(tag: 'reverse-node'),
);

XrayConfig reverseConfig({
  List<VLessUser>? clients,
  List<VLessUser>? users,
  String protocol = 'vless',
}) => XrayConfig(
  inbounds: [
    InboundDetourConfig(
      protocol: protocol,
      port: XrayPortList.single(1080),
      settings: VLessInboundConfig(
        decryption: 'none',
        clients: clients,
        users: users,
      ),
    ),
  ],
  outbounds: const [
    OutboundDetourConfig(
      protocol: 'freedom',
      tag: 'direct',
      streamSettings: StreamConfig(
        sockopt: SocketConfig(dialerProxy: 'reverse-node'),
      ),
    ),
  ],
  routing: RouterConfig(
    ruleList: [RouterRule.toOutbound(outboundTag: 'reverse-node')],
  ),
);

void main() {
  test('VLESS reverse tags resolve dialerProxy and routing references', () {
    for (final config in [
      reverseConfig(clients: [_user]),
      reverseConfig(users: [_user], protocol: 'VLESS'),
      reverseConfig(
        clients: [
          _user,
          _user.copyWith(id: 'another-user'),
        ],
      ),
    ]) {
      expect(config.validate(), isEmpty);
      expect(XrayConfig.fromJson(config.toJson()).validate(), isEmpty);
    }
  });

  test(
    'ignored users and unrelated protocols cannot introduce reverse tags',
    () {
      for (final config in [
        reverseConfig(users: [_user], clients: []),
        reverseConfig(
          users: [_user],
          clients: [const VLessUser(id: _id)],
        ),
        reverseConfig(clients: [_user], protocol: 'socks'),
      ]) {
        expect(
          config.validate().map((issue) => issue.path),
          containsAll([
            'outbounds[0].streamSettings.sockopt.dialerProxy',
            'routing.rules[0].outboundTag',
          ]),
        );
      }
    },
  );

  test(
    'legacy root reverse is preserved on import but rejected by validation',
    () {
      for (final legacy in [
        <String, dynamic>{},
        {
          'bridges': [
            {'tag': 'bridge', 'domain': 'reverse.example'},
          ],
        },
        {
          'portals': [
            {'tag': 'portal', 'domain': 'reverse.example'},
          ],
        },
      ]) {
        final config = XrayConfig.fromJson({'reverse': legacy});
        expect(config.toJson(), {'reverse': legacy});
        expect(config.validate().single.path, 'reverse');
        expect(
          config.validate().single.message,
          contains('VLESS Reverse Proxy'),
        );
        expect(
          config.assertValid,
          throwsA(isA<XrayConfigValidationException>()),
        );
      }
    },
  );

  test(
    'domain listeners are invalid even with a port; env remains deferred',
    () {
      for (final listen in [
        'proxy.example.com',
        'router',
        'LOCALHOST',
        'localhost.',
        './xray.sock',
        '999.1.1.1',
      ]) {
        for (final port in <XrayPortList?>[null, XrayPortList.single(1080)]) {
          final config = XrayConfig(
            inbounds: [
              InboundDetourConfig(
                protocol: 'socks',
                listen: XrayAddress(listen),
                port: port,
                settings: const SocksServerConfig(),
              ),
            ],
          );
          expect(
            config.validate().single.path,
            'inbounds[0].listen',
            reason: listen,
          );
          expect(
            XrayConfig.fromJson(config.toJson()).validate().single.path,
            'inbounds[0].listen',
          );
        }
      }
      for (final listen in [
        'env:XRAY_LISTEN',
        '/tmp/xray.sock',
        '@xray',
        r'C:\xray.sock',
        r'\\server\share\xray.sock',
      ]) {
        final config = XrayConfig(
          inbounds: [
            InboundDetourConfig(
              protocol: 'socks',
              listen: XrayAddress(listen),
              settings: const SocksServerConfig(),
            ),
          ],
        );
        expect(config.validate(), isEmpty, reason: listen);
      }
      const tun = XrayConfig(
        inbounds: [
          InboundDetourConfig(
            protocol: 'tun',
            listen: XrayAddress('ignored.example.com'),
            settings: TunConfig(),
          ),
        ],
      );
      expect(tun.validate(), isEmpty);
    },
  );
}
