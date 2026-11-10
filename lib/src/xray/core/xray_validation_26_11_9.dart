part of 'config.dart';

void _validateMux(
  MuxConfig? mux,
  List<XrayValidationIssue> issues,
  String path,
) {
  if (mux == null) return;
  for (final entry in {
    'concurrency': mux.concurrency,
    'xudpConcurrency': mux.xudpConcurrency,
  }.entries) {
    final value = entry.value;
    if (value != null && (value < -0x8000 || value > 0x7fff)) {
      issues.add(
        XrayValidationIssue('$path.${entry.key}', 'expected an int16 value'),
      );
    }
  }
  final policy = mux.xudpProxyUDP443 ?? '';
  if (!const {'', 'reject', 'allow', 'skip'}.contains(policy)) {
    issues.add(
      XrayValidationIssue(
        '$path.xudpProxyUDP443',
        'expected reject, allow or skip',
      ),
    );
  }
}

void _validateFreedomFinalRules(
  FreedomConfig settings,
  List<XrayValidationIssue> issues,
  String path,
) {
  final rules = settings.finalRules ?? const <FreedomFinalRuleConfig>[];
  for (var i = 0; i < rules.length; i++) {
    final rule = rules[i];
    final rulePath = '$path.settings.finalRules[$i]';
    final action = rule.action?.toLowerCase() ?? '';
    final block = action == 'block';

    if (action != 'allow' && !block) {
      issues.add(
        XrayValidationIssue('$rulePath.action', 'expected allow or block'),
      );
    }

    if (!block) {
      if (rule.delay != null) {
        issues.add(
          XrayValidationIssue(
            '$rulePath.delay',
            'only supported for block finalRules',
          ),
        );
      }
      if ((rule.logLevel ?? '').isNotEmpty) {
        issues.add(
          XrayValidationIssue(
            '$rulePath.logLevel',
            'only supported for block finalRules',
          ),
        );
      }
      if (rule.blockDelay != null) {
        issues.add(
          XrayValidationIssue(
            '$rulePath.blockDelay',
            'deprecated alias of delay; only supported for block finalRules',
          ),
        );
      }
      continue;
    }

    for (final entry in {
      'delay': rule.delay,
      'blockDelay': rule.blockDelay,
    }.entries) {
      final range = entry.value;
      if (range != null &&
          range.left == range.right &&
          (range.left < -0x80000000 || range.left > 0x7fffffff)) {
        issues.add(
          XrayValidationIssue(
            '$rulePath.${entry.key}',
            'expected an int32 JSON number',
          ),
        );
      }
    }

    final logLevel = rule.logLevel?.toLowerCase() ?? '';
    if (!const {
      '',
      'debug',
      'info',
      'none',
      'warning',
      'error',
    }.contains(logLevel)) {
      issues.add(
        XrayValidationIssue(
          '$rulePath.logLevel',
          'expected debug, info, none, warning or error',
        ),
      );
    }
  }
}
