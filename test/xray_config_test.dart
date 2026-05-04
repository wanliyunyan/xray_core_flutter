import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter/xray_config.dart';

import '../example/build_config.dart';

void main() {
  test('serializes common union helper types', () {
    expect(XrayDuration.fromJson('250ms').toJson(), '250ms');
    expect(
      XrayDuration.fromDuration(const Duration(minutes: 2)).toJson(),
      '2m',
    );
    expect(XrayInt32Range.fromJson('-1919--810').toJson(), '-1919--810');
    expect(XrayInt32Range.fromJson('9-1').from, 1);
    expect(XrayInt32Range.fromJson('9-1').to, 9);
    expect(XrayPortList.range(1000, 1002).toJson(), '1000-1002');
    expect(XrayPortList.env('XRAY_PORT').toJson(), 'env:XRAY_PORT');
    expect(XrayStringList.single('geosite:private').toJson(), [
      'geosite:private',
    ]);
    expect(const XrayNetworkList.tcpAndUdp().toJson(), ['tcp', 'udp']);
  });

  test('example config builds xray-compatible json', () {
    final json = buildExampleConfig().toJson();

    expect(json['inbounds'], isA<List<Object?>>());
    expect(json['outbounds'], isA<List<Object?>>());
    expect((json['inbounds'] as List).single['settings'], {
      'auth': 'noauth',
      'udp': true,
    });
    expect((json['outbounds'] as List).first['streamSettings'], {
      'network': 'tcp',
      'security': 'reality',
      'realitySettings': {
        'fingerprint': 'chrome',
        'serverName': 'example.com',
        'publicKey': 'replace-with-public-key',
        'shortId': 'abcd',
      },
    });
    expect(buildExampleConfig().validate(), isEmpty);
  });

  test('validates common sdk configuration mistakes', () {
    final config = XrayConfig(
      inbounds: [
        InboundDetourConfig.socks(
          port: XrayPortList.single(10808),
          tag: 'socks-in',
          settings: const SocksServerConfig(),
        ),
        InboundDetourConfig.http(
          port: XrayPortList.single(8080),
          tag: 'socks-in',
          settings: const HTTPServerConfig(),
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
          ),
          proxySettings: const ProxyConfig(tag: 'missing-proxy'),
        ),
        OutboundDetourConfig.fromProtocol(
          protocol: XrayOutboundProtocol.vmess,
          settings: const FreedomConfig(),
        ),
      ],
      routing: RouterConfig(
        ruleList: [
          RouterRule.toOutbound(
            outboundTag: 'missing-outbound',
            inboundTag: XrayStringList.single('missing-inbound'),
          ),
          const RouterRule(outboundTag: 'proxy', balancerTag: 'auto'),
        ],
      ),
    );

    final issueText = config.validate().map((issue) => issue.toString());

    expect(issueText, contains('inbounds: duplicate tag "socks-in"'));
    expect(
      issueText,
      contains(
        'outbounds[0].proxySettings.tag: '
        'unknown outbound tag "missing-proxy"',
      ),
    );
    expect(
      issueText,
      contains(
        'outbounds[1].settings: settings type does not match protocol "vmess"',
      ),
    );
    expect(
      issueText,
      contains(
        'routing.rules[0].outboundTag: '
        'unknown outbound tag "missing-outbound"',
      ),
    );
    expect(
      issueText,
      contains(
        'routing.rules[0].inboundTag: '
        'unknown inbound tag "missing-inbound"',
      ),
    );
    expect(
      issueText,
      contains(
        'routing.rules[1]: outboundTag and balancerTag cannot be used together',
      ),
    );
  });

  test('assertValid throws validation exception with issue list', () {
    final config = XrayConfig(
      outbounds: [
        OutboundDetourConfig.fromProtocol(protocol: XrayOutboundProtocol.vless),
      ],
    );

    expect(
      config.assertValid,
      throwsA(
        isA<XrayConfigValidationException>().having(
          (error) => error.issues.single.toString(),
          'issue',
          'outbounds[0].settings: settings required',
        ),
      ),
    );
  });

  test('serializes typed detour helper constructors', () {
    final config = XrayConfig(
      inbounds: [
        InboundDetourConfig.socks(
          port: XrayPortList.single(10808),
          listen: const XrayAddress('127.0.0.1'),
          tag: 'socks-in',
          settings: const SocksServerConfig(udp: true),
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
    );

    expect(config.toJson(), {
      'inbounds': [
        {
          'protocol': 'socks',
          'port': 10808,
          'listen': '127.0.0.1',
          'settings': {'udp': true},
          'tag': 'socks-in',
        },
      ],
      'outbounds': [
        {
          'protocol': 'vless',
          'tag': 'proxy',
          'settings': {
            'address': 'example.com',
            'port': 443,
            'id': '00000000-0000-0000-0000-000000000000',
            'encryption': 'none',
          },
        },
        {'protocol': 'freedom', 'tag': 'direct', 'settings': {}},
        {'protocol': 'blackhole', 'tag': 'block', 'settings': {}},
      ],
    });
  });

  test('serializes extended typed detour helper constructors', () {
    final config = XrayConfig(
      inbounds: [
        InboundDetourConfig.vmess(
          port: XrayPortList.single(10001),
          settings: VMessInboundConfig.single(
            user: const VMessUser(id: '00000000-0000-0000-0000-000000000000'),
          ),
        ),
        InboundDetourConfig.trojan(
          port: XrayPortList.single(10002),
          settings: TrojanServerConfig.single(
            client: const TrojanUserConfig(password: 'secret'),
          ),
        ),
        InboundDetourConfig.shadowsocks(
          port: XrayPortList.single(10003),
          settings: ShadowsocksServerConfig.single(
            cipher: 'aes-128-gcm',
            password: 'secret',
          ),
        ),
        InboundDetourConfig.tun(settings: const TunConfig(name: 'xray0')),
      ],
      outbounds: [
        OutboundDetourConfig.vmess(
          settings: VMessOutboundConfig.single(
            address: const XrayAddress('vmess.example.com'),
            port: 443,
            id: '00000000-0000-0000-0000-000000000000',
          ),
        ),
        OutboundDetourConfig.trojan(
          settings: TrojanClientConfig.single(
            address: const XrayAddress('trojan.example.com'),
            port: 443,
            password: 'secret',
          ),
        ),
        OutboundDetourConfig.shadowsocks(
          settings: ShadowsocksClientConfig.single(
            address: const XrayAddress('ss.example.com'),
            port: 8388,
            cipher: 'aes-128-gcm',
            password: 'secret',
          ),
        ),
        OutboundDetourConfig.socks(
          settings: SocksClientConfig.single(
            address: const XrayAddress('127.0.0.1'),
            port: 1080,
          ),
        ),
      ],
    );

    expect(config.toJson(), {
      'inbounds': [
        {
          'protocol': 'vmess',
          'port': 10001,
          'settings': {
            'clients': [
              {'id': '00000000-0000-0000-0000-000000000000'},
            ],
          },
        },
        {
          'protocol': 'trojan',
          'port': 10002,
          'settings': {
            'clients': [
              {'password': 'secret'},
            ],
          },
        },
        {
          'protocol': 'shadowsocks',
          'port': 10003,
          'settings': {'method': 'aes-128-gcm', 'password': 'secret'},
        },
        {
          'protocol': 'tun',
          'settings': {'name': 'xray0'},
        },
      ],
      'outbounds': [
        {
          'protocol': 'vmess',
          'settings': {
            'address': 'vmess.example.com',
            'port': 443,
            'id': '00000000-0000-0000-0000-000000000000',
          },
        },
        {
          'protocol': 'trojan',
          'settings': {
            'address': 'trojan.example.com',
            'port': 443,
            'password': 'secret',
          },
        },
        {
          'protocol': 'shadowsocks',
          'settings': {
            'address': 'ss.example.com',
            'port': 8388,
            'method': 'aes-128-gcm',
            'password': 'secret',
          },
        },
        {
          'protocol': 'socks',
          'settings': {'address': '127.0.0.1', 'port': 1080},
        },
      ],
    });
  });

  test('serializes deprecated global transport field for Go parity', () {
    final config = XrayConfig(
      transport: {
        'tcpSettings': {'acceptProxyProtocol': true},
      },
    );

    expect(config.toJson(), {
      'transport': {
        'tcpSettings': {'acceptProxyProtocol': true},
      },
    });
  });

  test('maps protocol enums to go loader ids', () {
    expect(
      XrayInboundProtocol.fromJson('dokodemo-door'),
      XrayInboundProtocol.dokodemoDoor,
    );
    expect(XrayInboundProtocol.mixed.toJson(), 'mixed');
    expect(
      XrayOutboundProtocol.fromJson('direct'),
      XrayOutboundProtocol.direct,
    );
    expect(XrayOutboundProtocol.blackhole.toJson(), 'blackhole');
  });

  test('serializes raw loader-style union settings', () {
    final config = XrayConfig(
      outbounds: [
        OutboundDetourConfig.fromProtocol(
          protocol: XrayOutboundProtocol.blackhole,
          settings: BlackholeConfig(
            response: RawBlackholeResponse({'type': 'http'}),
          ),
          streamSettings: StreamConfig(
            network: TransportProtocol.tcp,
            tcpSettings: TCPConfig(
              header: RawTCPHeaderConfig({
                'type': 'http',
                'request': {
                  'path': ['/health'],
                },
              }),
            ),
          ),
        ),
      ],
    );

    expect(config.toJson(), {
      'outbounds': [
        {
          'protocol': 'blackhole',
          'settings': {
            'response': {'type': 'http'},
          },
          'streamSettings': {
            'network': 'tcp',
            'tcpSettings': {
              'header': {
                'type': 'http',
                'request': {
                  'path': ['/health'],
                },
              },
            },
          },
        },
      ],
    });
  });

  test('imports common xray json config and serializes it back', () {
    final imported = XrayConfig.fromJson({
      'inbounds': [
        {
          'protocol': 'socks',
          'tag': 'socks-in',
          'listen': '127.0.0.1',
          'port': 10808,
          'settings': {'auth': 'noauth', 'udp': true, 'userLevel': 0},
          'sniffing': {
            'enabled': true,
            'destOverride': ['http', 'tls', 'fakedns'],
          },
        },
      ],
      'outbounds': [
        {
          'protocol': 'vless',
          'tag': 'proxy',
          'settings': {
            'vnext': [
              {
                'address': 'example.com',
                'port': 443,
                'users': [
                  {
                    'id': '00000000-0000-0000-0000-000000000000',
                    'encryption': 'none',
                    'flow': 'xtls-rprx-vision',
                  },
                ],
              },
            ],
          },
          'streamSettings': {
            'network': 'tcp',
            'security': 'reality',
            'realitySettings': {
              'serverName': 'example.com',
              'publicKey': 'public-key',
              'shortId': 'abcd',
              'fingerprint': 'chrome',
            },
          },
        },
      ],
      'dns': {
        'servers': [
          '1.1.1.1',
          {
            'address': 'https://dns.google/dns-query',
            'domains': 'geosite:google,geosite:openai',
            'queryStrategy': 'UseIPv4',
          },
        ],
        'hosts': {
          'domain:example.com': '127.0.0.1',
          'domain:multi.test': ['127.0.0.2', '127.0.0.3'],
        },
      },
      'routing': {
        'domainStrategy': 'IPIfNonMatch',
        'rules': [
          {
            'domain': ['geosite:private'],
            'outboundTag': 'direct',
          },
        ],
      },
      'fakeDns': {'ipPool': '198.18.0.0/15', 'poolSize': 65535},
    });

    expect(imported.inbounds?.single.settings, isA<SocksServerConfig>());
    expect(imported.outbounds?.single.settings, isA<VLessOutboundConfig>());
    expect(
      imported.outbounds?.single.streamSettings?.realitySettings,
      isNotNull,
    );
    expect(imported.toJson(), {
      'routing': {
        'rules': [
          {
            'outboundTag': 'direct',
            'domain': ['geosite:private'],
          },
        ],
        'domainStrategy': 'IPIfNonMatch',
      },
      'dns': {
        'servers': [
          '1.1.1.1',
          {
            'address': 'https://dns.google/dns-query',
            'domains': ['geosite:google', 'geosite:openai'],
            'queryStrategy': 'UseIPv4',
          },
        ],
        'hosts': {
          'domain:example.com': '127.0.0.1',
          'domain:multi.test': ['127.0.0.2', '127.0.0.3'],
        },
      },
      'inbounds': [
        {
          'protocol': 'socks',
          'port': 10808,
          'listen': '127.0.0.1',
          'settings': {'auth': 'noauth', 'udp': true, 'userLevel': 0},
          'tag': 'socks-in',
          'sniffing': {
            'enabled': true,
            'destOverride': ['http', 'tls', 'fakedns'],
          },
        },
      ],
      'outbounds': [
        {
          'protocol': 'vless',
          'tag': 'proxy',
          'settings': {
            'vnext': [
              {
                'address': 'example.com',
                'port': 443,
                'users': [
                  {
                    'id': '00000000-0000-0000-0000-000000000000',
                    'flow': 'xtls-rprx-vision',
                    'encryption': 'none',
                  },
                ],
              },
            ],
          },
          'streamSettings': {
            'network': 'tcp',
            'security': 'reality',
            'realitySettings': {
              'fingerprint': 'chrome',
              'serverName': 'example.com',
              'publicKey': 'public-key',
              'shortId': 'abcd',
            },
          },
        },
      ],
      'fakeDns': {'ipPool': '198.18.0.0/15', 'poolSize': 65535},
    });
  });

  test('imports outbound proxy settings with required tag', () {
    final config = XrayConfig.fromJson({
      'outbounds': [
        {
          'protocol': 'freedom',
          'tag': 'direct-via-proxy',
          'settings': {},
          'proxySettings': {'tag': 'upstream', 'transportLayer': true},
        },
      ],
    });

    expect(config.outbounds?.single.proxySettings, isA<ProxyConfig>());
    expect(config.toJson()['outbounds'], [
      {
        'protocol': 'freedom',
        'tag': 'direct-via-proxy',
        'settings': {},
        'proxySettings': {'tag': 'upstream', 'transportLayer': true},
      },
    ]);
  });

  test('imports top-level app configs from json', () {
    final config = XrayConfig.fromJson({
      'log': {
        'access': 'none',
        'error': 'error.log',
        'loglevel': 'debug',
        'dnsLog': true,
      },
      'policy': {
        'levels': {
          '0': {'handshake': 4, 'connIdle': 300, 'statsUserUplink': true},
        },
        'system': {'statsInboundUplink': true},
      },
      'api': {
        'tag': 'api',
        'listen': '127.0.0.1:10085',
        'services': ['StatsService', 'HandlerService'],
      },
      'metrics': {'tag': 'metrics', 'listen': '127.0.0.1:11111'},
      'stats': {},
      'reverse': {
        'bridges': [
          {'tag': 'bridge', 'domain': 'reverse.example.com'},
        ],
        'portals': [
          {'tag': 'portal', 'domain': 'reverse.example.com'},
        ],
      },
      'observatory': {
        'subjectSelector': ['proxy'],
        'probeURL': 'https://www.google.com/generate_204',
        'probeInterval': '10s',
        'enableConcurrency': true,
      },
      'burstObservatory': {
        'subjectSelector': ['proxy'],
        'pingConfig': {
          'destination': 'https://www.google.com/generate_204',
          'interval': '1m',
          'timeout': '5s',
          'sampling': 3,
          'httpMethod': 'HEAD',
        },
      },
      'version': {'min': '1.8.0', 'max': '2.0.0'},
      'geodata': {
        'cron': '0 0 * * *',
        'outbound': 'proxy',
        'assets': [
          {'url': 'https://example.com/geosite.dat', 'file': 'geosite.dat'},
        ],
      },
    });

    expect(config.log, isA<LogConfig>());
    expect(config.policy, isA<PolicyConfig>());
    expect(config.api, isA<APIConfig>());
    expect(config.metrics, isA<MetricsConfig>());
    expect(config.stats, isA<StatsConfig>());
    expect(config.reverse, isA<ReverseConfig>());
    expect(config.observatory, isA<ObservatoryConfig>());
    expect(config.burstObservatory, isA<BurstObservatoryConfig>());
    expect(config.version, isA<VersionConfig>());
    expect(config.geodata, isA<GeodataConfig>());
    expect(config.geodata?.assets?.single, isA<GeodataAssetConfig>());
    expect(config.toJson(), {
      'log': {
        'access': 'none',
        'error': 'error.log',
        'loglevel': 'debug',
        'dnsLog': true,
      },
      'policy': {
        'levels': {
          '0': {'handshake': 4, 'connIdle': 300, 'statsUserUplink': true},
        },
        'system': {'statsInboundUplink': true},
      },
      'api': {
        'tag': 'api',
        'listen': '127.0.0.1:10085',
        'services': ['statsservice', 'handlerservice'],
      },
      'metrics': {'tag': 'metrics', 'listen': '127.0.0.1:11111'},
      'stats': {},
      'reverse': {
        'bridges': [
          {'tag': 'bridge', 'domain': 'reverse.example.com'},
        ],
        'portals': [
          {'tag': 'portal', 'domain': 'reverse.example.com'},
        ],
      },
      'observatory': {
        'subjectSelector': ['proxy'],
        'probeURL': 'https://www.google.com/generate_204',
        'probeInterval': '10s',
        'enableConcurrency': true,
      },
      'burstObservatory': {
        'subjectSelector': ['proxy'],
        'pingConfig': {
          'destination': 'https://www.google.com/generate_204',
          'interval': '1m',
          'sampling': 3,
          'timeout': '5s',
          'httpMethod': 'HEAD',
        },
      },
      'version': {'min': '1.8.0', 'max': '2.0.0'},
      'geodata': {
        'cron': '0 0 * * *',
        'outbound': 'proxy',
        'assets': [
          {'url': 'https://example.com/geosite.dat', 'file': 'geosite.dat'},
        ],
      },
    });
  });

  test('serializes top-level app helper constructors', () {
    final config = XrayConfig(
      metrics: MetricsConfig.listen('127.0.0.1:11111'),
      dns: DNSConfig.withServers([NameServerConfig.simple('1.1.1.1')]),
      routing: RouterConfig(
        ruleList: [
          RouterRule.toOutbound(
            outboundTag: 'direct',
            ip: XrayStringList.single('geoip:private'),
          ),
          RouterRule.toBalancer(
            balancerTag: 'auto',
            domain: XrayStringList.single('geosite:google'),
          ),
        ],
      ),
    );

    expect(config.toJson(), {
      'routing': {
        'rules': [
          {
            'outboundTag': 'direct',
            'ip': ['geoip:private'],
          },
          {
            'balancerTag': 'auto',
            'domain': ['geosite:google'],
          },
        ],
      },
      'dns': {
        'servers': ['1.1.1.1'],
      },
      'metrics': {'listen': '127.0.0.1:11111'},
    });
  });

  test('imports common outbound protocol settings as typed models', () {
    final config = XrayConfig.fromJson({
      'outbounds': [
        {
          'protocol': 'vmess',
          'settings': {
            'vnext': [
              {
                'address': 'vmess.example.com',
                'port': 443,
                'users': [
                  {
                    'id': '00000000-0000-0000-0000-000000000000',
                    'security': 'auto',
                  },
                ],
              },
            ],
          },
        },
        {
          'protocol': 'trojan',
          'settings': {
            'servers': [
              {
                'address': 'trojan.example.com',
                'port': 443,
                'password': 'secret',
              },
            ],
          },
        },
        {
          'protocol': 'shadowsocks',
          'settings': {
            'servers': [
              {
                'address': 'ss.example.com',
                'port': 8388,
                'method': 'aes-128-gcm',
                'password': 'secret',
              },
            ],
          },
        },
      ],
    });

    expect(config.outbounds?[0].settings, isA<VMessOutboundConfig>());
    expect(config.outbounds?[1].settings, isA<TrojanClientConfig>());
    expect(config.outbounds?[2].settings, isA<ShadowsocksClientConfig>());
    expect(config.toJson()['outbounds'], [
      {
        'protocol': 'vmess',
        'settings': {
          'vnext': [
            {
              'address': 'vmess.example.com',
              'port': 443,
              'users': [
                {
                  'id': '00000000-0000-0000-0000-000000000000',
                  'security': 'auto',
                },
              ],
            },
          ],
        },
      },
      {
        'protocol': 'trojan',
        'settings': {
          'servers': [
            {
              'address': 'trojan.example.com',
              'port': 443,
              'password': 'secret',
            },
          ],
        },
      },
      {
        'protocol': 'shadowsocks',
        'settings': {
          'servers': [
            {
              'address': 'ss.example.com',
              'port': 8388,
              'method': 'aes-128-gcm',
              'password': 'secret',
            },
          ],
        },
      },
    ]);
  });

  test('imports simplified outbound protocol settings as typed models', () {
    final config = XrayConfig.fromJson({
      'outbounds': [
        {
          'protocol': 'vless',
          'settings': {
            'address': 'vless.example.com',
            'port': 443,
            'id': '00000000-0000-0000-0000-000000000000',
            'encryption': 'none',
            'flow': 'xtls-rprx-vision',
          },
        },
        {
          'protocol': 'vmess',
          'settings': {
            'address': 'vmess.example.com',
            'port': 443,
            'id': '00000000-0000-0000-0000-000000000000',
            'security': 'auto',
          },
        },
        {
          'protocol': 'trojan',
          'settings': {
            'address': 'trojan.example.com',
            'port': 443,
            'password': 'secret',
          },
        },
        {
          'protocol': 'shadowsocks',
          'settings': {
            'address': 'ss2022.example.com',
            'port': 8388,
            'method': '2022-blake3-aes-128-gcm',
            'password': 'secret',
            'uot': true,
            'uotVersion': 2,
          },
        },
      ],
    });

    expect(config.outbounds?[0].settings, isA<VLessOutboundConfig>());
    expect(config.outbounds?[1].settings, isA<VMessOutboundConfig>());
    expect(config.outbounds?[2].settings, isA<TrojanClientConfig>());
    expect(config.outbounds?[3].settings, isA<ShadowsocksClientConfig>());
    expect(config.toJson()['outbounds'], [
      {
        'protocol': 'vless',
        'settings': {
          'address': 'vless.example.com',
          'port': 443,
          'id': '00000000-0000-0000-0000-000000000000',
          'flow': 'xtls-rprx-vision',
          'encryption': 'none',
        },
      },
      {
        'protocol': 'vmess',
        'settings': {
          'address': 'vmess.example.com',
          'port': 443,
          'id': '00000000-0000-0000-0000-000000000000',
          'security': 'auto',
        },
      },
      {
        'protocol': 'trojan',
        'settings': {
          'address': 'trojan.example.com',
          'port': 443,
          'password': 'secret',
        },
      },
      {
        'protocol': 'shadowsocks',
        'settings': {
          'address': 'ss2022.example.com',
          'port': 8388,
          'method': '2022-blake3-aes-128-gcm',
          'password': 'secret',
          'uot': true,
          'uotVersion': 2,
        },
      },
    ]);
  });

  test('serializes single-server outbound helper constructors', () {
    final config = XrayConfig(
      outbounds: [
        OutboundDetourConfig.fromProtocol(
          protocol: XrayOutboundProtocol.vless,
          settings: VLessOutboundConfig.single(
            address: const XrayAddress('vless.example.com'),
            port: 443,
            id: '00000000-0000-0000-0000-000000000000',
            encryption: 'none',
            flow: 'xtls-rprx-vision',
          ),
        ),
        OutboundDetourConfig.fromProtocol(
          protocol: XrayOutboundProtocol.vmess,
          settings: VMessOutboundConfig.single(
            address: const XrayAddress('vmess.example.com'),
            port: 443,
            id: '00000000-0000-0000-0000-000000000000',
            security: VmessSecurity.auto,
          ),
        ),
        OutboundDetourConfig.fromProtocol(
          protocol: XrayOutboundProtocol.http,
          settings: HTTPClientConfig.single(
            address: const XrayAddress('http-proxy.example.com'),
            port: 8080,
            username: 'u',
            password: 'p',
            headers: {'X-Test': 'ok'},
          ),
        ),
        OutboundDetourConfig.fromProtocol(
          protocol: XrayOutboundProtocol.socks,
          settings: SocksClientConfig.single(
            address: const XrayAddress('127.0.0.1'),
            port: 1080,
            username: 'u',
            password: 'p',
          ),
        ),
        OutboundDetourConfig.fromProtocol(
          protocol: XrayOutboundProtocol.trojan,
          settings: TrojanClientConfig.single(
            address: const XrayAddress('trojan.example.com'),
            port: 443,
            password: 'secret',
          ),
        ),
        OutboundDetourConfig.fromProtocol(
          protocol: XrayOutboundProtocol.shadowsocks,
          settings: ShadowsocksClientConfig.single(
            address: const XrayAddress('ss.example.com'),
            port: 8388,
            cipher: 'aes-128-gcm',
            password: 'secret',
          ),
        ),
      ],
    );

    expect(config.toJson()['outbounds'], [
      {
        'protocol': 'vless',
        'settings': {
          'address': 'vless.example.com',
          'port': 443,
          'id': '00000000-0000-0000-0000-000000000000',
          'flow': 'xtls-rprx-vision',
          'encryption': 'none',
        },
      },
      {
        'protocol': 'vmess',
        'settings': {
          'address': 'vmess.example.com',
          'port': 443,
          'id': '00000000-0000-0000-0000-000000000000',
          'security': 'auto',
        },
      },
      {
        'protocol': 'http',
        'settings': {
          'address': 'http-proxy.example.com',
          'port': 8080,
          'user': 'u',
          'pass': 'p',
          'headers': {'X-Test': 'ok'},
        },
      },
      {
        'protocol': 'socks',
        'settings': {
          'address': '127.0.0.1',
          'port': 1080,
          'user': 'u',
          'pass': 'p',
        },
      },
      {
        'protocol': 'trojan',
        'settings': {
          'address': 'trojan.example.com',
          'port': 443,
          'password': 'secret',
        },
      },
      {
        'protocol': 'shadowsocks',
        'settings': {
          'address': 'ss.example.com',
          'port': 8388,
          'method': 'aes-128-gcm',
          'password': 'secret',
        },
      },
    ]);
  });

  test('imports extended protocol settings as typed models', () {
    final config = XrayConfig.fromJson({
      'inbounds': [
        {
          'protocol': 'dokodemo-door',
          'settings': {
            'address': '127.0.0.1',
            'port': 80,
            'network': 'tcp,udp',
          },
        },
        {
          'protocol': 'tun',
          'settings': {
            'name': 'xray0',
            'mtu': 1500,
            'gateway': ['10.0.0.1'],
          },
        },
      ],
      'outbounds': [
        {
          'protocol': 'freedom',
          'settings': {
            'targetStrategy': 'UseIPv4',
            'fragment': {'packets': 'tlshello', 'length': '10-20'},
          },
        },
        {
          'protocol': 'blackhole',
          'settings': {
            'response': {'type': 'http'},
          },
        },
        {
          'protocol': 'http',
          'settings': {
            'servers': [
              {
                'address': 'proxy.example.com',
                'port': 8080,
                'users': [
                  {'user': 'u', 'pass': 'p'},
                ],
              },
            ],
          },
        },
        {
          'protocol': 'dns',
          'settings': {
            'network': 'udp',
            'address': '8.8.8.8',
            'port': 53,
            'rules': [
              {'action': 'hijack', 'qtype': '1-28'},
            ],
          },
        },
        {
          'protocol': 'wireguard',
          'settings': {
            'secretKey': 'secret',
            'peers': [
              {'publicKey': 'public', 'endpoint': 'example.com:51820'},
            ],
          },
        },
        {
          'protocol': 'hysteria',
          'settings': {'version': 2, 'address': 'hy.example.com', 'port': 443},
        },
        {
          'protocol': 'loopback',
          'settings': {'inboundTag': 'socks-in'},
        },
      ],
    });

    expect(config.inbounds?[0].settings, isA<DokodemoConfig>());
    expect(config.inbounds?[1].settings, isA<TunConfig>());
    expect(config.outbounds?[0].settings, isA<FreedomConfig>());
    expect(config.outbounds?[1].settings, isA<BlackholeConfig>());
    expect(config.outbounds?[2].settings, isA<HTTPClientConfig>());
    expect(config.outbounds?[3].settings, isA<DNSOutboundConfig>());
    expect(config.outbounds?[4].settings, isA<WireGuardConfig>());
    expect(config.outbounds?[5].settings, isA<HysteriaClientConfig>());
    expect(config.outbounds?[6].settings, isA<LoopbackConfig>());
    expect(config.toJson()['inbounds'], [
      {
        'protocol': 'dokodemo-door',
        'settings': {
          'address': '127.0.0.1',
          'port': 80,
          'network': ['tcp', 'udp'],
        },
      },
      {
        'protocol': 'tun',
        'settings': {
          'name': 'xray0',
          'mtu': 1500,
          'gateway': ['10.0.0.1'],
        },
      },
    ]);
  });

  test('imports inbound protocol settings as typed models', () {
    final config = XrayConfig.fromJson({
      'inbounds': [
        {
          'protocol': 'http',
          'settings': {
            'accounts': [
              {'user': 'u', 'pass': 'p'},
            ],
            'allowTransparent': true,
          },
        },
        {
          'protocol': 'shadowsocks',
          'settings': {
            'method': 'aes-128-gcm',
            'password': 'secret',
            'network': 'tcp,udp',
          },
        },
        {
          'protocol': 'vless',
          'settings': {
            'clients': [
              {
                'id': '00000000-0000-0000-0000-000000000000',
                'flow': 'xtls-rprx-vision',
              },
            ],
            'decryption': 'none',
            'fallbacks': [
              {'path': '/ws', 'type': 'tcp', 'dest': 8080},
            ],
          },
        },
        {
          'protocol': 'vmess',
          'settings': {
            'clients': [
              {
                'id': '00000000-0000-0000-0000-000000000000',
                'security': 'auto',
              },
            ],
            'default': {'level': 1},
          },
        },
        {
          'protocol': 'trojan',
          'settings': {
            'clients': [
              {'password': 'secret', 'email': 'a@example.com'},
            ],
            'fallbacks': [
              {'path': '/trojan', 'type': 'tcp', 'dest': '127.0.0.1:80'},
            ],
          },
        },
      ],
      'outbounds': [
        {
          'protocol': 'socks',
          'settings': {
            'servers': [
              {
                'address': '127.0.0.1',
                'port': 1080,
                'users': [
                  {'user': 'u', 'pass': 'p'},
                ],
              },
            ],
          },
        },
      ],
    });

    expect(config.inbounds?[0].settings, isA<HTTPServerConfig>());
    expect(config.inbounds?[1].settings, isA<ShadowsocksServerConfig>());
    expect(config.inbounds?[2].settings, isA<VLessInboundConfig>());
    expect(config.inbounds?[3].settings, isA<VMessInboundConfig>());
    expect(config.inbounds?[4].settings, isA<TrojanServerConfig>());
    expect(config.outbounds?.single.settings, isA<SocksClientConfig>());
    expect(config.toJson()['inbounds'], [
      {
        'protocol': 'http',
        'settings': {
          'accounts': [
            {'user': 'u', 'pass': 'p'},
          ],
          'allowTransparent': true,
        },
      },
      {
        'protocol': 'shadowsocks',
        'settings': {
          'method': 'aes-128-gcm',
          'password': 'secret',
          'network': ['tcp', 'udp'],
        },
      },
      {
        'protocol': 'vless',
        'settings': {
          'clients': [
            {
              'id': '00000000-0000-0000-0000-000000000000',
              'flow': 'xtls-rprx-vision',
            },
          ],
          'decryption': 'none',
          'fallbacks': [
            {'path': '/ws', 'type': 'tcp', 'dest': 8080},
          ],
        },
      },
      {
        'protocol': 'vmess',
        'settings': {
          'clients': [
            {'id': '00000000-0000-0000-0000-000000000000', 'security': 'auto'},
          ],
          'default': {'level': 1},
        },
      },
      {
        'protocol': 'trojan',
        'settings': {
          'clients': [
            {'password': 'secret', 'email': 'a@example.com'},
          ],
          'fallbacks': [
            {'path': '/trojan', 'type': 'tcp', 'dest': '127.0.0.1:80'},
          ],
        },
      },
    ]);
  });

  test('serializes single-user inbound helper constructors', () {
    final config = XrayConfig(
      inbounds: [
        InboundDetourConfig.fromProtocol(
          protocol: XrayInboundProtocol.vless,
          settings: VLessInboundConfig.single(
            client: const VLessUser(id: '00000000-0000-0000-0000-000000000000'),
            decryption: 'none',
          ),
        ),
        InboundDetourConfig.fromProtocol(
          protocol: XrayInboundProtocol.vmess,
          settings: VMessInboundConfig.single(
            user: const VMessUser(
              id: '00000000-0000-0000-0000-000000000000',
              security: VmessSecurity.auto,
            ),
          ),
        ),
        InboundDetourConfig.fromProtocol(
          protocol: XrayInboundProtocol.trojan,
          settings: TrojanServerConfig.single(
            client: const TrojanUserConfig(password: 'secret'),
          ),
        ),
        InboundDetourConfig.fromProtocol(
          protocol: XrayInboundProtocol.shadowsocks,
          settings: ShadowsocksServerConfig.single(
            cipher: 'aes-128-gcm',
            password: 'secret',
            networkList: const XrayNetworkList([XrayNetwork.tcp]),
          ),
        ),
      ],
    );

    expect(config.toJson()['inbounds'], [
      {
        'protocol': 'vless',
        'settings': {
          'clients': [
            {'id': '00000000-0000-0000-0000-000000000000'},
          ],
          'decryption': 'none',
        },
      },
      {
        'protocol': 'vmess',
        'settings': {
          'clients': [
            {'id': '00000000-0000-0000-0000-000000000000', 'security': 'auto'},
          ],
        },
      },
      {
        'protocol': 'trojan',
        'settings': {
          'clients': [
            {'password': 'secret'},
          ],
        },
      },
      {
        'protocol': 'shadowsocks',
        'settings': {
          'method': 'aes-128-gcm',
          'password': 'secret',
          'network': ['tcp'],
        },
      },
    ]);
  });

  test('imports common transport settings as typed models', () {
    final wsTls = StreamConfig.fromJson({
      'network': 'ws',
      'security': 'tls',
      'wsSettings': {
        'path': '/ws',
        'headers': {'Host': 'example.com'},
        'heartbeatPeriod': 30,
      },
      'tlsSettings': {
        'serverName': 'example.com',
        'alpn': 'h2,http/1.1',
        'fingerprint': 'chrome',
        'echForceQuery': 'half',
      },
      'sockopt': {
        'dialerProxy': 'proxy',
        'tproxy': 'redirect',
        'domainStrategy': 'UseIPv4',
        'happyEyeballs': {'tryDelayMs': 250},
      },
    });

    final split = StreamConfig.fromJson({
      'network': 'xhttp',
      'xhttpSettings': {
        'host': 'example.com',
        'path': '/x',
        'mode': 'stream-up',
        'xPaddingBytes': '10-20',
        'xPaddingPlacement': 'queryInHeader',
        'xPaddingMethod': 'repeat-x',
        'xmux': {'maxConcurrency': '1-4'},
      },
      'grpcSettings': {
        'serviceName': 'svc',
        'multiMode': true,
        'idle_timeout': 10,
      },
      'httpupgradeSettings': {'host': 'example.com', 'path': '/up'},
    });

    expect(wsTls.wsSettings, isA<WebSocketConfig>());
    expect(wsTls.tlsSettings, isA<TLSConfig>());
    expect(wsTls.sockopt, isA<SocketConfig>());
    expect(split.xhttpSettings, isA<SplitHTTPConfig>());
    expect(split.grpcSettings, isA<GRPCConfig>());
    expect(split.httpupgradeSettings, isA<HttpUpgradeConfig>());
    expect(wsTls.toJson(), {
      'network': 'ws',
      'security': 'tls',
      'wsSettings': {
        'path': '/ws',
        'headers': {'Host': 'example.com'},
        'heartbeatPeriod': 30,
      },
      'tlsSettings': {
        'serverName': 'example.com',
        'alpn': ['h2', 'http/1.1'],
        'fingerprint': 'chrome',
        'echForceQuery': 'half',
      },
      'sockopt': {
        'tproxy': 'redirect',
        'domainStrategy': 'UseIPv4',
        'dialerProxy': 'proxy',
        'happyEyeballs': {'tryDelayMs': 250},
      },
    });
    expect(split.toJson(), {
      'network': 'xhttp',
      'xhttpSettings': {
        'host': 'example.com',
        'path': '/x',
        'mode': 'stream-up',
        'xPaddingBytes': '10-20',
        'xPaddingPlacement': 'queryInHeader',
        'xPaddingMethod': 'repeat-x',
        'xmux': {'maxConcurrency': '1-4'},
      },
      'httpupgradeSettings': {'host': 'example.com', 'path': '/up'},
      'grpcSettings': {
        'serviceName': 'svc',
        'multiMode': true,
        'idle_timeout': 10,
      },
    });
  });

  test('serializes stream helper constructors', () {
    final reality = StreamConfig.reality(
      network: TransportProtocol.grpc,
      realitySettings: REALITYConfig.client(
        serverName: 'example.com',
        publicKey: 'public-key',
        shortId: 'abcd',
      ),
      grpcSettings: const GRPCConfig(serviceName: 'svc'),
    );
    final tls = StreamConfig.tls(
      network: TransportProtocol.ws,
      wsSettings: const WebSocketConfig(path: '/ws'),
      tlsSettings: const TLSConfig(serverName: 'example.com'),
    );

    expect(reality.toJson(), {
      'network': 'grpc',
      'security': 'reality',
      'grpcSettings': {'serviceName': 'svc'},
      'realitySettings': {
        'serverName': 'example.com',
        'publicKey': 'public-key',
        'shortId': 'abcd',
      },
    });
    expect(tls.toJson(), {
      'network': 'ws',
      'security': 'tls',
      'wsSettings': {'path': '/ws'},
      'tlsSettings': {'serverName': 'example.com'},
    });
  });

  test('imports finalmask kcp and hysteria transport settings', () {
    final stream = StreamConfig.fromJson({
      'network': 'hysteria',
      'kcpSettings': {
        'mtu': 1350,
        'uplinkCapacity': 50,
        'header': {'type': 'none'},
      },
      'hysteriaSettings': {
        'version': 2,
        'auth': 'token',
        'up': '20mbps',
        'down': '100mbps',
        'udphop': {'ports': '20000-20010', 'interval': '5-10'},
      },
      'finalmask': {
        'tcp': [
          {
            'type': 'fragment',
            'settings': {'packets': 'tlshello', 'length': '10-20'},
          },
          {
            'type': 'sudoku',
            'settings': {'password': 'p', 'paddingMin': 1},
          },
        ],
        'udp': [
          {
            'type': 'noise',
            'settings': {
              'reset': 10,
              'noise': [
                {'rand': '1-2', 'type': 'str', 'packet': 'abc'},
              ],
            },
          },
          {
            'type': 'xdns',
            'settings': {
              'resolvers': ['https+udp://1.1.1.1/dns-query'],
            },
          },
        ],
        'quicParams': {'congestion': 'bbr', 'brutalUp': '10mbps'},
      },
    });

    expect(stream.kcpSettings, isA<KCPConfig>());
    expect(stream.hysteriaSettings, isA<HysteriaConfig>());
    expect(stream.finalmask?.tcp?.first.settings, isA<FragmentMask>());
    expect(stream.finalmask?.tcp?[1].settings, isA<Sudoku>());
    expect(stream.finalmask?.udp?.first.settings, isA<NoiseMask>());
    expect(stream.finalmask?.udp?[1].settings, isA<Xdns>());
    expect(stream.finalmask?.quicParams, isA<QuicParamsConfig>());
    expect(stream.toJson(), {
      'network': 'hysteria',
      'finalmask': {
        'tcp': [
          {
            'type': 'fragment',
            'settings': {'packets': 'tlshello', 'length': '10-20'},
          },
          {
            'type': 'sudoku',
            'settings': {'password': 'p', 'paddingMin': 1},
          },
        ],
        'udp': [
          {
            'type': 'noise',
            'settings': {
              'reset': 10,
              'noise': [
                {'rand': '1-2', 'type': 'str', 'packet': 'abc'},
              ],
            },
          },
          {
            'type': 'xdns',
            'settings': {
              'resolvers': ['https+udp://1.1.1.1/dns-query'],
            },
          },
        ],
        'quicParams': {'congestion': 'bbr', 'brutalUp': '10mbps'},
      },
      'kcpSettings': {
        'mtu': 1350,
        'uplinkCapacity': 50,
        'header': {'type': 'none'},
      },
      'hysteriaSettings': {
        'version': 2,
        'auth': 'token',
        'up': '20mbps',
        'down': '100mbps',
        'udphop': {'ports': '20000-20010', 'interval': '5-10'},
      },
    });
  });

  test('imports edge transport settings without losing json shape', () {
    final stream = StreamConfig.fromJson({
      'network': 'hysteria',
      'security': 'tls',
      'tlsSettings': {
        'serverName': 'edge.example.com',
        'certificates': [
          {
            'certificate': ['-----BEGIN CERTIFICATE-----', '...'],
            'key': ['-----BEGIN PRIVATE KEY-----', '...'],
            'usage': 'verify',
            'oneTimeLoading': true,
          },
        ],
      },
      'hysteriaSettings': {
        'version': 2,
        'auth': 'token',
        'masquerade': {
          'type': 'proxy',
          'url': 'https://edge.example.com/',
          'rewriteHost': true,
          'headers': {'X-Test': 'ok'},
          'statusCode': 200,
        },
      },
      'finalmask': {
        'udp': [
          {
            'type': 'xdns',
            'settings': {
              'domains': ['geosite:private'],
              'resolvers': ['https+udp://1.1.1.1/dns-query'],
            },
          },
        ],
        'quicParams': {
          'congestion': 'brutal',
          'brutalUp': '100mbps',
          'brutalDown': '500mbps',
          'udpHop': {'ports': '20000-20010', 'interval': '5-10'},
          'maxIdleTimeout': 30,
        },
      },
    });

    expect(stream.tlsSettings?.certs?.single, isA<TLSCertConfig>());
    expect(stream.hysteriaSettings?.masquerade, isA<Masquerade>());
    expect(stream.finalmask?.udp?.single.settings, isA<Xdns>());
    expect(stream.finalmask?.quicParams?.udpHop, isA<UdpHop>());
    expect(stream.toJson(), {
      'network': 'hysteria',
      'security': 'tls',
      'finalmask': {
        'udp': [
          {
            'type': 'xdns',
            'settings': {
              'domains': ['geosite:private'],
              'resolvers': ['https+udp://1.1.1.1/dns-query'],
            },
          },
        ],
        'quicParams': {
          'congestion': 'brutal',
          'brutalUp': '100mbps',
          'brutalDown': '500mbps',
          'udpHop': {'ports': '20000-20010', 'interval': '5-10'},
          'maxIdleTimeout': 30,
        },
      },
      'hysteriaSettings': {
        'version': 2,
        'auth': 'token',
        'masquerade': {
          'type': 'proxy',
          'url': 'https://edge.example.com/',
          'rewriteHost': true,
          'headers': {'X-Test': 'ok'},
          'statusCode': 200,
        },
      },
      'tlsSettings': {
        'certificates': [
          {
            'certificate': ['-----BEGIN CERTIFICATE-----', '...'],
            'key': ['-----BEGIN PRIVATE KEY-----', '...'],
            'usage': 'verify',
            'oneTimeLoading': true,
          },
        ],
        'serverName': 'edge.example.com',
      },
    });
  });

  test('imports marker-style response and finalmask settings', () {
    final blackhole = BlackholeConfig.fromJson({
      'response': {'type': 'http'},
    });
    final finalmask = FinalMask.fromJson({
      'tcp': [
        {'type': 'header-dtls', 'settings': {}},
        {'type': 'header-srtp', 'settings': {}},
        {'type': 'mkcp-original', 'settings': {}},
      ],
      'udp': [
        {'type': 'header-utp', 'settings': {}},
        {'type': 'header-wechat', 'settings': {}},
        {'type': 'header-wireguard', 'settings': {}},
        {
          'type': 'future-mask',
          'settings': {'keep': true},
        },
      ],
    });

    expect(blackhole.response, isA<HttpResponse>());
    expect(finalmask.tcp?[0].settings, isA<Dtls>());
    expect(finalmask.tcp?[1].settings, isA<Srtp>());
    expect(finalmask.tcp?[2].settings, isA<Original>());
    expect(finalmask.udp?[0].settings, isA<Utp>());
    expect(finalmask.udp?[1].settings, isA<Wechat>());
    expect(finalmask.udp?[2].settings, isA<Wireguard>());
    expect(finalmask.udp?[3].settings, isA<RawFinalMaskSettings>());
    expect(blackhole.toJson(), {
      'response': {'type': 'http'},
    });
    expect(finalmask.toJson(), {
      'tcp': [
        {'type': 'header-dtls', 'settings': {}},
        {'type': 'header-srtp', 'settings': {}},
        {'type': 'mkcp-original', 'settings': {}},
      ],
      'udp': [
        {'type': 'header-utp', 'settings': {}},
        {'type': 'header-wechat', 'settings': {}},
        {'type': 'header-wireguard', 'settings': {}},
        {
          'type': 'future-mask',
          'settings': {'keep': true},
        },
      ],
    });
  });

  test('imports tcp header and header-custom finalmask settings', () {
    final tcp = TCPConfig.fromJson({
      'header': {
        'type': 'http',
        'request': {
          'version': '1.1',
          'path': ['/'],
          'headers': {
            'Host': ['example.com'],
          },
        },
      },
    });
    final finalmask = FinalMask.fromJson({
      'tcp': [
        {
          'type': 'header-custom',
          'settings': {
            'clients': [
              [
                {
                  'delay': 1,
                  'type': 'str',
                  'packet': 'GET / HTTP/1.1',
                  'transform': {
                    'op': 'concat',
                    'args': [
                      {'type': 'str', 'metadata': 'host'},
                    ],
                  },
                },
              ],
            ],
          },
        },
      ],
      'udp': [
        {
          'type': 'header-custom',
          'settings': {
            'mode': 'packet',
            'client': [
              {'rand': 1, 'type': 'str', 'packet': 'udp'},
            ],
          },
        },
      ],
    });

    expect(tcp.header, isA<Authenticator>());
    expect(finalmask.tcp?.single.settings, isA<HeaderCustomTCP>());
    expect(finalmask.udp?.single.settings, isA<HeaderCustomUDP>());
    expect(tcp.toJson(), {
      'header': {
        'type': 'http',
        'request': {
          'version': '1.1',
          'path': ['/'],
          'headers': {
            'Host': ['example.com'],
          },
        },
      },
    });
    expect(finalmask.toJson(), {
      'tcp': [
        {
          'type': 'header-custom',
          'settings': {
            'clients': [
              [
                {
                  'delay': 1,
                  'type': 'str',
                  'transform': {
                    'op': 'concat',
                    'args': [
                      {'type': 'str', 'metadata': 'host'},
                    ],
                  },
                  'packet': 'GET / HTTP/1.1',
                },
              ],
            ],
          },
        },
      ],
      'udp': [
        {
          'type': 'header-custom',
          'settings': {
            'mode': 'packet',
            'client': [
              {'rand': 1, 'type': 'str', 'packet': 'udp'},
            ],
          },
        },
      ],
    });
  });

  test('serializes vless outbound with reality stream settings', () {
    final config = XrayConfig(
      outbounds: [
        OutboundDetourConfig(
          protocol: 'vless',
          tag: 'proxy',
          settings: VLessOutboundConfig(
            vnext: [
              VLessOutboundVnext(
                address: const XrayAddress('example.com'),
                port: 443,
                users: const [
                  VLessUser(
                    id: '00000000-0000-0000-0000-000000000000',
                    encryption: 'none',
                    flow: 'xtls-rprx-vision',
                  ),
                ],
              ),
            ],
          ),
          streamSettings: StreamConfig.reality(
            realitySettings: REALITYConfig.client(
              serverName: 'example.com',
              publicKey: 'public-key',
              shortId: 'abcd',
              fingerprint: 'chrome',
            ),
          ),
        ),
      ],
    );

    expect(config.toJson(), {
      'outbounds': [
        {
          'protocol': 'vless',
          'tag': 'proxy',
          'settings': {
            'vnext': [
              {
                'address': 'example.com',
                'port': 443,
                'users': [
                  {
                    'id': '00000000-0000-0000-0000-000000000000',
                    'flow': 'xtls-rprx-vision',
                    'encryption': 'none',
                  },
                ],
              },
            ],
          },
          'streamSettings': {
            'network': 'tcp',
            'security': 'reality',
            'realitySettings': {
              'fingerprint': 'chrome',
              'serverName': 'example.com',
              'publicKey': 'public-key',
              'shortId': 'abcd',
            },
          },
        },
      ],
    });
  });

  test('serializes app configs with union-shaped dns and fakedns fields', () {
    final config = XrayConfig(
      dns: DNSConfig(
        servers: [
          NameServerConfig.simple('1.1.1.1'),
          NameServerConfig(
            address: const XrayAddress('https://dns.google/dns-query'),
            domains: const XrayStringList(['geosite:google']),
            queryStrategy: DnsQueryStrategy.useIpv4,
          ),
        ],
        hosts: const HostsWrapper(
          hosts: {
            'domain:example.com': HostAddress.single(XrayAddress('127.0.0.1')),
            'domain:multi.test': HostAddress.list([
              XrayAddress('127.0.0.2'),
              XrayAddress('127.0.0.3'),
            ]),
          },
        ),
      ),
      routing: RouterConfig(
        domainStrategy: RouterDomainStrategy.ipIfNonMatch,
        ruleList: [
          RouterRule(
            domain: const XrayStringList(['geosite:private']),
            outboundTag: 'direct',
          ),
        ],
        balancers: [
          BalancingRule(
            tag: 'auto',
            selectors: const XrayStringList(['proxy-']),
            strategy: StrategyConfig(
              type: BalancingStrategyType.leastload,
              settings: StrategyLeastLoadConfig(
                baselines: [
                  XrayDuration.raw('100ms'),
                  XrayDuration.fromDuration(Duration(seconds: 1)),
                ],
                expected: 1,
                maxRTT: XrayDuration.raw('3s'),
                tolerance: 0.2,
              ),
            ),
          ),
          BalancingRule(
            tag: 'custom',
            selectors: const XrayStringList(['custom-']),
            strategy: const StrategyConfig(
              type: BalancingStrategyType.random,
              settings: XrayRawStrategySettings({'reserved': true}),
            ),
          ),
        ],
      ),
      policy: const PolicyConfig(levels: {0: Policy(statsUserUplink: true)}),
      fakeDns: const FakeDNSConfig.pool(
        FakeDNSPoolElementConfig(ipPool: '198.18.0.0/15', lruSize: 65535),
      ),
    );

    expect(config.toJson(), {
      'routing': {
        'rules': [
          {
            'outboundTag': 'direct',
            'domain': ['geosite:private'],
          },
        ],
        'domainStrategy': 'IPIfNonMatch',
        'balancers': [
          {
            'tag': 'auto',
            'selector': ['proxy-'],
            'strategy': {
              'type': 'leastload',
              'settings': {
                'baselines': ['100ms', '1s'],
                'expected': 1,
                'maxRTT': '3s',
                'tolerance': 0.2,
              },
            },
          },
          {
            'tag': 'custom',
            'selector': ['custom-'],
            'strategy': {
              'type': 'random',
              'settings': {'reserved': true},
            },
          },
        ],
      },
      'dns': {
        'servers': [
          '1.1.1.1',
          {
            'address': 'https://dns.google/dns-query',
            'domains': ['geosite:google'],
            'queryStrategy': 'UseIPv4',
          },
        ],
        'hosts': {
          'domain:example.com': '127.0.0.1',
          'domain:multi.test': ['127.0.0.2', '127.0.0.3'],
        },
      },
      'policy': {
        'levels': {
          '0': {'statsUserUplink': true},
        },
      },
      'fakeDns': {'ipPool': '198.18.0.0/15', 'poolSize': 65535},
    });
  });

  test('serializes additional inbound and outbound protocol settings', () {
    final config = XrayConfig(
      inbounds: [
        InboundDetourConfig.fromProtocol(
          protocol: XrayInboundProtocol.dokodemoDoor,
          port: XrayPortList.single(12345),
          settings: DokodemoConfig(
            address: const XrayAddress('127.0.0.1'),
            port: 80,
            network: const XrayNetworkList([XrayNetwork.tcp, XrayNetwork.udp]),
          ),
        ),
        InboundDetourConfig.fromProtocol(
          protocol: XrayInboundProtocol.tun,
          settings: TunConfig(name: 'xray0', mtu: 1500, gateway: ['10.0.0.1']),
        ),
      ],
      outbounds: [
        OutboundDetourConfig.fromProtocol(
          protocol: XrayOutboundProtocol.dns,
          settings: DNSOutboundConfig(
            network: XrayNetwork.udp,
            address: const XrayAddress('8.8.8.8'),
            port: 53,
            rules: [
              DNSOutboundRuleConfig(
                action: DNSOutboundRuleAction.hijack,
                qtype: XrayPortList([const XrayPortRange(from: 1, to: 28)]),
              ),
            ],
          ),
        ),
        OutboundDetourConfig.fromProtocol(
          protocol: XrayOutboundProtocol.loopback,
          settings: LoopbackConfig(inboundTag: 'socks-in'),
        ),
        OutboundDetourConfig.fromProtocol(
          protocol: XrayOutboundProtocol.wireguard,
          settings: WireGuardConfig(
            secretKey: 'secret',
            peers: [
              const WireGuardPeerConfig(
                publicKey: 'public',
                endpoint: 'example.com:51820',
              ),
            ],
          ),
        ),
        OutboundDetourConfig.fromProtocol(
          protocol: XrayOutboundProtocol.hysteria,
          settings: const HysteriaClientConfig(
            version: 2,
            address: XrayAddress('hy.example.com'),
            port: 443,
          ),
          streamSettings: StreamConfig(
            network: TransportProtocol.hysteria,
            hysteriaSettings: HysteriaConfig(version: 2, auth: 'token'),
            finalmask: FinalMask(
              tcp: [
                Mask(
                  type: 'fragment',
                  settings: FragmentMask(
                    packets: 'tlshello',
                    length: XrayInt32Range.single(20),
                    delay: XrayInt32Range.single(5),
                  ),
                ),
                Mask(
                  type: 'header-custom',
                  settings: HeaderCustomTCP(
                    clients: [
                      [
                        TCPItem(
                          delay: XrayInt32Range.single(0),
                          packet: 'GET / HTTP/1.1',
                          type: 'str',
                        ),
                      ],
                    ],
                  ),
                ),
              ],
              udp: [
                Mask(
                  type: 'noise',
                  settings: NoiseMask(
                    reset: XrayInt32Range.single(10),
                    noiseItems: [
                      NoiseItem(
                        rand: const XrayInt32Range(left: 4, right: 8),
                        delay: XrayInt32Range.single(1),
                      ),
                    ],
                  ),
                ),
                Mask(
                  type: 'xdns',
                  settings: const Xdns(
                    resolvers: ['https+udp://1.1.1.1/dns-query'],
                  ),
                ),
              ],
              quicParams: QuicParamsConfig(
                congestion: 'bbr',
                brutalUp: Bandwidth('10mbps'),
              ),
            ),
          ),
        ),
      ],
    );

    expect(config.toJson(), {
      'inbounds': [
        {
          'protocol': 'dokodemo-door',
          'port': 12345,
          'settings': {
            'address': '127.0.0.1',
            'port': 80,
            'network': ['tcp', 'udp'],
          },
        },
        {
          'protocol': 'tun',
          'settings': {
            'name': 'xray0',
            'mtu': 1500,
            'gateway': ['10.0.0.1'],
          },
        },
      ],
      'outbounds': [
        {
          'protocol': 'dns',
          'settings': {
            'network': 'udp',
            'address': '8.8.8.8',
            'port': 53,
            'rules': [
              {'action': 'hijack', 'qtype': '1-28'},
            ],
          },
        },
        {
          'protocol': 'loopback',
          'settings': {'inboundTag': 'socks-in'},
        },
        {
          'protocol': 'wireguard',
          'settings': {
            'secretKey': 'secret',
            'peers': [
              {'publicKey': 'public', 'endpoint': 'example.com:51820'},
            ],
          },
        },
        {
          'protocol': 'hysteria',
          'settings': {'version': 2, 'address': 'hy.example.com', 'port': 443},
          'streamSettings': {
            'network': 'hysteria',
            'finalmask': {
              'tcp': [
                {
                  'type': 'fragment',
                  'settings': {'packets': 'tlshello', 'length': 20, 'delay': 5},
                },
                {
                  'type': 'header-custom',
                  'settings': {
                    'clients': [
                      [
                        {'delay': 0, 'type': 'str', 'packet': 'GET / HTTP/1.1'},
                      ],
                    ],
                  },
                },
              ],
              'udp': [
                {
                  'type': 'noise',
                  'settings': {
                    'reset': 10,
                    'noise': [
                      {'rand': '4-8', 'delay': 1},
                    ],
                  },
                },
                {
                  'type': 'xdns',
                  'settings': {
                    'resolvers': ['https+udp://1.1.1.1/dns-query'],
                  },
                },
              ],
              'quicParams': {'congestion': 'bbr', 'brutalUp': '10mbps'},
            },
            'hysteriaSettings': {'version': 2, 'auth': 'token'},
          },
        },
      ],
    });
  });
}
