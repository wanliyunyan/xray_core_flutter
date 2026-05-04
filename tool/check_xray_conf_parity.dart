import 'dart:io';

void main(List<String> args) {
  final goConfPath = args.isEmpty
      ? '/Volumes/ext/xray/Xray-core/infra/conf'
      : args.first;
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
  final dartText = dartRoot
      .listSync(recursive: true)
      .whereType<File>()
      .where((file) => file.path.endsWith('.dart'))
      .where((file) => !file.path.endsWith('.freezed.dart'))
      .map((file) => file.readAsStringSync())
      .join('\n');

  final missing = <String, List<String>>{};
  for (final entry in goTags.entries) {
    final tag = entry.key;
    if (!dartText.contains(tag)) {
      missing[tag] = entry.value;
    }
  }

  stdout.writeln('Go JSON tags: ${goTags.length}');
  stdout.writeln('Missing in Dart source: ${missing.length}');

  if (missing.isNotEmpty) {
    for (final entry in missing.entries) {
      stdout.writeln('- ${entry.key}: ${entry.value.join(', ')}');
    }
    exitCode = 1;
  }
}

Map<String, List<String>> collectGoJsonTags(Directory goConf) {
  final tags = <String, List<String>>{};
  final tagPattern = RegExp(r'`json:"([^",]+)');

  for (final file in goConf.listSync().whereType<File>()) {
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
