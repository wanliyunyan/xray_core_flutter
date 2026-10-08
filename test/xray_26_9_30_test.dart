import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter/xray_core_flutter.dart';

XrayConfig outbound(
  StreamConfig stream, {
  String protocol = 'freedom',
  XrayOutboundSettings? settings,
  MuxConfig? mux,
}) => XrayConfig(
  outbounds: [
    OutboundDetourConfig(
      protocol: protocol,
      settings: settings,
      streamSettings: stream,
      mux: mux,
    ),
  ],
);

void main() {
  const masqueStream = StreamConfig(
    network: TransportProtocol.masque,
    security: SecurityProtocol.tls,
    masqueSettings: MasqueConfig(
      host: 'vpn.example.com',
      path: '/connect{?target,ipproto}',
      user: 'alice',
      pass: 'secret',
      headers: {'X-Test': 'yes'},
    ),
  );
  const client = MasqueClientConfig(
    address: XrayAddress('vpn.example.com'),
    port: 443,
    remoteDNS: ['1.1.1.1', '2001:4860:4860::8888'],
  );

  test('MASQUE typed constructors, dispatch, enums, and JSON round trip', () {
    final config = XrayConfig(
      inbounds: [
        InboundDetourConfig.masque(
          port: XrayPortList.single(443),
          settings: const MasqueServerConfig(
            users: [MasqueUserConfig(email: 'alice', pass: 'secret', level: 1)],
            address: ['10.0.0.1/24', 'fd00::1/64'],
            mtu: 1400,
          ),
          streamSettings: masqueStream,
        ),
      ],
      outbounds: [
        OutboundDetourConfig.masque(
          settings: client,
          streamSettings: masqueStream,
        ),
      ],
    );
    final parsed = XrayConfig.fromJson(config.toJson());
    expect(parsed.inbounds!.single.settings, isA<MasqueServerConfig>());
    expect(parsed.outbounds!.single.settings, isA<MasqueClientConfig>());
    expect(parsed.toJson(), config.toJson());
    expect(parsed.validate(allowRawSettings: false), isEmpty);
    expect(XrayInboundProtocol.fromJson('MASQUE').toJson(), 'masque');
    expect(XrayOutboundProtocol.fromJson('MASQUE').toJson(), 'masque');
    expect(
      StreamConfig.tls(
        network: TransportProtocol.masque,
        masqueSettings: masqueStream.masqueSettings,
      ).masqueSettings,
      masqueStream.masqueSettings,
    );
  });

  test(
    'MASQUE requires its transport and TLS, rejects mux and mismatched settings',
    () {
      final config = outbound(
        const StreamConfig(),
        protocol: 'masque',
        settings: client,
        mux: const MuxConfig(enabled: true),
      );
      expect(
        config.validate().map((i) => i.path),
        containsAll([
          'outbounds[0].streamSettings.network',
          'outbounds[0].streamSettings.security',
          'outbounds[0].mux',
        ]),
      );
      expect(
        outbound(masqueStream).validate().single.path,
        'outbounds[0].streamSettings.network',
      );
      expect(
        outbound(
          masqueStream,
          protocol: 'masque',
          settings: const FreedomConfig(),
        ).validate().single.path,
        'outbounds[0].settings',
      );
      // Core's method alias overrides network.
      expect(
        outbound(
          masqueStream.copyWith(method: TransportProtocol.raw),
          protocol: 'masque',
          settings: client,
        ).validate().single.path,
        'outbounds[0].streamSettings.network',
      );
      expect(
        outbound(
          masqueStream.copyWith(
            network: TransportProtocol.raw,
            method: TransportProtocol.masque,
          ),
          protocol: 'masque',
          settings: client,
        ).validate(),
        isEmpty,
      );
    },
  );

  test('MASQUE validates endpoint, user precedence, prefixes and MTU', () {
    final badClient = outbound(
      masqueStream,
      protocol: 'masque',
      settings: const MasqueClientConfig(
        port: 0,
        remoteDNS: ['example.com', '1.1.1.1/32'],
      ),
    );
    expect(
      badClient.validate().map((i) => i.path),
      containsAll([
        'outbounds[0].settings.address',
        'outbounds[0].settings.port',
        'outbounds[0].settings.remoteDNS[0]',
        'outbounds[0].settings.remoteDNS[1]',
      ]),
    );
    XrayConfig server(MasqueServerConfig settings) => XrayConfig(
      inbounds: [
        InboundDetourConfig.masque(
          port: XrayPortList.single(443),
          settings: settings,
          streamSettings: masqueStream,
        ),
      ],
    );
    const invalidUsers = [
      MasqueUserConfig(email: 'Alice', pass: 'p'),
      MasqueUserConfig(email: 'ALICE', pass: ''),
      MasqueUserConfig(email: 'a:b', pass: 'p'),
    ];
    const bad = MasqueServerConfig(
      users: invalidUsers,
      address: ['10.0.0.1/24', '10.1.0.1/24'],
      mtu: 1279,
    );
    expect(
      server(bad).validate().map((i) => i.path),
      containsAll([
        'inbounds[0].settings.users[1].email',
        'inbounds[0].settings.users[1].pass',
        'inbounds[0].settings.users[2].email',
        'inbounds[0].settings.address[1]',
        'inbounds[0].settings.mtu',
      ]),
    );
    expect(
      server(
        bad.copyWith(clients: [], address: ['10.0.0.1/24'], mtu: 0),
      ).validate(),
      isEmpty,
    );
  });

  test('MASQUE templates and headers follow Core restrictions', () {
    for (final settings in [
      const MasqueConfig(path: 'relative'),
      const MasqueConfig(path: '/{unknown}'),
      const MasqueConfig(host: 'example.com/path'),
      const MasqueConfig(user: 'a:b'),
      const MasqueConfig(headers: {'Host': 'example.com'}),
      const MasqueConfig(headers: {'Capsule-Protocol': '?1'}),
      const MasqueConfig(headers: {'X-Test': 'bad\r\nvalue'}),
      const MasqueConfig(user: 'a', headers: {'AUTHORIZATION': 'token'}),
    ]) {
      expect(
        outbound(StreamConfig(masqueSettings: settings)).validate(),
        isNotEmpty,
        reason: '$settings',
      );
    }
    expect(
      outbound(
        const StreamConfig(
          masqueSettings: MasqueConfig(
            path: '/{target}/{ipproto}',
            headers: {'Authorization': 'token'},
          ),
        ),
      ).validate(),
      isEmpty,
    );
  });

  test(
    'XDrive preserves all fields and raw templates without adding defaults',
    () {
      final json = {
        'network': 'xdrive',
        'xdriveSettings': {
          'remoteFolder': '/tmp/xdrive',
          'service': 'template',
          'secrets': ['secret'],
          'segmentBytes': 4096,
          'flushIntervalMs': 10,
          'pollIntervalMs': 20,
          'maxPollIntervalMs': 100,
          'sessionTtlSeconds': 600,
          'concurrency': 2,
          'eagerWindowMs': 30,
          'holeTimeoutMs': 1000,
          'template': {
            'upload': {'url': 'https://example.com/{name}'},
          },
        },
      };
      final stream = StreamConfig.fromJson(json);
      expect(stream.network, TransportProtocol.xdrive);
      expect(stream.xdriveSettings, isA<XDriveConfig>());
      expect(stream.toJson(), json);
      expect(outbound(stream).validate(), isEmpty);
      expect(const XDriveConfig().toJson(), isEmpty);
      for (final drive in [
        const XDriveConfig(service: 'unknown'),
        const XDriveConfig(service: 'template'),
        const XDriveConfig(service: 'Google Drive', secrets: ['one']),
        const XDriveConfig(service: 'local', segmentBytes: -1),
      ]) {
        expect(
          outbound(StreamConfig(xdriveSettings: drive)).validate(),
          isNotEmpty,
        );
      }
      expect(
        outbound(
          const StreamConfig(
            xdriveSettings: XDriveConfig(
              service: 'Google Drive',
              secrets: ['id', 'secret', 'refresh'],
            ),
          ),
        ).validate(),
        isEmpty,
      );
    },
  );

  test('structured XDNS resolvers and domains preserve exact JSON', () {
    final json = {
      'udp': [
        {
          'type': 'xdns',
          'settings': {
            'domains': [
              {
                'name': 'tunnel.example.com',
                'lenLimit': 255,
                'labelLimit': 63,
                'types': [1, 5, 16, 28],
                'edns0': 1232,
              },
            ],
            'resolvers': [
              {
                'type': 'tcp',
                'settings': {'addr': '1.1.1.1:53'},
              },
              {
                'type': 'udp',
                'settings': {'addr': '8.8.8.8:53'},
              },
            ],
            'extraPoll': 3,
          },
        },
      ],
    };
    final mask = FinalMask.fromJson(json);
    final dns = mask.udp!.single.settings! as XDNS;
    expect(dns.domains!.single, isA<XDNSDomain>());
    expect(dns.resolvers!.first.settings, isA<XDNSResolverTCP>());
    expect(dns.resolvers!.last.settings, isA<XDNSResolverUDP>());
    expect(mask.toJson(), json);
    expect(outbound(StreamConfig(finalmask: mask)).validate(), isEmpty);
    expect(
      outbound(
        StreamConfig(
          finalmask: FinalMask(
            udp: [Mask(type: 'xdns', settings: dns.copyWith(extraPoll: 4))],
          ),
        ),
      ).validate().single.path,
      'outbounds[0].streamSettings.finalmask.udp[0].settings.extraPoll',
    );
  });

  test('TUN new fields and removed WireGuard/UDPHop fields match Core', () {
    final json = {
      'autoSystemDnsToGateway': true,
      'autoSystemWfpBlockLeak': ['DNS', 'misconfigtun'],
    };
    final tun = TunConfig.fromJson(json);
    expect(tun.toJson(), json);
    // OS-specific prerequisites are not checked on the development host.
    expect(
      XrayConfig(inbounds: [InboundDetourConfig.tun(settings: tun)]).validate(),
      isEmpty,
    );
    expect(
      XrayConfig(
        inbounds: [
          InboundDetourConfig.tun(
            settings: tun.copyWith(autoSystemWfpBlockLeak: ['unknown']),
          ),
        ],
      ).validate().single.path,
      'inbounds[0].settings.autoSystemWfpBlockLeak[0]',
    );
    expect(
      WireGuardConfig.fromJson({
        'secretKey': 'key',
        'domainStrategy': 'ForceIP',
      }).toJson(),
      {'secretKey': 'key'},
    );
    expect(
      UDPHop.fromJson({
        'mode': 'intervallocal',
        'sockopt': {'mark': 7},
      }).toJson(),
      {'mode': 'intervallocal'},
    );
    for (final interval in <XrayInt32Range?>[
      null,
      XrayInt32Range.single(0),
      XrayInt32Range.single(5),
    ]) {
      final stream = StreamConfig(
        finalmask: FinalMask(
          udp: [
            Mask(
              type: 'udphop',
              settings: UDPHop(mode: 'intervallocal', interval: interval),
            ),
          ],
        ),
      );
      expect(outbound(stream).validate(), isEmpty);
      expect(
        stream.finalmask!.udp!.single.settings!.toJson().containsKey(
          'interval',
        ),
        interval != null,
      );
    }
  });

  test('noise exp accepts segments and rejects malformed expressions', () {
    XrayConfig noise(Object packet) => outbound(
      StreamConfig(
        finalmask: FinalMask(
          udp: [
            Mask(
              type: 'noise',
              settings: NoiseMask(
                noiseItems: [NoiseItem(type: 'EXP', packet: packet)],
              ),
            ),
          ],
        ),
      ),
    );
    for (final exp in [
      '<b 0x01 ab><r 1-8><rc 3><rd 4><t><c><n>',
      '<r 0>',
      '<b FF>',
    ]) {
      final config = noise(exp);
      expect(config.validate(), isEmpty, reason: exp);
      expect(XrayConfig.fromJson(config.toJson()).toJson(), config.toJson());
    }
    for (final exp in <Object>[
      '',
      'junk<t>',
      '<b 0>',
      '<r>',
      '<r 9-1>',
      '<r 65536>',
      '<t 1>',
      '<unknown>',
      123,
    ]) {
      expect(noise(exp).validate(), isNotEmpty, reason: '$exp');
    }
  });
}
