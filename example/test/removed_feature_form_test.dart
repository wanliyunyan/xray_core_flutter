import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter_example/main.dart';

import 'proxy_chain_form_test.dart' show proxyJson;
import 'xray_26_9_9_form_test.dart' show reveal;
import 'xray_26_9_30_form_test.dart' show select;

void main() {
  testWidgets('builder omits controls removed by current Core', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const XrayConfigBuilderApp());

    await select<SecurityKind>(tester, 'TLS');
    await reveal(
      tester,
      find.widgetWithText(CheckboxListTile, 'TLS serverName 自定义'),
    );
    expect(
      find.widgetWithText(CheckboxListTile, 'TLS allowInsecure'),
      findsNothing,
    );
    final stream = proxyJson(tester)['streamSettings'] as Map;
    expect(stream['tlsSettings'], isNot(contains('allowInsecure')));

    await reveal(
      tester,
      find.widgetWithText(CheckboxListTile, 'direct noises JSON 数组'),
    );
    expect(
      find.widgetWithText(CheckboxListTile, 'direct noise'),
      findsNothing,
    );
    expect(
      find.widgetWithText(CheckboxListTile, 'direct noises JSON 数组'),
      findsOneWidget,
    );

    await reveal(tester, find.widgetWithText(CheckboxListTile, '添加 mux'));
    expect(
      find.widgetWithText(CheckboxListTile, '添加顶层 transport JSON'),
      findsNothing,
    );
  });

  testWidgets('Trojan does not expose VLESS flow', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const XrayConfigBuilderApp());

    await select<ProxyProtocol>(tester, 'Trojan');
    await reveal(tester, find.widgetWithText(TextField, '用户 level'));

    expect(find.widgetWithText(TextField, 'flow'), findsNothing);
    expect(proxyJson(tester)['settings'], isNot(contains('flow')));
  });
}
