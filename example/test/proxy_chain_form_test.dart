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

void main() {
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
