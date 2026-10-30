import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter_example/main.dart';

import 'proxy_chain_form_test.dart' show proxyJson;
import 'xray_26_9_9_form_test.dart' show enable, enter;
import 'xray_26_9_30_form_test.dart' show select;

void main() {
  testWidgets('Geodata scheduling errors disable copying and recover',
      (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const XrayConfigBuilderApp());
    await enable(tester, '添加 geodata');
    await enter(tester, 'geodata cron', '@every 59s');
    TextButton copy() =>
        tester.widget<TextButton>(find.widgetWithText(TextButton, '复制 JSON'));
    expect(copy().onPressed, isNull);
    await enter(tester, 'geodata cron', '@every 1m');
    expect(copy().onPressed, isNotNull);
    await enter(tester, 'geodata asset file', 'geoip.json');
    expect(copy().onPressed, isNull);
    await enter(tester, 'geodata asset file', 'geoip.DAT');
    expect(copy().onPressed, isNotNull);
  });

  testWidgets('S3 JSON survives XMUX edits and recovers from invalid input',
      (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const XrayConfigBuilderApp());
    await select<TransportKind>(tester, 'XDrive');
    final settings =
        jsonDecode(File('configs/xdrive_s3_settings.json').readAsStringSync())
            as Map;
    await enter(tester, 'XDrive settings JSON', jsonEncode(settings));
    await enable(tester, 'XDrive XMUX 字段配置');
    await enter(tester, 'XDrive xmux maxConnections', '1-2');
    Map drive() =>
        (proxyJson(tester)['streamSettings'] as Map)['xdriveSettings'] as Map;
    expect(drive()['s3'], settings['s3']);
    expect(drive()['xmux'], {'maxConnections': '1-2'});
    Future<void> editDrive() async {
      final field = find.widgetWithText(TextField, 'XDrive settings JSON');
      await tester.scrollUntilVisible(field, -150,
          scrollable: find.byType(Scrollable).first, maxScrolls: 200);
      await tester.enterText(field, jsonEncode(settings));
      await tester.pumpAndSettle();
    }

    settings['s3']['pathStyle'] = 'wrong';
    await editDrive();
    TextButton copy() =>
        tester.widget<TextButton>(find.widgetWithText(TextButton, '复制 JSON'));
    expect(tester.takeException(), isNull);
    expect(copy().onPressed, isNull);
    settings['s3']['pathStyle'] = false;
    await editDrive();
    expect(copy().onPressed, isNotNull);
    expect(drive()['s3'], settings['s3']);
    settings['s3']['endpoint'] = 'https://user@s3.example.com';
    await editDrive();
    expect(copy().onPressed, isNull);
    settings['s3']['endpoint'] = 'https://s3.example.com';
    await editDrive();
    expect(copy().onPressed, isNotNull);
  });
}
