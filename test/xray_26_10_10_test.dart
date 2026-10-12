import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter/xray_core_flutter.dart';

void main() {
  test('preserves 26.10.10 DNS IDs and Lua scripts', () {
    final config = XrayConfig(
      dns: DNSConfig(
        servers: [
          NameServerConfig(
            id: 'primary',
            address: const XrayAddress('1.1.1.1'),
          ),
        ],
        script: 'dns.lua',
      ),
      routing: const RouterConfig(script: 'routing.lua'),
    );
    expect(config.toJson(), {
      'dns': {
        'servers': [
          {'id': 'primary', 'address': '1.1.1.1'},
        ],
        'script': 'dns.lua',
      },
      'routing': {'script': 'routing.lua'},
    });
    expect(XrayConfig.fromJson(config.toJson()).toJson(), config.toJson());
  });

  test('serializes TLS useSystemCA and MASQUE WARP', () {
    const tls = TLSConfig(useSystemCA: true);
    const masque = MasqueConfig(
      warp: MasqueWarpConfig(
        privateKey: 'private',
        publicKey: 'public',
        address: ['172.16.0.2/32', '2606:4700::2/128'],
      ),
    );
    expect(tls.toJson(), {'useSystemCA': true});
    expect(MasqueConfig.fromJson(masque.toJson()).toJson(), masque.toJson());
  });

  test('uses the 26.10.10 XDNS names and addrs shape', () {
    const dns = XDNS(
      domains: [
        XDNSDomain(names: ['one.example', 'two.example']),
      ],
      resolvers: [
        XDNSResolver(addrs: ['1.1.1.1:53', 'tcp://[::1]:53']),
      ],
    );
    expect(dns.toJson(), {
      'domains': [
        {
          'names': ['one.example', 'two.example'],
        },
      ],
      'resolvers': [
        {
          'addrs': ['1.1.1.1:53', 'tcp://[::1]:53'],
        },
      ],
    });
    expect(XDNS.fromJson(dns.toJson()).toJson(), dns.toJson());
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
    expect(config.validate(), isEmpty);
  });
}
