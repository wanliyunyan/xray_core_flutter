import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter_example/main.dart';

import 'proxy_chain_form_test.dart' show proxyJson;
import 'xray_26_9_9_form_test.dart' show enable, enter, reveal;

Future<void> select<T>(WidgetTester tester, String label) async {
  final dropdown = find.byType(DropdownButtonFormField<T>);
  await reveal(tester, dropdown);
  await tester.pumpAndSettle();
  await tester.tap(dropdown);
  await tester.pumpAndSettle();
  await tester.tap(find.text(label).last);
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('XICMP remains the outermost mask with later form selections',
      (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const XrayConfigBuilderApp());
    for (final title in [
      'streamSettings finalmask',
      'finalmask 分项配置',
      'finalmask udp masks',
      'udp masks 字段配置',
      '添加 xicmp mask',
      '添加 mkcp-legacy original mask'
    ]) {
      await enable(tester, title);
    }
    final masks = ((proxyJson(tester)['streamSettings'] as Map)['finalmask']
        as Map)['udp'] as List;
    expect(
        masks.map((mask) => (mask as Map)['type']), ['mkcp-legacy', 'xicmp']);
    expect(find.textContaining('must be the outermost UDP mask'), findsNothing);
  });

  testWidgets('UDP mask controls exclude TCP-only fragment', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const XrayConfigBuilderApp());
    for (final title in [
      'streamSettings finalmask',
      'finalmask 分项配置',
      'finalmask udp masks',
      'udp masks 字段配置'
    ]) {
      await enable(tester, title);
    }
    await reveal(
        tester, find.widgetWithText(CheckboxListTile, '添加 noise mask'));
    await tester.pumpAndSettle();
    expect(find.widgetWithText(CheckboxListTile, '添加 fragment mask'),
        findsNothing);
    await enable(tester, '添加 noise mask');
    final masks = ((proxyJson(tester)['streamSettings'] as Map)['finalmask']
        as Map)['udp'] as List;
    expect(masks.map((mask) => (mask as Map)['type']), ['noise']);
  });

  void expectInvalidJson(WidgetTester tester, String label) {
    expect(tester.takeException(), isNull);
    expect(find.textContaining('$label:'), findsOneWidget);
    expect(
        tester
            .widget<TextButton>(find.widgetWithText(TextButton, '复制 JSON'))
            .onPressed,
        isNull);
    expect(
        tester
            .widget<FilledButton>(find.widgetWithText(FilledButton, '复制'))
            .onPressed,
        isNull);
  }

  testWidgets('XDrive JSON errors remain editable and recover after correction',
      (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const XrayConfigBuilderApp());
    await select<TransportKind>(tester, 'XDrive');
    for (final input in [
      '{',
      '[]',
      '{"service":"local","segmentBytes":"bad"}'
    ]) {
      await enter(tester, 'XDrive settings JSON', input);
      expectInvalidJson(tester, 'XDrive settings JSON');
    }
    await enter(tester, 'XDrive settings JSON',
        '{"service":"local","segmentBytes":4096}');
    expect((proxyJson(tester)['streamSettings'] as Map)['xdriveSettings'],
        {'service': 'local', 'segmentBytes': 4096});
    expect(
        tester
            .widget<TextButton>(find.widgetWithText(TextButton, '复制 JSON'))
            .onPressed,
        isNotNull);
  });

  testWidgets('MASQUE JSON type errors show the affected field',
      (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const XrayConfigBuilderApp());
    await select<InboundKind>(tester, 'MASQUE');
    await enter(tester, 'MASQUE 入站 settings JSON', '{"users":{}}');
    expectInvalidJson(tester, 'MASQUE 入站 settings JSON');
    await enter(
        tester, 'MASQUE 入站 settings JSON', '{"address":["10.0.0.1/24"]}');
    await select<ProxyProtocol>(tester, 'MASQUE');
    await enter(tester, 'MASQUE transport JSON', '{"host":123}');
    expectInvalidJson(tester, 'MASQUE transport JSON');
  });

  testWidgets('MASQUE exports typed settings, forced transport and TLS',
      (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const XrayConfigBuilderApp());
    await select<ProxyProtocol>(tester, 'MASQUE');
    final proxy = proxyJson(tester);
    expect(proxy['protocol'], 'masque');
    expect(proxy['settings'], containsPair('remoteDNS', ['1.1.1.1']));
    final stream = proxy['streamSettings'] as Map;
    expect(stream['network'], 'masque');
    expect(stream['security'], 'tls');
    expect(stream['masqueSettings'], {'user': 'user', 'pass': 'change-me'});
  });

  testWidgets('XDrive and structured XDNS export from form', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const XrayConfigBuilderApp());
    await select<TransportKind>(tester, 'XDrive');
    final stream = proxyJson(tester)['streamSettings'] as Map;
    expect(stream['network'], 'xdrive');
    expect(stream['security'], 'tls');
    expect(stream, isNot(contains('realitySettings')));
    expect(stream['xdriveSettings'],
        {'service': 'local', 'remoteFolder': '/tmp/xdrive'});
    for (final title in [
      'streamSettings finalmask',
      'finalmask 分项配置',
      'finalmask udp masks',
      'udp masks 字段配置'
    ]) {
      await enable(tester, title);
    }
    await enable(tester, '添加 xdns mask');
    await enter(tester, 'xdns domains JSON 数组', '[{"lenLimit":"bad"}]');
    expectInvalidJson(tester, 'xdns domains JSON 数组');
    await enter(tester, 'xdns domains JSON 数组',
        '[{"name":"tunnel.example.com","types":[16]}]');
    await enter(
        tester, 'xdns resolvers JSON 数组', '[{"type":"udp","settings":[]}]');
    expectInvalidJson(tester, 'xdns resolvers JSON 数组');
    await enter(tester, 'xdns resolvers JSON 数组',
        '[{"type":"udp","settings":{"addr":"1.1.1.1:53"}}]');
    final updated = proxyJson(tester)['streamSettings'] as Map;
    final mask = ((updated['finalmask'] as Map)['udp'] as List).single as Map;
    expect((mask['settings'] as Map)['domains'], [
      {
        'name': 'tunnel.example.com',
        'types': [16]
      }
    ]);
    expect((mask['settings'] as Map)['resolvers'], [
      {
        'type': 'udp',
        'settings': {'addr': '1.1.1.1:53'}
      }
    ]);
  });

  testWidgets('MASQUE outbound preserves a VLESS inbound transport',
      (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const XrayConfigBuilderApp());
    await select<InboundKind>(tester, 'VLESS');
    await select<ProxyProtocol>(tester, 'MASQUE');
    final json = jsonDecode(
            tester.widget<SelectableText>(find.byType(SelectableText)).data!)
        as Map;
    final inbound = (json['inbounds'] as List).single as Map;
    expect(inbound['protocol'], 'vless');
    expect((inbound['streamSettings'] as Map)['network'], 'raw');
    expect(inbound['streamSettings'], isNot(contains('masqueSettings')));
    expect((proxyJson(tester)['streamSettings'] as Map)['network'], 'masque');
  });

  testWidgets(
      'MASQUE inbound exports configured TLS certificates with REALITY outbound',
      (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const XrayConfigBuilderApp());
    await select<InboundKind>(tester, 'MASQUE');
    await enable(tester, 'TLS certificates');
    await enable(tester, 'TLS certificates JSON 数组');
    await enter(tester, 'TLS certificates JSON 数组',
        '[{"certificateFile":"server.crt","keyFile":"server.key"}]');
    final json = jsonDecode(
            tester.widget<SelectableText>(find.byType(SelectableText)).data!)
        as Map;
    final inbound = (json['inbounds'] as List).single as Map;
    final stream = inbound['streamSettings'] as Map;
    expect(stream['network'], 'masque');
    expect(stream['security'], 'tls');
    expect(stream, isNot(contains('realitySettings')));
    expect((stream['tlsSettings'] as Map)['certificates'], [
      {'certificateFile': 'server.crt', 'keyFile': 'server.key'}
    ]);
    expect((proxyJson(tester)['streamSettings'] as Map)['security'], 'reality');
  });

  testWidgets('TUN exposes Linux DNS and Windows leak options', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const XrayConfigBuilderApp());
    await select<InboundKind>(tester, 'TUN');
    await enter(tester, 'TUN autoSystemWfpBlockLeak（dns,misconfigtun）',
        'dns,misconfigtun');
    await enable(tester, 'TUN autoSystemDnsToGateway');
    final json = jsonDecode(
            tester.widget<SelectableText>(find.byType(SelectableText)).data!)
        as Map;
    final settings =
        ((json['inbounds'] as List).single as Map)['settings'] as Map;
    expect(settings['autoSystemDnsToGateway'], true);
    expect(settings['autoSystemWfpBlockLeak'], ['dns', 'misconfigtun']);
  });
}
