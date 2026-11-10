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
}
