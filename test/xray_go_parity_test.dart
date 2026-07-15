import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('dart source covers xray infra/conf json tags', () {
    final goConf = Directory('../Xray-core/infra/conf');
    if (!goConf.existsSync()) {
      markTestSkipped('Xray-core infra/conf directory is not available.');
      return;
    }

    final goTags = _collectGoJsonTags(goConf);
    final dartFiles = Directory('lib/src/xray')
        .listSync(recursive: true)
        .whereType<File>()
        .where((file) => file.path.endsWith('.dart'))
        .where((file) => !file.path.endsWith('.freezed.dart'))
        .toList();
    final dartText =
        dartFiles.map((file) => file.readAsStringSync()).join('\n');
    final dartKeys = _collectDartJsonKeys(dartFiles);
    final shapeIssues = _collectJsonShapeIssues(goConf, dartFiles);
    final loaderIssues = _collectLoaderIdIssues(goConf, dartText);

    final missing = goTags.where((tag) => !dartText.contains(tag)).toList();
    final unexpectedDartKeys = dartKeys
        .where((key) => !goTags.contains(key))
        .where((key) => !_allowedUntaggedConfigKeys.contains(key))
        .toList();

    expect(
      missing,
      isEmpty,
      reason:
          'When Xray-core infra/conf adds or renames JSON fields, update the '
          'Dart models before releasing the helper SDK.',
    );
    expect(
      unexpectedDartKeys,
      isEmpty,
      reason:
          'Dart should not emit config keys that Xray-core infra/conf does not '
          'parse, except for explicitly documented untagged config structs.',
    );
    expect(
      shapeIssues,
      isEmpty,
      reason: 'Dart models should expose every JSON field on the matching '
          'Xray-core infra/conf struct, not just somewhere globally.',
    );
    expect(
      loaderIssues,
      isEmpty,
      reason: 'Every Xray-core config creator loader id should be available '
          'through a typed Dart enum, factory, or union parser.',
    );
  });
}

const _allowedUntaggedConfigKeys = {
  'afterBytes',
  'bytesPerSec',
  'burstBytesPerSec',
  'regexp',
  'match',
};

const _goStructClassAliases = {
  'Config': 'XrayConfig',
  'User': 'XrayUser',
  'healthCheckSettings': 'HealthCheckSettings',
  'strategyLeastLoadConfig': 'StrategyLeastLoadConfig',
};

const _allowedClassExtraKeys = {
  'Authenticator': {'type'},
};

List<String> _collectGoJsonTags(Directory goConf) {
  final tags = <String>{};
  final tagPattern = RegExp(r'`json:"([^",]+)');

  for (final file in goConf.listSync(recursive: true).whereType<File>()) {
    if (!file.path.endsWith('.go')) {
      continue;
    }
    final text = file.readAsStringSync();
    for (final match in tagPattern.allMatches(text)) {
      final tag = match.group(1);
      if (tag == null || tag.isEmpty || tag == '-') {
        continue;
      }
      tags.add(tag);
    }
  }

  return tags.toList()..sort();
}

List<String> _collectJsonShapeIssues(Directory goConf, List<File> dartFiles) {
  final expectedByStruct = _collectGoStructJsonTags(goConf);
  final rawFieldRuleTags = expectedByStruct.remove('RawFieldRule');
  if (rawFieldRuleTags != null) {
    expectedByStruct.update(
      'RouterRule',
      (value) => {...value, ...rawFieldRuleTags},
      ifAbsent: () => rawFieldRuleTags,
    );
  }

  final dartKeysByClass = _collectDartJsonKeysByClass(dartFiles);
  final issues = <String>[];

  for (final entry in expectedByStruct.entries) {
    final goStruct = entry.key;
    final dartClass = _goStructClassAliases[goStruct] ?? goStruct;
    final dartKeys = dartKeysByClass[dartClass];
    if (dartKeys == null) {
      issues.add('$goStruct -> $dartClass missing Dart class');
      continue;
    }

    final expected = entry.value;
    final missing = expected.difference(dartKeys).toList()..sort();
    final extra = dartKeys
        .difference(expected)
        .difference(_allowedClassExtraKeys[dartClass] ?? const {})
        .toList()
      ..sort();
    if (missing.isNotEmpty || extra.isNotEmpty) {
      issues.add(
        '$goStruct -> $dartClass missing=${missing.join(',')} '
        'extra=${extra.join(',')}',
      );
    }
  }

  return issues;
}

