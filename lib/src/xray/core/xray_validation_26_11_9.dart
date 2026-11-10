part of 'config.dart';

void _validateFreedomFinalRules(
  FreedomConfig settings,
  List<XrayValidationIssue> issues,
  String path,
) {
  final rules = settings.finalRules ?? const <FreedomFinalRuleConfig>[];
  for (var i = 0; i < rules.length; i++) {
    final rule = rules[i];
    final rulePath = '$path.settings.finalRules[$i]';
    final block = rule.action?.toLowerCase() == 'block';

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
