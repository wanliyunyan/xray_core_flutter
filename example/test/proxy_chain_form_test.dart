import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter_example/main.dart';

import 'xray_26_9_9_form_test.dart' show enable, enter;

Map<String, dynamic> proxyJson(WidgetTester tester) {
  final text = tester.widget<SelectableText>(find.byType(SelectableText)).data!;
  final config = jsonDecode(text) as Map<String, dynamic>;
  return (config['outbounds'] as List).first as Map<String, dynamic>;
}

Map<String, dynamic> outboundJson(WidgetTester tester, String tag) {
  final text = tester.widget<SelectableText>(find.byType(SelectableText)).data!;
  final config = jsonDecode(text) as Map<String, dynamic>;
  return (config['outbounds'] as List)
      .cast<Map<String, dynamic>>()
      .singleWhere((outbound) => outbound['tag'] == tag);
}

Future<void> selectString(
  WidgetTester tester,
  String label,
  String value,
) async {
  final dropdown = find.widgetWithText(DropdownButtonFormField<String>, label);
  await tester.scrollUntilVisible(
    dropdown,
    150,
    scrollable: find.byType(Scrollable).first,
    maxScrolls: 200,
  );
  await tester.tap(dropdown);
  await tester.pumpAndSettle();
  await tester.tap(find.text(value).last);
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('mux exports the effective Core concurrency default',
      (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const XrayConfigBuilderApp());
    await enable(tester, '添加 mux');

    Map mux() => proxyJson(tester)['mux'] as Map;
    expect(mux()['concurrency'], 128);

    await enter(tester, 'mux concurrency', '');
    expect(mux()['concurrency'], 128);
  });

  testWidgets('mux exports every Core UDP 443 policy', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const XrayConfigBuilderApp());
    await enable(tester, '添加 mux');

    expect(
      (proxyJson(tester)['mux'] as Map)['xudpProxyUDP443'],
      'reject',
    );
    for (final policy in ['allow', 'skip', 'reject']) {
      await selectString(tester, 'mux XUDP UDP/443 policy', policy);
      expect(
        (proxyJson(tester)['mux'] as Map)['xudpProxyUDP443'],
        policy,
      );
    }
  });

  testWidgets('Freedom finalRules editor exports rules and rejects bad JSON',
      (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const XrayConfigBuilderApp());
    await enable(tester, '添加 direct 出站');

    expect(
      outboundJson(tester, 'direct')['settings'],
      isNot(contains('finalRules')),
    );

    const rules = <Map<String, dynamic>>[
      {
        'action': 'block',
        'network': ['tcp', 'udp'],
        'port': 443,
        'ip': ['geoip:private'],
        'delay': '30-60',
        'logLevel': 'warning',
      },
    ];
    await enter(tester, 'direct finalRules JSON 数组', jsonEncode(rules));

    expect(
      (outboundJson(tester, 'direct')['settings'] as Map)['finalRules'],
      rules,
    );

    await enter(tester, 'direct finalRules JSON 数组', '[');
    expect(
      find.textContaining('direct finalRules: JSON 格式或结构错误'),
      findsOneWidget,
    );
    expect(
      tester
          .widget<TextButton>(find.widgetWithText(TextButton, '复制 JSON'))
          .onPressed,
      isNull,
    );

    await enter(tester, 'direct finalRules JSON 数组', '[{"action":1}]');
    expect(
      find.textContaining('direct finalRules: JSON 字段类型错误'),
      findsOneWidget,
    );
    expect(
      tester
          .widget<TextButton>(find.widgetWithText(TextButton, '复制 JSON'))
          .onPressed,
      isNull,
    );
  });

  for (final label in ['HTTP', 'SOCKS', 'WireGuard']) {
    testWidgets('$label retains socket options when switching protocols',
        (tester) async {
      await tester.binding.setSurfaceSize(const Size(1400, 1200));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      await tester.pumpWidget(const XrayConfigBuilderApp());
      await enable(tester, '添加 sockopt');
      await enter(tester, 'sockopt dialerProxy', 'direct');
      final previousSockopt =
          (proxyJson(tester)['streamSettings'] as Map)['sockopt'];
      expect(previousSockopt, containsPair('dialerProxy', 'direct'));

      final dropdown = find.byType(DropdownButtonFormField<ProxyProtocol>);
      await tester.scrollUntilVisible(
        dropdown,
        -500,
        scrollable: find.byType(Scrollable).first,
        maxScrolls: 200,
      );
      await tester.tap(dropdown);
      await tester.pumpAndSettle();
      await tester.tap(find.text(label).last);
      await tester.pumpAndSettle();

      final proxy = proxyJson(tester);
      expect(proxy['protocol'], label.toLowerCase());
      expect(proxy['streamSettings'], {'sockopt': previousSockopt});
      expect(proxy, isNot(contains('proxySettings')));
    });
  }
}
