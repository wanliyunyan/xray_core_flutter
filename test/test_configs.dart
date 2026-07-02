import 'package:xray_core_flutter/xray_config.dart';

XrayConfig buildExampleConfig() {
  return XrayConfig(
    log: const LogConfig(loglevel: LogLevel.warning),
    inbounds: [
      InboundDetourConfig.socks(
        tag: 'socks-in',
        listen: const XrayAddress('127.0.0.1'),
        port: XrayPortList.single(10808),
        settings: const SocksServerConfig(
          authMethod: SocksAuthMethod.noauth,
          udp: true,
        ),
        sniffing: const SniffingConfig(
          enabled: true,
          destOverride: XrayStringList(['http', 'tls', 'fakedns']),
        ),
      ),
    ],
    outbounds: [
      OutboundDetourConfig.vless(
        tag: 'proxy',
        settings: VLessOutboundConfig.single(
          address: const XrayAddress('example.com'),
          port: 443,
          id: '00000000-0000-0000-0000-000000000000',
          encryption: 'none',
          flow: 'xtls-rprx-vision',
        ),
        streamSettings: StreamConfig.reality(
          realitySettings: REALITYConfig.client(
            serverName: 'example.com',
            publicKey: 'replace-with-public-key',
            shortId: 'abcd',
            fingerprint: 'chrome',
          ),
        ),
      ),
      OutboundDetourConfig.direct(
        tag: 'direct',
        settings: const FreedomConfig(),
      ),
      OutboundDetourConfig.block(
        tag: 'block',
        settings: const BlackholeConfig(),
      ),
    ],
    dns: DNSConfig.withServers([
      NameServerConfig.simple('1.1.1.1'),
      NameServerConfig(
        address: const XrayAddress('https://dns.google/dns-query'),
        domains: const XrayStringList(['geosite:geolocation-!cn']),
        queryStrategy: DnsQueryStrategy.useIpv4,
      ),
    ]),
    routing: RouterConfig(
      domainStrategy: RouterDomainStrategy.ipIfNonMatch,
      ruleList: [
        RouterRule.toOutbound(
          ip: const XrayStringList(['geoip:private']),
          outboundTag: 'direct',
        ),
        RouterRule.toOutbound(
          domain: const XrayStringList(['geosite:category-ads-all']),
          outboundTag: 'block',
        ),
      ],
    ),
    fakeDns: const FakeDNSConfig.pool(
      FakeDNSPoolElementConfig(ipPool: '198.18.0.0/15', lruSize: 65535),
    ),
  );
}
