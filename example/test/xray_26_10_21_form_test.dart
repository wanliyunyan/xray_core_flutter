import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter_example/main.dart';

import 'proxy_chain_form_test.dart' show proxyJson;
import 'xray_26_9_9_form_test.dart' show enable, enter;
import 'xray_26_9_30_form_test.dart' show select;

void main() {
  testWidgets('XMUX mode retains invalid input until corrected',
      (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const XrayConfigBuilderApp());
    await select<TransportKind>(tester, 'XDrive');
    await enter(tester, 'XDrive settings JSON', '{');
    await enable(tester, 'XDrive XMUX 字段配置');
    final toggle = find.widgetWithText(CheckboxListTile, 'XDrive XMUX 字段配置');
    expect(tester.takeException(), isNull);
    expect(tester.widget<CheckboxListTile>(toggle).value, isFalse);
    final jsonField = find.widgetWithText(TextField, 'XDrive settings JSON');
    await tester.scrollUntilVisible(jsonField, -150,
        scrollable: find.byType(Scrollable).first);
    await tester.enterText(jsonField, '{"service":"local"}');
    await tester.pumpAndSettle();
    await enable(tester, 'XDrive XMUX 字段配置');
    await enter(tester, 'XDrive xmux maxConnections', '1- 2');
    expect(find.textContaining('XDrive xmux maxConnections:'), findsOneWidget);
    await tester.scrollUntilVisible(toggle, -150,
        scrollable: find.byType(Scrollable).first);
    await tester.tap(toggle);
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
    expect(tester.widget<CheckboxListTile>(toggle).value, isTrue);
    expect(
        tester
            .widget<TextButton>(find.widgetWithText(TextButton, '复制 JSON'))
            .onPressed,
        isNull);
    await enter(tester, 'XDrive xmux maxConnections', '1-2');
    expect(
        tester
            .widget<TextButton>(find.widgetWithText(TextButton, '复制 JSON'))
            .onPressed,
        isNotNull);
  });

  testWidgets('XMUX mode switching preserves existing JSON and field edits',
      (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const XrayConfigBuilderApp());
    await select<TransportKind>(tester, 'XDrive');
    await enter(tester, 'XDrive settings JSON',
        '{"service":"local","xmux":{"maxConnections":"2-4","hKeepAlivePeriod":-1}}');
    await enable(tester, 'XDrive XMUX 字段配置');
    Map xmux() =>
        ((proxyJson(tester)['streamSettings'] as Map)['xdriveSettings']
            as Map)['xmux'] as Map;
    expect(xmux(), {'maxConnections': '2-4', 'hKeepAlivePeriod': -1});
    await enter(tester, 'XDrive xmux maxConnections', '3-5');
    final toggle = find.widgetWithText(CheckboxListTile, 'XDrive XMUX 字段配置');
    await tester.scrollUntilVisible(toggle, -150,
        scrollable: find.byType(Scrollable).first);
    await tester.tap(toggle);
    await tester.pumpAndSettle();
    expect(xmux(), {'maxConnections': '3-5', 'hKeepAlivePeriod': -1});
  });

  testWidgets('XDrive h3 and XMUX fields preserve template JSON',
      (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const XrayConfigBuilderApp());
    await select<TransportKind>(tester, 'XDrive');
    await enter(tester, 'XDrive settings JSON',
        '{"service":"template","template":{"put":{"hrefPath":"href","hrefMethod":"PUT"}}}');
    await enable(tester, 'XDrive HTTP/3');
    await enable(tester, 'XDrive XMUX 字段配置');
    await enter(tester, 'XDrive xmux maxConnections', 'invalid');
    expect(tester.takeException(), isNull);
    expect(find.textContaining('XDrive xmux maxConnections:'), findsOneWidget);
    expect(
        tester
            .widget<TextButton>(find.widgetWithText(TextButton, '复制 JSON'))
            .onPressed,
        isNull);
    await enter(tester, 'XDrive xmux maxConnections', '1-2');
    await enter(tester, 'XDrive xmux hKeepAlivePeriod', 'invalid');
    expect(tester.takeException(), isNull);
    expect(
        find.textContaining('XDrive xmux hKeepAlivePeriod:'), findsOneWidget);
    expect(
        tester
            .widget<TextButton>(find.widgetWithText(TextButton, '复制 JSON'))
            .onPressed,
        isNull);
    await enter(tester, 'XDrive xmux hKeepAlivePeriod', '-1');
    final stream = proxyJson(tester)['streamSettings'] as Map;
    expect(stream['security'], 'tls');
    expect((stream['tlsSettings'] as Map)['alpn'], ['h3']);
    expect((stream['xdriveSettings'] as Map)['xmux'],
        {'maxConnections': '1-2', 'hKeepAlivePeriod': -1});
    expect((stream['xdriveSettings'] as Map)['template'], {
      'put': {'hrefPath': 'href', 'hrefMethod': 'PUT'}
    });
  });

  for (final network in ['tcp', 'udp']) {
    testWidgets('$network filter fields export source rules', (tester) async {
      await tester.binding.setSurfaceSize(const Size(1400, 1200));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      await tester.pumpWidget(const XrayConfigBuilderApp());
      await select<InboundKind>(tester, 'VLESS');
      for (final title in [
        'streamSettings finalmask',
        'finalmask 分项配置',
        'finalmask $network masks',
        '$network masks 字段配置',
        '添加 filter mask'
      ]) {
        await enable(tester, title);
      }
      await enter(
          tester, '$network filter blockedSourceIPs', '192.0.2.0/24,!geoip:cn');
      await enter(tester, '$network filter allowedSourceIPs', '2001:db8::/32');
      final stream = proxyJson(tester)['streamSettings'] as Map;
      expect(((stream['finalmask'] as Map)[network] as List).single, {
        'type': 'filter',
        'settings': {
          'blockedSourceIPs': ['192.0.2.0/24', '!geoip:cn'],
          'allowedSourceIPs': ['2001:db8::/32']
        }
      });
      final json = jsonDecode(
              tester.widget<SelectableText>(find.byType(SelectableText)).data!)
          as Map;
      final inbound = (json['inbounds'] as List).single as Map;
      expect(
          (inbound['streamSettings'] as Map)['finalmask'], stream['finalmask']);
    });
  }
}
