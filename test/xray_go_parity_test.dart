import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import '../tool/check_xray_conf_parity.dart' as parity;

List<File> modelFiles() => Directory('lib/src/xray')
    .listSync(recursive: true)
    .whereType<File>()
    .where(
      (file) =>
          file.path.endsWith('.dart') && !file.path.endsWith('.freezed.dart'),
    )
    .toList();

void main() {
  final goConf = Directory('../Xray-core/infra/conf');

  test(
    'generated field maps use JSON aliases and require live model sources',
    () {
      final temp = Directory.systemTemp.createTempSync(
        'xray-generated-parity-',
      );
      addTearDown(() => temp.deleteSync(recursive: true));
      final model = File('${temp.path}/version_config.dart')
        ..writeAsStringSync(r'''
class VersionConfig {
  factory VersionConfig.fromJson(Object? json) => _$VersionConfigFromJson(json);
}
''');
      final generated = File('${temp.path}/apps.g.dart')
        ..writeAsStringSync(r'''
const _$VersionConfigFieldMap = <String, String>{
  'minVersion': 'min',
  'maxVersion': 'max',
};
''');
      expect(parity.collectDartJsonKeys([model, generated]), {'min', 'max'});
      expect(
        parity.collectDartJsonKeysByClass([model, generated])['VersionConfig'],
        {'min', 'max'},
      );
      expect(parity.collectGeneratedJsonKeys([generated]), isEmpty);
      expect(() => parity.collectGeneratedJsonKeys([model]), throwsStateError);
    },
  );

  test(
    'JSON key detection ignores switch labels and colon string literals',
    () {
      final temp = Directory.systemTemp.createTempSync('xray-parity-keys-');
      addTearDown(() => temp.deleteSync(recursive: true));
      final source = File('${temp.path}/sample.dart')
        ..writeAsStringSync('''
class Sample {
  Map toJson() => {'actual': 1, 'second': 2};
  void check(String value) {
    switch(value) { case 'notAKey': break; }
    value.split('/');
    value.contains(':');
  }
}
''');
      expect(parity.collectDartJsonKeys([source]), {'actual', 'second'});
      expect(parity.collectDartJsonKeysByClass([source])['Sample'], {
        'actual',
        'second',
      });
    },
  );

  test('dart source covers xray JSON tags, shapes and creator IDs', () {
    if (!goConf.existsSync()) {
      markTestSkipped('Xray-core infra/conf directory is not available.');
      return;
    }
    final files = modelFiles();
    final tags = parity.collectGoJsonTags(goConf);
    final text = files.map((f) => f.readAsStringSync()).join('\n');
    expect(tags.keys.where((tag) => !text.contains(tag)), isEmpty);
    expect(
      parity
          .collectDartJsonKeys(files)
          .where(
            (key) =>
                !tags.containsKey(key) &&
                !parity.allowedUntaggedConfigKeys.contains(key),
          ),
      isEmpty,
    );
    expect(parity.collectJsonShapeIssues(goConf, files), isEmpty);
    expect(parity.collectLoaderIdIssues(goConf, text), isEmpty);
  });

  test('parity detects a missing PortMapping class', () {
    if (!goConf.existsSync()) {
      markTestSkipped('Xray-core checkout unavailable.');
      return;
    }
    final files = modelFiles()
        .where((f) => !f.path.endsWith('/port_mapping.dart'))
        .toList();
    expect(
      parity.collectJsonShapeIssues(goConf, files),
      contains('PortMapping -> PortMapping missing Dart class'),
    );
  });

  test('parity detects missing and unexpected PortMapping fields', () {
    if (!goConf.existsSync()) {
      markTestSkipped('Xray-core checkout unavailable.');
      return;
    }
    final temp = Directory.systemTemp.createTempSync('xray-parity-');
    addTearDown(() => temp.deleteSync(recursive: true));
    final fake = File('${temp.path}/port_mapping.dart')
      ..writeAsStringSync(
        "class PortMapping { Map toJson() => {'enabled': true, 'timeout': 1, 'typo': 2}; }",
      );
    final files =
        modelFiles()
            .where((f) => !f.path.endsWith('/port_mapping.dart'))
            .toList()
          ..add(fake);
    expect(
      parity.collectJsonShapeIssues(goConf, files),
      contains('PortMapping -> PortMapping missing=lifetime extra=typo'),
    );
  });

  test('missing external Realm source cannot silently pass parity', () {
    final temp = Directory.systemTemp.createTempSync('xray-parity-missing-');
    addTearDown(() => temp.deleteSync(recursive: true));
    final conf = Directory('${temp.path}/infra/conf')
      ..createSync(recursive: true);
    expect(
      () => parity.collectPortMappingTags(conf),
      throwsA(isA<FileSystemException>()),
    );
  });
}
