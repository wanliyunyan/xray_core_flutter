import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter_example/main.dart';

void main() {
  testWidgets('renders the Xray config builder', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1600));
    addTearDown(() => tester.binding.setSurfaceSize(null));

    await tester.pumpWidget(const XrayConfigBuilderApp());

    expect(find.text('Xray 配置生成器'), findsOneWidget);
    expect(find.text('组合配置'), findsOneWidget);

    await tester.scrollUntilVisible(
      find.text('入站'),
      200,
      scrollable: find.byType(Scrollable).first,
    );
    expect(find.text('入站'), findsOneWidget);
    expect(find.textContaining('"protocol": "vless"'), findsOneWidget);
  });

  testWidgets('updates generated json from form inputs', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));

    await tester.pumpWidget(const XrayConfigBuilderApp());

    await tester.scrollUntilVisible(
      find.byKey(const ValueKey('send-through-field')),
      200,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.enterText(
      find.descendant(
        of: find.byKey(const ValueKey('send-through-field')),
        matching: find.byType(EditableText),
      ),
      '127.0.0.2',
    );
    await tester.pump();

    expect(
      find.textContaining('"sendThrough": "127.0.0.2"'),
      findsOneWidget,
    );
  });
}
