import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('dart source covers xray infra/conf json tags', () {
    final goConf = Directory('/Volumes/ext/xray/Xray-core/infra/conf');
    if (!goConf.existsSync()) {
      markTestSkipped('Xray-core infra/conf directory is not available.');
      return;
    }

    final goTags = _collectGoJsonTags(goConf);
    final dartText = Directory('lib/src/xray')
        .listSync(recursive: true)
        .whereType<File>()
        .where((file) => file.path.endsWith('.dart'))
        .where((file) => !file.path.endsWith('.freezed.dart'))
        .map((file) => file.readAsStringSync())
        .join('\n');

    final missing = goTags.where((tag) => !dartText.contains(tag)).toList();

    expect(
      missing,
      isEmpty,
      reason:
          'When Xray-core infra/conf adds or renames JSON fields, update the '
          'Dart models before releasing the helper SDK.',
    );
  });
}

List<String> _collectGoJsonTags(Directory goConf) {
  final tags = <String>{};
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
      tags.add(tag);
    }
  }

  return tags.toList()..sort();
}