Map<String, Set<String>> _collectGoStructJsonTags(Directory goConf) {
  final structs = <String, Set<String>>{};
  final structPattern = RegExp(r'type\s+(\w+)\s+struct\s*\{');
  final tagPattern = RegExp(r'`json:"([^",]+)');

  for (final file in goConf.listSync(recursive: true).whereType<File>()) {
    if (!file.path.endsWith('.go')) {
      continue;
    }
    final text = file.readAsStringSync();
    for (final match in structPattern.allMatches(text)) {
      final name = match.group(1);
      final body = _bracedBody(text, match.end - 1);
      if (name == null || body == null) {
        continue;
      }

      final tags = <String>{};
      for (final tagMatch in tagPattern.allMatches(body)) {
        final tag = tagMatch.group(1);
        if (tag != null && tag.isNotEmpty && tag != '-') {
          tags.add(tag);
        }
      }
      if (tags.isNotEmpty) {
        structs[name] = tags;
      }
    }
  }

  return structs;
}

Set<String> _collectDartJsonKeys(List<File> files) {
  final keys = <String>{};
  final patterns = [
    RegExp(r"map\['([^']+)'\]"),
    RegExp(r"'([^']+)'\s*:"),
    RegExp(r"@JsonKey\(name: '([^']+)'\)"),
  ];

  for (final file in files) {
    final text = file.readAsStringSync();
    for (final pattern in patterns) {
      for (final match in pattern.allMatches(text)) {
        final key = match.group(1);
        if (key != null && key.isNotEmpty) {
          keys.add(key);
        }
      }
    }
  }

  return keys;
}

Map<String, Set<String>> _collectDartJsonKeysByClass(List<File> files) {
  final result = <String, Set<String>>{};
  final classPattern = RegExp(
    r'(?:@freezed\s+)?(?:abstract\s+)?(?:interface\s+)?class\s+(\w+)\b|'
    r'enum\s+(\w+)\b',
  );
  final patterns = [
    RegExp(r"map\['([^']+)'\]"),
    RegExp(r"'([^']+)'\s*:"),
    RegExp(r"@JsonKey\(name: '([^']+)'\)"),
  ];

  for (final file in files) {
    final text = file.readAsStringSync();
    for (final match in classPattern.allMatches(text)) {
      final name = match.group(1) ?? match.group(2);
      final openBrace = text.indexOf('{', match.end);
      final body = openBrace < 0 ? null : _bracedBody(text, openBrace);
      if (name == null || body == null) {
        continue;
      }

      final keys = <String>{};
      for (final pattern in patterns) {
        for (final keyMatch in pattern.allMatches(body)) {
          final key = keyMatch.group(1);
          if (key != null && key.isNotEmpty) {
            keys.add(key);
          }
        }
      }
      result[name] = keys;
    }
  }

  return result;
}

const _creatorLoaderSpecs = [
  _CreatorLoaderSpec(
    label: 'inbound',
    goLoader: 'inboundConfigLoader',
    dartFactory: 'XrayInboundProtocol',
  ),
  _CreatorLoaderSpec(
    label: 'outbound',
    goLoader: 'outboundConfigLoader',
    dartFactory: 'XrayOutboundProtocol',
  ),
  _CreatorLoaderSpec(
    label: 'blackhole response',
    goLoader: 'configLoader',
    dartFactory: 'BlackholeResponse',
  ),
  _CreatorLoaderSpec(
    label: 'tcp header',
    goLoader: 'tcpHeaderLoader',
    dartFactory: 'TCPHeaderConfig',
  ),
  _CreatorLoaderSpec(
    label: 'balancing strategy',
    goLoader: 'strategyConfigLoader',
    dartFactory: 'BalancingStrategyType',
  ),
  _CreatorLoaderSpec(
    label: 'tcp finalmask',
    goLoader: 'tcpmaskLoader',
    dartFunction: '_parseFinalMaskSettings',
    allowDartSuperset: true,
  ),
  _CreatorLoaderSpec(
    label: 'udp finalmask',
    goLoader: 'udpmaskLoader',
    dartFunction: '_parseFinalMaskSettings',
    allowDartSuperset: true,
  ),
];

class _CreatorLoaderSpec {
  const _CreatorLoaderSpec({
    required this.label,
    required this.goLoader,
    this.dartFactory,
    this.dartFunction,
    this.allowDartSuperset = false,
  }) : assert(
          (dartFactory == null) != (dartFunction == null),
          'Provide exactly one Dart ID source.',
        );

