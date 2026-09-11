import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter/xray_core_flutter.dart';

const _id = '00000000-0000-0000-0000-000000000000';
const _reverse = VLessReverseConfig(
  tag: 'reverse-in',
  sniffing: SniffingConfig(enabled: true),
);
const _settings = VLessOutboundConfig(
  address: XrayAddress('127.0.0.1'),
  port: 443,
  id: _id,
  encryption: 'none',
  reverse: _reverse,
);

XrayConfig _client(VLessOutboundConfig settings, {String protocol = 'vless'}) =>
    XrayConfig(
      outbounds: [
        OutboundDetourConfig(protocol: protocol, settings: settings),
        OutboundDetourConfig.direct(tag: 'direct'),
      ],
      routing: RouterConfig(
        ruleList: [
          RouterRule.toOutbound(
            outboundTag: 'direct',
            inboundTag: XrayStringList(['reverse-in']),
          ),
        ],
      ),
    );

void _expectPaths(XrayConfig config, List<String> paths) {
  for (final candidate in [config, XrayConfig.fromJson(config.toJson())]) {
    expect(candidate.validate().map((issue) => issue.path), paths);
    if (paths.isEmpty) {
      expect(candidate.assertValid, returnsNormally);
    } else {
      expect(
        candidate.assertValid,
        throwsA(isA<XrayConfigValidationException>()),
      );
    }
  }
}

void main() {
  test('VLESS reverse outbound supplies routing inbound tags', () {
    _expectPaths(_client(_settings), []);
    _expectPaths(_client(_settings, protocol: 'VLESS'), []);
    // Sharing the tag with a static inbound is not a duplicate declaration.
    _expectPaths(
      _client(_settings).copyWith(
        inbounds: [
          InboundDetourConfig.socks(
            tag: 'reverse-in',
            port: XrayPortList.single(1080),
            settings: const SocksServerConfig(),
          ),
        ],
      ),
      [],
    );
  });

  test('ignored or absent reverse options cannot supply inbound tags', () {
    for (final settings in [
      _settings.copyWith(reverse: null),
      _settings.copyWith(reverse: const VLessReverseConfig(tag: '')),
      _settings.copyWith(
        address: null,
        vnext: [
          const VLessOutboundVnext(
            address: XrayAddress('127.0.0.1'),
            port: 443,
            users: [VLessUser(id: _id, encryption: 'none')],
          ),
        ],
      ),
    ]) {
      _expectPaths(_client(settings), ['routing.rules[0].inboundTag']);
    }
    expect(
      _client(
        _settings,
        protocol: 'socks',
      ).validate().map((issue) => issue.path),
      contains('routing.rules[0].inboundTag'),
    );
  });

  test(
    'VLESS inbound reverse rejects even disabled sniffing on either alias',
    () {
      for (final clients in [false, true]) {
        for (final enabled in [false, true]) {
          final users = [
            VLessUser(
              id: _id,
              reverse: _reverse.copyWith(
                sniffing: SniffingConfig(enabled: enabled),
              ),
            ),
          ];
          final config = XrayConfig(
            inbounds: [
              InboundDetourConfig(
                protocol: 'VLESS',
                port: XrayPortList.single(1080),
                settings: VLessInboundConfig(
                  decryption: 'none',
                  clients: clients ? users : null,
                  users: clients ? null : users,
                ),
              ),
            ],
          );
          _expectPaths(config, [
            'inbounds[0].settings.${clients ? 'clients' : 'users'}[0].reverse.sniffing',
          ]);
        }
      }
    },
  );

  test('inbound sniffing validation respects clients precedence', () {
    for (final clients in <List<VLessUser>>[
      [],
      [
        const VLessUser(
          id: _id,
          reverse: VLessReverseConfig(tag: 'reverse'),
        ),
      ],
    ]) {
      _expectPaths(
        XrayConfig(
          inbounds: [
            InboundDetourConfig.vless(
              port: XrayPortList.single(1080),
              settings: VLessInboundConfig(
                decryption: 'none',
                clients: clients,
                users: [const VLessUser(id: _id, reverse: _reverse)],
              ),
            ),
          ],
        ),
        [],
      );
    }
  });
}
