import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter/xray_core_flutter.dart';

XrayConfig _outbound(XrayOutboundSettings settings, {StreamConfig? stream}) =>
    XrayConfig(
      outbounds: [
        OutboundDetourConfig(
          protocol: settings is FreedomConfig ? 'freedom' : 'trojan',
          settings: settings,
          streamSettings: stream,
        ),
      ],
    );

void main() {
  test('nonempty legacy global transport is preserved but rejected', () {
    final config = XrayConfig.fromJson({
      'transport': {
        'tcpSettings': {'acceptProxyProtocol': true},
      },
    });

    expect(config.toJson(), {
      'transport': {
        'tcpSettings': {'acceptProxyProtocol': true},
      },
    });
    expect(config.validate().map((issue) => issue.path), ['transport']);
    expect(config.assertValid, throwsA(isA<XrayConfigValidationException>()));
    expect(const XrayConfig(transport: {}).validate(), isEmpty);
  });

  test('legacy singular Freedom noise is preserved but rejected', () {
    final config = _outbound(
      FreedomConfig.fromJson({
        'noise': {'type': 'rand', 'packet': 'base64,AAAA'},
      }),
    );

    expect(
      (config.toJson()['outbounds'] as List).single,
      containsPair('settings', {
        'noise': {'type': 'rand', 'packet': 'base64,AAAA'},
      }),
    );
    expect(config.validate().map((issue) => issue.path), [
      'outbounds[0].settings.noise',
    ]);
  });

  test('TLS allowInsecure true is rejected while false remains accepted', () {
    XrayConfig config(bool allowInsecure) => _outbound(
      const FreedomConfig(),
      stream: StreamConfig.tls(
        tlsSettings: TLSConfig(allowInsecure: allowInsecure),
      ),
    );

    expect(config(true).validate().map((issue) => issue.path), [
      'outbounds[0].streamSettings.tlsSettings.allowInsecure',
    ]);
    expect(config(false).validate(), isEmpty);
    expect(
      _outbound(
        const FreedomConfig(),
        stream: const StreamConfig(
          security: SecurityProtocol.none,
          tlsSettings: TLSConfig(allowInsecure: true),
        ),
      ).validate(),
      isEmpty,
    );
  });

  test('nested finalmask TLS configs reject allowInsecure', () {
    final config = _outbound(
      const FreedomConfig(),
      stream: StreamConfig.fromJson({
        'finalmask': {
          'udp': [
            {
              'type': 'xdns',
              'settings': {
                'domains': [
                  {
                    'names': ['example.com'],
                  },
                ],
                'resolvers': [
                  {
                    'addrs': ['https://dns.example/dns-query'],
                    'tlsConfig': {'allowInsecure': true},
                  },
                ],
              },
            },
            {
              'type': 'realm',
              'settings': {
                'url': 'realm://token@example.com/id',
                'stunServers': ['stun.example:3478'],
                'tlsConfig': {'allowInsecure': true},
              },
            },
          ],
        },
      }),
    );

    expect(config.validate().map((issue) => issue.path), [
      'outbounds[0].streamSettings.finalmask.udp[0].settings.resolvers[0].tlsConfig.allowInsecure',
      'outbounds[0].streamSettings.finalmask.udp[1].settings.tlsConfig.allowInsecure',
    ]);
  });

  test('Trojan outbound rejects flow from the effective endpoint', () {
    final simplified = _outbound(
      const TrojanClientConfig(
        address: XrayAddress('127.0.0.1'),
        port: 443,
        password: 'secret',
        flow: 'xtls-rprx-vision',
      ),
    );
    final servers = _outbound(
      const TrojanClientConfig(
        servers: [
          TrojanServerTarget(
            address: XrayAddress('127.0.0.1'),
            port: 443,
            password: 'secret',
            flow: 'xtls-rprx-vision',
          ),
        ],
      ),
    );

    expect(simplified.validate().map((issue) => issue.path), [
      'outbounds[0].settings.flow',
    ]);
    expect(servers.validate().map((issue) => issue.path), [
      'outbounds[0].settings.servers[0].flow',
    ]);

    final ignoredServers = _outbound(
      const TrojanClientConfig(
        address: XrayAddress('127.0.0.1'),
        port: 443,
        password: 'secret',
        servers: [
          TrojanServerTarget(
            address: XrayAddress('127.0.0.2'),
            port: 443,
            password: 'ignored',
            flow: 'ignored-by-core',
          ),
        ],
      ),
    );
    expect(ignoredServers.validate(), isEmpty);
  });

  test('Trojan inbound rejects flow using clients precedence over users', () {
    XrayConfig config(TrojanServerConfig settings) => XrayConfig(
      inbounds: [
        InboundDetourConfig(
          protocol: 'trojan',
          port: XrayPortList.single(443),
          settings: settings,
        ),
      ],
    );

    expect(
      config(
        const TrojanServerConfig(
          clients: [
            TrojanUserConfig(password: 'secret', flow: 'xtls-rprx-vision'),
          ],
        ),
      ).validate().map((issue) => issue.path),
      ['inbounds[0].settings.clients[0].flow'],
    );
    expect(
      config(
        const TrojanServerConfig(
          users: [
            TrojanUserConfig(password: 'secret', flow: 'xtls-rprx-vision'),
          ],
        ),
      ).validate().map((issue) => issue.path),
      ['inbounds[0].settings.users[0].flow'],
    );
    expect(
      config(
        const TrojanServerConfig(
          clients: [],
          users: [
            TrojanUserConfig(password: 'ignored', flow: 'ignored-by-core'),
          ],
        ),
      ).validate(),
      isEmpty,
    );
  });

  test('removed HTTP and QUIC transports are rejected', () {
    for (final protocol in const [
      TransportProtocol.h2,
      TransportProtocol.h3,
      TransportProtocol.http,
      TransportProtocol.quic,
    ]) {
      final config = _outbound(
        const FreedomConfig(),
        stream: StreamConfig(network: protocol),
      );

      expect(config.validate().map((issue) => issue.path), [
        'outbounds[0].streamSettings.network',
      ], reason: '${protocol.toJson()} should be rejected');
    }
  });

  test('transport method takes precedence over network during validation', () {
    final removedMethod = _outbound(
      const FreedomConfig(),
      stream: const StreamConfig(
        method: TransportProtocol.h2,
        network: TransportProtocol.tcp,
      ),
    );
    final ignoredRemovedNetwork = _outbound(
      const FreedomConfig(),
      stream: const StreamConfig(
        method: TransportProtocol.tcp,
        network: TransportProtocol.h2,
      ),
    );

    expect(removedMethod.validate().map((issue) => issue.path), [
      'outbounds[0].streamSettings.method',
    ]);
    expect(ignoredRemovedNetwork.validate(), isEmpty);
  });

  test('removed transports are rejected in nested download streams', () {
    final config = _outbound(
      const FreedomConfig(),
      stream: const StreamConfig(
        xhttpSettings: SplitHTTPConfig(
          downloadSettings: StreamConfig(network: TransportProtocol.quic),
        ),
      ),
    );

    expect(config.validate().map((issue) => issue.path), [
      'outbounds[0].streamSettings.xhttpSettings.downloadSettings.network',
    ]);
  });

  test('legacy XTLS security is preserved but rejected', () {
    final config = _outbound(
      const FreedomConfig(),
      stream: const StreamConfig(security: SecurityProtocol.xtls),
    );

    expect(
      ((config.toJson()['outbounds'] as List).single['streamSettings']
          as Map)['security'],
      'xtls',
    );
    expect(config.validate().map((issue) => issue.path), [
      'outbounds[0].streamSettings.security',
    ]);
  });
}