  final String label;
  final String goLoader;
  final String? dartFactory;
  final String? dartFunction;
  final bool allowDartSuperset;
}

List<String> _collectLoaderIdIssues(Directory goConf, String dartText) {
  return [
    for (final spec in _creatorLoaderSpecs)
      ..._diffLoaderIds(
        spec.label,
        _collectGoLoaderIds(goConf, spec.goLoader),
        spec.dartFactory == null
            ? _collectDartFunctionSwitchIds(dartText, spec.dartFunction!)
            : _collectDartFactorySwitchIds(dartText, spec.dartFactory!),
        allowDartSuperset: spec.allowDartSuperset,
      ),
  ];
}

Set<String> _collectGoLoaderIds(Directory goConf, String loaderName) {
  final stringConstants = _collectGoStringConstants(goConf);
  for (final file in goConf.listSync(recursive: true).whereType<File>()) {
    if (!file.path.endsWith('.go')) {
      continue;
    }
    final text = file.readAsStringSync();
    final assignment = text.indexOf('$loaderName = NewJSONConfigLoader');
    if (assignment < 0) {
      continue;
    }
    final cacheStart = text.indexOf('ConfigCreatorCache{', assignment);
    if (cacheStart < 0) {
      return const {};
    }
    final openBrace = text.indexOf('{', cacheStart);
    final body = _bracedBody(text, openBrace);
    if (body == null) {
      return const {};
    }

    return RegExp(r'(?:"([^"]+)"|(\w+))\s*:')
        .allMatches(body)
        .map((match) {
          final literal = match.group(1);
          if (literal != null) {
            return literal;
          }
          return stringConstants[match.group(2)];
        })
        .whereType<String>()
        .toSet();
  }
  return const {};
}

Map<String, String> _collectGoStringConstants(Directory goConf) {
  final constants = <String, String>{};
  final constPattern = RegExp(
    r'^\s*(\w+)\s+(?:string\s*)?=\s*"([^"]+)"',
    multiLine: true,
  );

  for (final file in goConf.listSync(recursive: true).whereType<File>()) {
    if (!file.path.endsWith('.go')) {
      continue;
    }
    final text = file.readAsStringSync();
    for (final match in constPattern.allMatches(text)) {
      constants[match.group(1)!] = match.group(2)!;
    }
  }

  return constants;
}

Set<String> _collectDartFactorySwitchIds(String dartText, String typeName) {
  final fromJsonStart = dartText.indexOf('factory $typeName.fromJson');
  if (fromJsonStart < 0) {
    return const {};
  }
  return _collectSwitchCaseIds(dartText, fromJsonStart);
}

Set<String> _collectDartFunctionSwitchIds(
    String dartText, String functionName) {
  final functionStart = dartText.indexOf('$functionName(');
  if (functionStart < 0) {
    return const {};
  }
  return _collectSwitchCaseIds(dartText, functionStart);
}

Set<String> _collectSwitchCaseIds(String dartText, int start) {
  final switchStart = dartText.indexOf('switch', start);
  final openBrace = switchStart < 0 ? -1 : dartText.indexOf('{', switchStart);
  final body = _bracedBody(dartText, openBrace);
  if (body == null) {
    return const {};
  }

  return RegExp("'([^']+)'\\s*=>").allMatches(body).map((match) {
    return match.group(1)!;
  }).toSet();
}

List<String> _diffLoaderIds(
  String name,
  Set<String> goIds,
  Set<String> dartIds, {
  bool allowDartSuperset = false,
}) {
  final missing = goIds.difference(dartIds).toList()..sort();
  final extra = allowDartSuperset
      ? <String>[]
      : (dartIds.difference(goIds).toList()..sort());
  if (missing.isEmpty && extra.isEmpty) {
    return const [];
  }
  return [
    '$name loader IDs missing=${missing.join(',')} extra=${extra.join(',')}',
  ];
}

String? _bracedBody(String text, int openBrace) {
  if (openBrace < 0 || openBrace >= text.length || text[openBrace] != '{') {
    return null;
  }
  var depth = 1;
  var index = openBrace + 1;
  while (index < text.length && depth > 0) {
    final codeUnit = text.codeUnitAt(index);
    if (codeUnit == 0x7b) {
      depth++;
    } else if (codeUnit == 0x7d) {
      depth--;
    }
    index++;
  }
  if (depth != 0) {
    return null;
  }
  return text.substring(openBrace + 1, index - 1);
}
