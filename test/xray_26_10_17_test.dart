import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter/xray_core_flutter.dart';

void main() {
  test('round trips Noise Lua scripts', () {
    const mask = NoiseMask(
      reset: XrayInt32Range(left: 1, right: 2),
      script: 'return {}',
    );
    expect(mask.toJson(), {'reset': '1-2', 'script': 'return {}'});
    expect(NoiseMask.fromJson(mask.toJson()).toJson(), mask.toJson());
  });

  test('round trips XDNS resolver worker and HTTPS transport settings', () {
    const resolver = XDNSResolver(
      addrs: ['https://dns.example/dns-query?name=example.com#fragment'],
      worker: 8,
      tlsConfig: TLSConfig(serverName: 'dns.example'),
      quicConfig: QuicParamsConfig(congestion: 'bbr'),
    );
    expect(
      XDNSResolver.fromJson(resolver.toJson()).toJson(),
      resolver.toJson(),
    );
    expect(resolver.toJson(), {
      'addrs': ['https://dns.example/dns-query?name=example.com#fragment'],
      'worker': 8,
      'tlsConfig': {'serverName': 'dns.example'},
      'quicConfig': {'congestion': 'bbr'},
    });
  });

  test('requires TLS settings for XDNS HTTPS resolvers', () {
    final dns = XDNS(
      domains: [
        const XDNSDomain(names: ['example.com']),
      ],
      resolvers: [
        const XDNSResolver(
          addrs: ['https://dns.example/dns-query?name=example.com'],
        ),
      ],
    );
    final config = XrayConfig(
      outbounds: [
        OutboundDetourConfig.direct(
          streamSettings: StreamConfig(
            finalmask: FinalMask(
              udp: [Mask(type: 'xdns', settings: dns)],
            ),
          ),
        ),
      ],
    );
    expect(
      config.validate().map((issue) => issue.path),
      contains(
        'outbounds[0].streamSettings.finalmask.udp[0].settings.resolvers[0].tlsConfig',
      ),
    );
    final valid = config.copyWith(
      outbounds: [
        OutboundDetourConfig.vless(
          settings: VLessOutboundConfig.single(
            address: const XrayAddress('example.com'),
            port: 443,
            id: '00000000-0000-4000-8000-000000000001',
            encryption: 'xray-encryption',
          ),
          mux: const MuxConfig(enabled: true),
          streamSettings: StreamConfig(
            finalmask: FinalMask(
              udp: [
                Mask(
                  type: 'xdns',
                  settings: dns.copyWith(
                    resolvers: [
                      const XDNSResolver(
                        addrs: [
                          'https://dns.example/dns-query?name=example.com#fragment',
                        ],
                        tlsConfig: TLSConfig(serverName: 'dns.example'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
    expect(valid.validate(), isEmpty);
  });

  test('rejects XDNS worker values outside Core int32 range', () {
    final config = XrayConfig(
      outbounds: [
        OutboundDetourConfig.direct(
          streamSettings: StreamConfig(
            finalmask: FinalMask(
              udp: [
                Mask(
                  type: 'xdns',
                  settings: XDNS(
                    domains: [
                      const XDNSDomain(names: ['example.com']),
                    ],
                    resolvers: [
                      const XDNSResolver(
                        addrs: ['udp://dns.example'],
                        worker: 0x80000000,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
    expect(
      config.validate().map((issue) => issue.path),
      contains(
        'outbounds[0].streamSettings.finalmask.udp[0].settings.resolvers[0].worker',
      ),
    );
  });

  test('round trips MASQUE XMUX settings', () {
    const config = MasqueConfig(
      xmux: XmuxConfig(
        maxConnections: XrayInt32Range(left: 2, right: 2),
        hMaxReusableSecs: XrayInt32Range(left: 1800, right: 3000),
      ),
    );
    expect(MasqueConfig.fromJson(config.toJson()).toJson(), config.toJson());
  });

  test('accepts the Xray google-drive service name', () {
    final config = XrayConfig(
      outbounds: [
        OutboundDetourConfig.vless(
          settings: VLessOutboundConfig.single(
            address: const XrayAddress('example.com'),
            port: 443,
            id: '00000000-0000-4000-8000-000000000001',
            encryption: 'xray-encryption',
          ),
          mux: const MuxConfig(enabled: true),
          streamSettings: StreamConfig(
            network: TransportProtocol.xdrive,
            xdriveSettings: XDriveConfig(
              service: 'google-drive',
              secrets: ['client', 'secret', 'refresh'],
            ),
          ),
        ),
      ],
    );
    expect(config.validate(), isEmpty);
  });

  test('rejects script combinations that Xray cannot build', () {
    final config = XrayConfig(
      dns: DNSConfig(script: 'dns.lua', disableFallback: true),
      routing: RouterConfig(
        script: 'routing.lua',
        ruleList: [const RouterRule(outboundTag: 'proxy')],
      ),
    );
    final paths = config.validate().map((issue) => issue.path).toSet();
    expect(paths, contains('dns.script'));
    expect(paths, contains('routing.script'));
  });

  test('rejects conflicting MASQUE XMUX ranges', () {
    final config = XrayConfig(
      outbounds: [
        OutboundDetourConfig(
          protocol: 'masque',
          settings: const MasqueClientConfig(
            address: XrayAddress('example.com'),
            port: 443,
          ),
          streamSettings: StreamConfig(
            network: TransportProtocol.masque,
            security: SecurityProtocol.tls,
            masqueSettings: MasqueConfig(
              xmux: XmuxConfig(
                maxConnections: XrayInt32Range(left: 1, right: 2),
                maxConcurrency: XrayInt32Range(left: 1, right: 2),
              ),
            ),
          ),
        ),
      ],
    );
    expect(
      config.validate().map((issue) => issue.path),
      contains('outbounds[0].streamSettings.masqueSettings.xmux'),
    );
  });
}
