import 'dart:io';

void main(List<String> args) {
  final goConfPath =
      args.isEmpty ? '/Volumes/ext/xray/Xray-core/infra/conf' : args.first;
  final goConf = Directory(goConfPath);
  final dartRoot = Directory('lib/src/xray');

  if (!goConf.existsSync()) {
    stderr.writeln('Go conf directory not found: ${goConf.path}');
    exitCode = 2;
    return;
  }
  if (!dartRoot.existsSync()) {
    stderr.writeln('Dart xray model directory not found: ${dartRoot.path}');
    exitCode = 2;
    return;
  }

  final goTags = collectGoJsonTags(goConf);
  final dartFiles = dartRoot
      .listSync(recursive: true)
      .whereType<File>()
      .where((file) => file.path.endsWith('.dart'))
      .where((file) => !file.path.endsWith('.freezed.dart'))
      .toList();
  final dartText = dartFiles.map((file) => file.readAsStringSync()).join('\n');
  final dartKeys = collectDartJsonKeys(dartFiles);
  final shapeIssues = collectJsonShapeIssues(goConf, dartFiles);
  final loaderIssues = collectLoaderIdIssues(goConf, dartText);

  final missing = <String, List<String>>{};
  for (final entry in goTags.entries) {
    final tag = entry.key;
    if (!dartText.contains(tag)) {
      missing[tag] = entry.value;
    }
  }

  stdout.writeln('Go JSON tags: ${goTags.length}');
  stdout.writeln('Missing in Dart source: ${missing.length}');
  stdout.writeln('Dart JSON keys: ${dartKeys.length}');

  final extra = dartKeys
      .where((key) => !goTags.containsKey(key))
      .where((key) => !allowedUntaggedConfigKeys.contains(key))
      .toList();
  stdout.writeln('Unexpected Dart JSON keys: ${extra.length}');
  stdout.writeln('Struct/class JSON shape issues: ${shapeIssues.length}');
  stdout.writeln('Config creator ID issues: ${loaderIssues.length}');

  if (missing.isNotEmpty) {
    for (final entry in missing.entries) {
      stdout.writeln('- ${entry.key}: ${entry.value.join(', ')}');
    }
    exitCode = 1;
  }
  if (extra.isNotEmpty) {
    for (final key in extra) {
      stdout.writeln('- extra Dart key: $key');
    }
    exitCode = 1;
  }
  if (shapeIssues.isNotEmpty) {
    for (final issue in shapeIssues) {
      stdout.writeln('- $issue');
    }
    exitCode = 1;
  }
  if (loaderIssues.isNotEmpty) {
    for (final issue in loaderIssues) {
      stdout.writeln('- $issue');
    }
    exitCode = 1;
  }
}

const allowedUntaggedConfigKeys = {
  // infra/conf/transport_internet.go LimitFallback has exported fields without
  // json tags; encoding/json still accepts these key names case-insensitively.
  'afterBytes',
  'bytesPerSec',
  'burstBytesPerSec',
  // infra/conf/router_strategy.go unmarshals app/router StrategyWeight, whose
  // JSON field names live on the generated proto struct outside infra/conf.
  'regexp',
  'match',
};

const goStructClassAliases = {
  'Config': 'XrayConfig',
  'User': 'XrayUser',
  'healthCheckSettings': 'HealthCheckSettings',
  'strategyLeastLoadConfig': 'StrategyLeastLoadConfig',
};

const allowedClassExtraKeys = {
  // TCP header config includes the loader discriminator alongside the concrete
  // Authenticator settings.
  'Authenticator': {'type'},
};

Map<String, List<String>> collectGoJsonTags(Directory goConf) {
  final tags = <String, List<String>>{};
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
      tags.putIfAbsent(tag, () => <String>[]).add(file.uri.pathSegments.last);
    }
  }

  return tags;
}

