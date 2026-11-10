import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter/xray_core_flutter.dart';

XrayConfig _freedomWithRules(List<Map<String, Object?>> rules) =>
    XrayConfig.fromJson({
      'outbounds': [
        {
          'protocol': 'freedom',
          'settings': {'finalRules': rules},
        },
      ],
    });

void main() {
  test('root log emits canonical logLevel and accepts the legacy casing', () {
    expect(LogConfig.fromJson({'logLevel': 'DEBUG'}).toJson(), {
      'logLevel': 'debug',
    });
    expect(LogConfig.fromJson({'loglevel': 'warning'}).toJson(), {
      'logLevel': 'warning',
    });
    expect(
      LogConfig.fromJson({'loglevel': 'warning', 'logLevel': 'error'}).toJson(),
      {'logLevel': 'error'},
    );
  });

  test('Freedom final rules retain delay, logLevel and legacy blockDelay', () {
    final json = {
      'finalRules': [
        {
          'action': 'block',
          'delay': '30-60',
          'logLevel': 'DEBUG',
          'blockDelay': 5,
        },
      ],
    };

    expect(FreedomConfig.fromJson(json).toJson(), json);
  });

  test(
    'Freedom block rules accept every Core log level case-insensitively',
    () {
      final rules = [
        for (final level in ['DEBUG', 'info', 'None', 'WARNING', 'error', ''])
          {'action': 'block', 'logLevel': level},
      ];
      final config = _freedomWithRules(rules);

      expect(FreedomConfig.fromJson({'finalRules': rules}).toJson(), {
        'finalRules': rules,
      });
      expect(config.validate(), isEmpty);
    },
  );

  test('Freedom block rules reject unknown log levels at the exact path', () {
    final issues = _freedomWithRules([
      {'action': 'block', 'logLevel': 'trace'},
    ]).validate();

    expect(issues, hasLength(1));
    expect(issues.single.path, 'outbounds[0].settings.finalRules[0].logLevel');
  });

  test('Freedom allow rules reject block-only fields at exact paths', () {
    final issues = _freedomWithRules([
      {'action': 'allow', 'delay': 10, 'logLevel': 'info', 'blockDelay': 20},
    ]).validate();

    expect(
      issues.map((issue) => issue.path),
      orderedEquals([
        'outbounds[0].settings.finalRules[0].delay',
        'outbounds[0].settings.finalRules[0].logLevel',
        'outbounds[0].settings.finalRules[0].blockDelay',
      ]),
    );
  });

  test('TUN accepts the expanded WFP grammar without rewriting input', () {
    final values = [
      'DNS',
      'MisconfigTUN',
      'WinDNSClient',
      'ALL',
      'AllExceptLAN',
      'TCP',
      'udp',
      'ICMP',
      '53',
      '0053',
      '10-20',
      'tcp/1-65535',
      'UDP/10-20',
      '1.1.1.1/24:TCP/853',
      '[2001:DB8::1/32]:udp/10-20',
      '[::/0]:ICMP',
      '0.0.0.0/0:dns',
      '[::/0]:all',
      '1.1.1.0/24:20-30',
    ];
    final json = {'autoSystemWfpBlockLeak': values};
    final tun = TunConfig.fromJson(json);

    expect(tun.toJson(), json);
    expect(
      XrayConfig(inbounds: [InboundDetourConfig.tun(settings: tun)]).validate(),
      isEmpty,
    );
  });

  test('TUN rejects malformed expanded WFP rules at the exact path', () {
    for (final value in [
      '',
      'ip',
      'tcp/',
      'udp/65536',
      'tcp/-1',
      'tcp/+53',
      'tcp/53/1',
      'udp/abc',
      'icmp/0',
      'icmp/8',
      'tcp:53',
      ' dns',
      'tcp/0-10',
      'tcp/20-10',
      'tcp/5-',
      'tcp/-5',
      'tcp/1-2-3',
      'tcp/1-65536',
      'udp/ 53',
      'all/0',
      'dns/53',
      'windnsclient/53',
      'tcp/0',
      'udp/0',
      'tcp/00',
      'udp/0-0',
      'udp/65535-1',
      '0',
      '00',
      '65536',
      '0-10',
      '20-10',
      '5-',
      '-5',
      '-',
      '1-2-3',
      '1-65536',
      '+53',
      ' 53',
      '53 ',
      '53/1',
      '53/tcp',
      '0x35',
      'ipv4',
      'ipv6',
      'ipv4:udp',
      'ipv6:all',
      'tcpv4',
      'icmpv4',
      '1.1.1.0/24',
      '[2001:db8::/32]',
      '1.1.1.0/24:',
      '[::/0]:',
      ':udp',
      '[]:udp',
      '[:udp',
      '[::/0]udp',
      '1.1.1.1:53',
      '[::1]:53',
      '[2001:db8::1]:tcp/53',
      '2001:db8::/32:53',
      '::/0:all',
      '[1.1.1.0/24]:53',
      '[2001:db8::]/32:53',
      '1.1.1.0/33:53',
      '[::/129]:53',
      '1.1.1.0/24:1.1.1.0/24:53',
      '[::/0]:[::/0]:53',
      '1.1.1.0/24 :53',
      '1.1.1.0/24: 53',
      ' 1.1.1.0/24:53',
      '1.1.1.0/24::53',
      '[fe80::%1/64]:53',
      'geoip:cn:53',
      '1.1.1.0/24:udp/0',
      '[::/0]:icmp/8',
      '1.1.1.0/24:dns/53',
      '[::/0]:20-10',
      '1.1.1.0/24:ipv4:53',
      '1.1.1.0/24:geoip',
      '[::ffff:1.1.1.0/120]:53',
      '[::ffff:0:0/96]:all',
    ]) {
      final config = XrayConfig(
        inbounds: [
          InboundDetourConfig.tun(
            settings: TunConfig(autoSystemWfpBlockLeak: [value]),
          ),
        ],
      );

      expect(
        config.validate().single.path,
        'inbounds[0].settings.autoSystemWfpBlockLeak[0]',
        reason: value,
      );
    }
  });
}
