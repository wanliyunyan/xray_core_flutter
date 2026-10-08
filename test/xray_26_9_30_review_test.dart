import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter/xray_core_flutter.dart';

XrayConfig withStream(StreamConfig stream) => XrayConfig(
  outbounds: [OutboundDetourConfig.direct(streamSettings: stream)],
);
XrayConfig withDomain(XDNSDomain domain) => withStream(
  StreamConfig(
    finalmask: FinalMask(
      udp: [
        Mask(
          type: 'xdns',
          settings: XDNS(
            domains: [domain],
            resolvers: const [
              XDNSResolver(
                type: 'udp',
                settings: XDNSResolverUDP(addr: '1.1.1.1:53'),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);

void main() {
  test('finalmask rejects known types on the wrong transport', () {
    for (final type in [
      'XDNS',
      'noise',
      'salamander',
      'mkcp-legacy',
      'xicmp',
      'realm',
    ]) {
      expect(
        withStream(
          StreamConfig(
            finalmask: FinalMask(
              tcp: [Mask(type: type, settings: const RawFinalMaskSettings({}))],
            ),
          ),
        ).validate().single.path,
        'outbounds[0].streamSettings.finalmask.tcp[0].type',
      );
    }
    for (final type in ['fragment', 'XMC']) {
      expect(
        withStream(
          StreamConfig(
            finalmask: FinalMask(
              udp: [Mask(type: type, settings: const RawFinalMaskSettings({}))],
            ),
          ),
        ).validate().single.path,
        'outbounds[0].streamSettings.finalmask.udp[0].type',
      );
    }
    expect(
      withStream(
        const StreamConfig(
          finalmask: FinalMask(
            tcp: [Mask(type: 'future', settings: RawFinalMaskSettings({}))],
            udp: [Mask(type: 'future', settings: RawFinalMaskSettings({}))],
          ),
        ),
      ).validate(),
      isEmpty,
    );
  });

  test('XDNS client resolver destinations follow Core host/port parsing', () {
    XrayConfig config(String? addr, {bool inbound = false, bool tcp = false}) {
      final stream = StreamConfig(
        finalmask: FinalMask(
          udp: [
            Mask(
              type: 'xdns',
              settings: XDNS(
                domains: const [
                  XDNSDomain(name: 'tunnel.example.com', types: [16]),
                ],
                resolvers: [
                  XDNSResolver(
                    type: tcp ? 'tcp' : 'udp',
                    settings: tcp
                        ? XDNSResolverTCP(addr: addr)
                        : XDNSResolverUDP(addr: addr),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
      return inbound
          ? XrayConfig(
              inbounds: [
                InboundDetourConfig.socks(
                  port: XrayPortList.single(1080),
                  settings: const SocksServerConfig(),
                  streamSettings: stream,
                ),
              ],
            )
          : withStream(stream);
    }

    for (final tcp in [false, true]) {
      for (final addr in <String?>[
        null,
        '',
        '1.1.1.1',
        '1.1.1.1:65536',
        '1.1.1.1:dns',
        '::1:53',
        '[::1]53',
        'host:53\n',
        'host:+53',
      ]) {
        final candidate = config(addr, tcp: tcp);
        expect(
          candidate.validate().single.path,
          'outbounds[0].streamSettings.finalmask.udp[0].settings.resolvers[0].settings.addr',
          reason: '$addr',
        );
        expect(XrayConfig.fromJson(candidate.toJson()).validate(), isNotEmpty);
        // Server-side XDNS does not instantiate its resolver list.
        expect(config(addr, inbound: true, tcp: tcp).validate(), isEmpty);
      }
      for (final addr in [
        '1.1.1.1:53',
        '[::1]:53',
        'dns.example.com:0053',
        'host:',
        ':',
        '[bad]:53',
      ]) {
        expect(config(addr, tcp: tcp).validate(), isEmpty, reason: addr);
      }
    }
  });

  test('Noise expression whitespace and hex prefixes match Go parsing', () {
    final cases = <String, bool>{
      '<r\u00a04>': false,
      '<\u000bt>': false,
      '\ufeff<t>': false,
      '<b aa\u0085bb>': true,
      '\u0085<t>\u0085': true,
      '<b 0x0Xff>': true,
      '<b 0X0xff>': false,
      '<r\t4> <b aa bb>': true,
    };
    for (final entry in cases.entries) {
      final candidate = withStream(
        StreamConfig(
          finalmask: FinalMask(
            udp: [
              Mask(
                type: 'noise',
                settings: NoiseMask(
                  noiseItems: [NoiseItem(type: 'exp', packet: entry.key)],
                ),
              ),
            ],
          ),
        ),
      );
      expect(candidate.validate().isEmpty, entry.value, reason: entry.key);
    }
  });

  test('XDNS rejects domain options that fail Core Build', () {
    const domain = XDNSDomain(name: 'tunnel.example.com', types: [16]);
    final cases = <XDNSDomain, String>{
      domain.copyWith(types: null): 'types',
      domain.copyWith(types: [15]): 'types[0]',
      domain.copyWith(lenLimit: 256): 'lenLimit',
      domain.copyWith(lenLimit: 30): 'lenLimit',
      domain.copyWith(labelLimit: 64): 'labelLimit',
      domain.copyWith(edns0: 511): 'edns0',
      domain.copyWith(name: 'tunnel..example.com'): 'name',
    };
    for (final entry in cases.entries) {
      final config = withDomain(entry.key);
      for (final candidate in [config, XrayConfig.fromJson(config.toJson())]) {
        expect(
          candidate.validate().map((i) => i.path),
          contains(
            'outbounds[0].streamSettings.finalmask.udp[0].settings.domains[0].${entry.value}',
          ),
          reason: '${entry.key}',
        );
        expect(
          candidate.assertValid,
          throwsA(isA<XrayConfigValidationException>()),
        );
      }
    }
  });

  test(
    'XDNS respects zero defaults and Go uint16 conversion without rewriting',
    () {
      for (final domain in [
        const XDNSDomain(name: 'tunnel.example.com', types: [1, 5, 16, 28]),
        const XDNSDomain(
          name: 'tunnel.example.com',
          types: [16],
          lenLimit: 0,
          labelLimit: 0,
        ),
        const XDNSDomain(
          name: 'tunnel.example.com',
          types: [65552],
          edns0: 65536,
        ),
      ]) {
        final config = withDomain(domain);
        final before = config.toJson();
        expect(config.validate(), isEmpty);
        expect(config.toJson(), before);
      }
    },
  );

  test(
    'MASQUE host validation rejects escapes and whitespace without normalizing',
    () {
      for (final host in [
        'bad host',
        'example.com\n',
        '%65xample.com',
        '[fe80::1%25en0]',
        'example^host',
        'example`host',
        'example{host}',
        'example|host',
      ]) {
        expect(
          withStream(
            StreamConfig(masqueSettings: MasqueConfig(host: host)),
          ).validate().map((i) => i.path),
          contains('outbounds[0].streamSettings.masqueSettings.host'),
          reason: host,
        );
      }
      for (final host in ['EXAMPLE.com:443', ':443', '[::1]:8443', '例子.com']) {
        expect(
          withStream(
            StreamConfig(masqueSettings: MasqueConfig(host: host)),
          ).validate(),
          isEmpty,
          reason: host,
        );
      }
    },
  );

  test('XDNS needs domains in both directions and client resolvers', () {
    const dns = XDNS(
      domains: [
        XDNSDomain(name: 'tunnel.example.com', types: [16]),
      ],
    );
    const stream = StreamConfig(
      finalmask: FinalMask(
        udp: [Mask(type: 'xdns', settings: dns)],
      ),
    );
    expect(
      withStream(stream).validate().single.path,
      'outbounds[0].streamSettings.finalmask.udp[0].settings.resolvers',
    );
    final inbound = XrayConfig(
      inbounds: [
        InboundDetourConfig.socks(
          port: XrayPortList.single(1080),
          settings: const SocksServerConfig(),
          streamSettings: stream,
        ),
      ],
    );
    expect(inbound.validate(), isEmpty);
    expect(
      withStream(
        const StreamConfig(
          finalmask: FinalMask(udp: [Mask(type: 'xdns')]),
        ),
      ).validate().map((i) => i.path),
      containsAll([
        'outbounds[0].streamSettings.finalmask.udp[0].settings.domains',
        'outbounds[0].streamSettings.finalmask.udp[0].settings.resolvers',
      ]),
    );
  });

  test(
    'XDrive requires service settings even when the settings block is absent',
    () {
      expect(
        withStream(
          const StreamConfig(network: TransportProtocol.xdrive),
        ).validate().single.path,
        'outbounds[0].streamSettings.xdriveSettings.service',
      );
    },
  );

  test('REALITY rejects XDrive and honors method precedence', () {
    const stream = StreamConfig(
      network: TransportProtocol.xdrive,
      security: SecurityProtocol.reality,
      xdriveSettings: XDriveConfig(service: 'local'),
    );
    expect(
      withStream(stream).validate().map((i) => i.path),
      contains('outbounds[0].streamSettings.security'),
    );
    expect(
      withStream(stream.copyWith(method: TransportProtocol.raw)).validate(),
      isEmpty,
    );
    expect(
      withStream(stream.copyWith(security: SecurityProtocol.tls)).validate(),
      isEmpty,
    );
  });

  test('XDrive uint32 validation does not constrain opaque template JSON', () {
    final config = withStream(
      const StreamConfig(
        network: TransportProtocol.xdrive,
        xdriveSettings: XDriveConfig(service: 'local', template: -1),
      ),
    );
    expect(config.validate(), isEmpty);
    expect(XrayConfig.fromJson(config.toJson()).toJson(), config.toJson());
    expect(
      withStream(
        const StreamConfig(
          xdriveSettings: XDriveConfig(service: 'local', segmentBytes: -1),
        ),
      ).validate().single.path,
      'outbounds[0].streamSettings.xdriveSettings.segmentBytes',
    );
  });
}