List<String> collectJsonShapeIssues(Directory goConf, List<File> dartFiles) {
  final expectedByStruct = collectGoStructJsonTags(goConf);
  final rawFieldRuleTags = expectedByStruct.remove('RawFieldRule');
  if (rawFieldRuleTags != null) {
    expectedByStruct.update(
      'RouterRule',
      (value) => {...value, ...rawFieldRuleTags},
      ifAbsent: () => rawFieldRuleTags,
    );
  }

  final dartKeysByClass = collectDartJsonKeysByClass(dartFiles);
  final issues = <String>[];

  for (final entry in expectedByStruct.entries) {
    final goStruct = entry.key;
    final dartClass = goStructClassAliases[goStruct] ?? goStruct;
    final dartKeys = dartKeysByClass[dartClass];
    if (dartKeys == null) {
      issues.add('$goStruct -> $dartClass missing Dart class');
      continue;
    }

    final expected = entry.value;
    final missing = expected.difference(dartKeys).toList()..sort();
    final extra = dartKeys
        .difference(expected)
        .difference(allowedClassExtraKeys[dartClass] ?? const {})
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

Map<String, Set<String>> collectGoStructJsonTags(Directory goConf) {
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

Set<String> collectDartJsonKeys(List<File> files) {
  final keys = <String>{};
  final mapAccessPattern = RegExp(r"map\['([^']+)'\]");
  final outputKeyPattern = RegExp(r"'([^']+)'\s*:");
  final jsonKeyPattern = RegExp(r"@JsonKey\(name: '([^']+)'\)");

  for (final file in files) {
    final text = file.readAsStringSync();
    for (final pattern in [
      mapAccessPattern,
      outputKeyPattern,
      jsonKeyPattern
    ]) {
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

Map<String, Set<String>> collectDartJsonKeysByClass(List<File> files) {
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

const creatorLoaderSpecs = [
  CreatorLoaderSpec(
    label: 'inbound',
    goLoader: 'inboundConfigLoader',
    dartFactory: 'XrayInboundProtocol',
  ),
  CreatorLoaderSpec(
    label: 'outbound',
    goLoader: 'outboundConfigLoader',
    dartFactory: 'XrayOutboundProtocol',
  ),
  CreatorLoaderSpec(
    label: 'blackhole response',
    goLoader: 'configLoader',
    dartFactory: 'BlackholeResponse',
  ),
  CreatorLoaderSpec(
    label: 'tcp header',
    goLoader: 'tcpHeaderLoader',
    dartFactory: 'TCPHeaderConfig',
  ),
  CreatorLoaderSpec(
    label: 'balancing strategy',
    goLoader: 'strategyConfigLoader',
    dartFactory: 'BalancingStrategyType',
  ),
  CreatorLoaderSpec(
    label: 'tcp finalmask',
    goLoader: 'tcpmaskLoader',
    dartFunction: '_parseFinalMaskSettings',
    allowDartSuperset: true,
  ),
  CreatorLoaderSpec(
    label: 'udp finalmask',
    goLoader: 'udpmaskLoader',
    dartFunction: '_parseFinalMaskSettings',
    allowDartSuperset: true,
  ),
];

class CreatorLoaderSpec {
  const CreatorLoaderSpec({
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

List<String> collectLoaderIdIssues(Directory goConf, String dartText) {
  return [
    for (final spec in creatorLoaderSpecs)
      ...diffLoaderIds(
        spec.label,
        collectGoLoaderIds(goConf, spec.goLoader),
        spec.dartFactory == null
            ? collectDartFunctionSwitchIds(dartText, spec.dartFunction!)
            : collectDartFactorySwitchIds(dartText, spec.dartFactory!),
        allowDartSuperset: spec.allowDartSuperset,
      ),
  ];
}

Set<String> collectGoLoaderIds(Directory goConf, String loaderName) {
  final stringConstants = collectGoStringConstants(goConf);
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

Map<String, String> collectGoStringConstants(Directory goConf) {
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

Set<String> collectDartFactorySwitchIds(String dartText, String typeName) {
  final fromJsonStart = dartText.indexOf('factory $typeName.fromJson');
  if (fromJsonStart < 0) {
    return const {};
  }
  return collectSwitchCaseIds(dartText, fromJsonStart);
}

Set<String> collectDartFunctionSwitchIds(String dartText, String functionName) {
  final functionStart = dartText.indexOf('$functionName(');
  if (functionStart < 0) {
    return const {};
  }
  return collectSwitchCaseIds(dartText, functionStart);
}

Set<String> collectSwitchCaseIds(String dartText, int start) {
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

List<String> diffLoaderIds(
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
