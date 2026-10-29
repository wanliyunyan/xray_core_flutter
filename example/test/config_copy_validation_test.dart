import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter_example/main.dart';

import 'xray_26_9_9_form_test.dart' show enable, enter;
import 'xray_26_9_30_form_test.dart' show select;

void expectCopyEnabled(WidgetTester tester, bool enabled) {
  final actions = [
    tester
        .widget<TextButton>(find.widgetWithText(TextButton, '复制 JSON'))
        .onPressed,
    tester
        .widget<FilledButton>(find.widgetWithText(FilledButton, '复制'))
        .onPressed,
  ];
  for (final action in actions) {
    expect(action, enabled ? isNotNull : isNull);
  }
}

void main() {
  testWidgets('XMUX validation errors block copying but retain JSON preview',
      (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const XrayConfigBuilderApp());
    await select<TransportKind>(tester, 'XDrive');
    await enter(tester, 'XDrive settings JSON',
        '{"service":"local","xmux":{"maxConnections":2,"maxConcurrency":8}}');
    expect(find.textContaining('maxConnections cannot be specified'),
        findsOneWidget);
    expect(find.byType(SelectableText), findsOneWidget);
    expectCopyEnabled(tester, false);
    await enter(tester, 'XDrive settings JSON',
        '{"service":"local","xmux":{"maxConnections":2}}');
    expectCopyEnabled(tester, true);
  });

  testWidgets(
      'filter validation errors block copying and recover after correction',
      (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const XrayConfigBuilderApp());
    for (final title in [
      'streamSettings finalmask',
      'finalmask 分项配置',
      'finalmask tcp masks',
      'tcp masks 字段配置',
      '添加 filter mask'
    ]) {
      await enable(tester, title);
    }
    await enter(tester, 'tcp filter allowedSourceIPs', '192.0.2.0/33');
    expectCopyEnabled(tester, false);
    await enter(tester, 'tcp filter allowedSourceIPs', '192.0.2.0/24');
    expectCopyEnabled(tester, true);
  });
}
