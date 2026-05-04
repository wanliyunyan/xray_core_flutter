import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter/xray_config.dart';

void main() {
  group('common model contracts', () {
    test('preserves xray union json shapes', () {
      expect(const XrayAddress('example.com').toJson(), 'example.com');
      expect(XrayPortRange.single(443).toJson(), 443);
      expect(const XrayPortRange(from: 1000, to: 2000).toJson(), '1000-2000');
      expect(XrayPortRange.env('XRAY_PORT').toJson(), 'env:XRAY_PORT');
      expect(XrayPortList.single(10808).toJson(), 10808);
      expect(XrayPortList.range(1000, 2000).toJson(), '1000-2000');
      expect(XrayPortList.fromJson('80,443').toJson(), '80,443');
      expect(XrayStringList.fromJson('a, b').toJson(), ['a', ' b']);
      expect(() => XrayNetworkList.fromJson('tcp, udp'), throwsFormatException);
      expect(const XrayNetworkList.tcpAndUdp().toJson(), ['tcp', 'udp']);
      expect(
        XrayDuration.fromDuration(const Duration(seconds: 10)).toJson(),
        '10s',
      );
    });

    test('maps shared enums to xray json values', () {
      expect(LogLevel.fromJson('warning').toJson(), 'warning');
      expect(
        XrayInboundProtocol.fromJson('dokodemo-door').toJson(),
        'dokodemo-door',
      );
      expect(XrayOutboundProtocol.fromJson('direct').toJson(), 'direct');
      expect(TransportProtocol.fromJson('xhttp').toJson(), 'xhttp');
      expect(SecurityProtocol.fromJson('reality').toJson(), 'reality');
      expect(
        RouterDomainStrategy.fromJson('IPIfNonMatch').toJson(),
        'IPIfNonMatch',
      );
      expect(DnsQueryStrategy.fromJson('use-ip-v4').toJson(), 'UseIPv4');
      expect(
        XrayTargetStrategyJson.fromJson('ForceIPv6v4').toJson(),
        'ForceIPv6v4',
      );
    });
  });

  group('protocol setting contracts', () {
    test('serializes inbound settings with go field names', () {
      expect(
        SocksServerConfig.fromJson({
          'auth': 'password',
          'accounts': [
            {'user': 'u', 'pass': 'p'},
          ],
          'udp': true,
          'userLevel': 1,
        }).toJson(),
        {
          'auth': 'password',
          'accounts': [
            {'user': 'u', 'pass': 'p'},
          ],
          'udp': true,
          'userLevel': 1,
        },
      );

      expect(
        VLessInboundConfig.single(
          client: const VLessUser(
            id: '00000000-0000-0000-0000-000000000000',
            flow: 'xtls-rprx-vision',
          ),
          decryption: 'none',
        ).toJson(),
        {
          'clients': [
            {
              'id': '00000000-0000-0000-0000-000000000000',
              'flow': 'xtls-rprx-vision',
            },
          ],
          'decryption': 'none',
        },
      );

      expect(
        ShadowsocksServerConfig.single(
          cipher: 'aes-128-gcm',
          password: 'secret',
          networkList: const XrayNetworkList([XrayNetwork.tcp]),
        ).toJson(),
        {
          'method': 'aes-128-gcm',
          'password': 'secret',
          'network': ['tcp'],
        },
      );
    });

    test('serializes outbound settings with simplified and full forms', () {
      expect(
        VLessOutboundConfig.single(
          address: const XrayAddress('vless.example.com'),
          port: 443,
          id: '00000000-0000-0000-0000-000000000000',
          encryption: 'none',
        ).toJson(),
        {
          'address': 'vless.example.com',
          'port': 443,
          'id': '00000000-0000-0000-0000-000000000000',
          'encryption': 'none',
        },
      );

      expect(
        VMessOutboundConfig.fromJson({
          'vnext': [
            {
              'address': 'vmess.example.com',
              'port': 443,
              'users': [
                {'id': '00000000-0000-0000-0000-000000000000'},
              ],
            },
          ],
        }).toJson(),
        {
          'vnext': [
            {
              'address': 'vmess.example.com',
              'port': 443,
              'users': [
                {'id': '00000000-0000-0000-0000-000000000000'},
              ],
            },
          ],
        },
      );

      expect(
        HTTPClientConfig.single(
          address: const XrayAddress('proxy.example.com'),
          port: 8080,
          username: 'u',
          password: 'p',
        ).toJson(),
        {
          'address': 'proxy.example.com',
          'port': 8080,
          'user': 'u',
          'pass': 'p',
        },
      );
    });
  });

  group('transport setting contracts', () {
    test('serializes stream tls and reality helpers', () {
      expect(
        StreamConfig.tls(
          network: TransportProtocol.ws,
          wsSettings: const WebSocketConfig(path: '/ws'),
          tlsSettings: const TLSConfig(serverName: 'example.com'),
        ).toJson(),
        {
          'network': 'ws',
          'security': 'tls',
          'wsSettings': {'path': '/ws'},
          'tlsSettings': {'serverName': 'example.com'},
        },
      );

      expect(
        StreamConfig.reality(
          network: TransportProtocol.grpc,
          grpcSettings: const GRPCConfig(serviceName: 'svc'),
          realitySettings: REALITYConfig.client(
            serverName: 'example.com',
            publicKey: 'public-key',
            shortId: 'abcd',
          ),
        ).toJson(),
        {
          'network': 'grpc',
          'security': 'reality',
          'grpcSettings': {'serviceName': 'svc'},
          'realitySettings': {
            'serverName': 'example.com',
            'publicKey': 'public-key',
            'shortId': 'abcd',
          },
        },
      );
    });

    test('preserves raw transport extension points', () {
      expect(TCPConfig(header: RawTCPHeaderConfig({'type': 'http'})).toJson(), {
        'header': {'type': 'http'},
      });
      expect(
        FinalMask(
          tcp: [
            Mask(type: 'custom', settings: RawFinalMaskSettings({'k': 'v'})),
          ],
        ).toJson(),
        {
          'tcp': [
            {
              'type': 'custom',
              'settings': {'k': 'v'},
            },
          ],
        },
      );
    });
  });

  group('app config contracts', () {
    test('serializes dns routing policy metrics and fakedns', () {
      expect(
        DNSConfig.withServers([
          NameServerConfig.simple('1.1.1.1'),
          NameServerConfig(
            address: const XrayAddress('https://dns.google/dns-query'),
            domains: XrayStringList.single('geosite:google'),
            queryStrategy: DnsQueryStrategy.useIpv4,
          ),
        ]).toJson(),
        {
          'servers': [
            '1.1.1.1',
            {
              'address': 'https://dns.google/dns-query',
              'domains': ['geosite:google'],
              'queryStrategy': 'UseIPv4',
            },
          ],
        },
      );

      expect(
        RouterRule.toBalancer(
          balancerTag: 'auto',
          domain: XrayStringList.single('geosite:google'),
        ).toJson(),
        {
          'balancerTag': 'auto',
          'domain': ['geosite:google'],
        },
      );

      expect(MetricsConfig.listen('127.0.0.1:11111').toJson(), {
        'listen': '127.0.0.1:11111',
      });

      expect(
        const FakeDNSConfig.pool(
          FakeDNSPoolElementConfig(ipPool: '198.18.0.0/15', lruSize: 65535),
        ).toJson(),
        {'ipPool': '198.18.0.0/15', 'poolSize': 65535},
      );
    });

    test('round-trips top-level app configs', () {
      final config = XrayConfig(
        log: const LogConfig(loglevel: LogLevel.warning),
        policy: const PolicyConfig(
          levels: {0: Policy(handshake: 4, statsUserUplink: true)},
          system: SystemPolicy(statsInboundUplink: true),
        ),
        api: const APIConfig(
          tag: 'api',
          services: [ApiService.statsservice, ApiService.handlerservice],
        ),
        stats: const StatsConfig(),
        reverse: const ReverseConfig(
          bridges: [BridgeConfig(tag: 'bridge', domain: 'reverse.example.com')],
        ),
      );

      expect(XrayConfig.fromJson(config.toJson()).toJson(), config.toJson());
    });
  });
}
