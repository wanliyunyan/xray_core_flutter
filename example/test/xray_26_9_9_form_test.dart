import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter_example/main.dart';

Future<void> reveal(WidgetTester tester, Finder finder) async {
  await tester.scrollUntilVisible(
    finder,
    150,
    scrollable: find.byType(Scrollable).first,
    maxScrolls: 200,
  );
}

Future<void> enable(WidgetTester tester, String title) async {
  final tile = find.widgetWithText(CheckboxListTile, title);
  await reveal(tester, tile);
  if (tester.widget<CheckboxListTile>(tile).value != true) {
    await tester.tap(tile);
    await tester.pumpAndSettle();
  }
}

Future<void> enter(WidgetTester tester, String label, String value) async {
  final field = find.widgetWithText(TextField, label);
  await reveal(tester, field);
  await tester.enterText(field, value);
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('exports new QUIC flags and custom blackhole response',
      (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const XrayConfigBuilderApp());

    for (final title in [
      'streamSettings finalmask',
      'finalmask 分项配置',
      'finalmask quicParams',
      'quicParams 字段配置',
    ]) {
      await enable(tester, title);
    }
    for (final flag in [
      'brutalDisableLossCompensation',
      'disableChromeParrot',
      'disableGSO',
      'disableStatelessReset',
    ]) {
      await enable(tester, 'quic $flag');
      expect(find.textContaining('"$flag": true'), findsOneWidget);
    }

    await enable(tester, '添加 block 出站');
    final response = find.widgetWithText(
      DropdownButtonFormField<String>,
      'block response type',
    );
    await reveal(tester, response);
    await tester.tap(response);
    await tester.pumpAndSettle();
    await tester.tap(find.text('custom').last);
    await tester.pumpAndSettle();
    await enter(tester, 'customResponseData（Base64）', 'b2s=');
    expect(find.textContaining('"customResponseData": "b2s="'), findsOneWidget);
    expect(find.text('添加 reverse'), findsNothing);
  });

  testWidgets('exports localOS routing from the form', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const XrayConfigBuilderApp());
    await enable(tester, '添加自定义 routing rule');
    await enter(tester, 'localOS 逗号分隔（android, linux 等）', 'android,linux');
    expect(
        find.textContaining(
            '"localOS": [\n          "android",\n          "linux"'),
        findsOneWidget);
  });
}
