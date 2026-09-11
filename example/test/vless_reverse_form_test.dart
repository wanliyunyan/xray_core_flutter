import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter_example/main.dart';

void main() {
  testWidgets('reverse sniffing is exported only for the VLESS outbound',
      (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const XrayConfigBuilderApp());

    final inbound = find.byType(DropdownButtonFormField<InboundKind>);
    await tester.scrollUntilVisible(
      inbound,
      150,
      scrollable: find.byType(Scrollable).first,
      maxScrolls: 200,
    );
    tester
        .widget<DropdownButtonFormField<InboundKind>>(inbound)
        .onChanged!(InboundKind.vless);
    await tester.pumpAndSettle();
    final reverse = find.widgetWithText(CheckboxListTile, 'VLESS reverse');
    await tester.scrollUntilVisible(
      reverse,
      150,
      scrollable: find.byType(Scrollable).first,
      maxScrolls: 200,
    );
    tester.widget<CheckboxListTile>(reverse).onChanged!(true);
    await tester.pumpAndSettle();

    final text =
        tester.widget<SelectableText>(find.byType(SelectableText)).data!;
    final config = jsonDecode(text) as Map<String, dynamic>;
    final inboundJson = (config['inbounds'] as List).first as Map;
    final outboundJson = (config['outbounds'] as List).first as Map;
    final inboundReverse = inboundJson['settings']['clients'][0]['reverse'];
    final outboundReverse = outboundJson['settings']['reverse'] as Map;
    expect(inboundReverse, {'tag': 'reverse'});
    expect(outboundReverse['tag'], 'reverse');
    expect(outboundReverse['sniffing'], containsPair('enabled', true));
    expect(inboundJson['sniffing'], containsPair('enabled', true));
  });
}
