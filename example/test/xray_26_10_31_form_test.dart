import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter_example/main.dart';

import 'proxy_chain_form_test.dart' show proxyJson;
import 'xray_26_9_9_form_test.dart' show enter;
import 'xray_26_9_30_form_test.dart' show select;

void main() {
  testWidgets('XHTTP h2Params JSON exports and recovers from malformed input',
      (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const XrayConfigBuilderApp());
    await select<TransportKind>(tester, 'XHTTP');
    await enter(tester, 'SplitHTTP/XHTTP uplinkHTTPMethod', 'OPTIONS');
    await enter(tester, 'SplitHTTP/XHTTP h2Params JSON',
        '{"MaxConcurrentStreams":128}');
    Map settings() =>
        (proxyJson(tester)['streamSettings'] as Map)['xhttpSettings'] as Map;
    expect(settings()['h2Params'], {'MaxConcurrentStreams': 128});
    expect(settings()['uplinkHTTPMethod'], 'OPTIONS');
    TextButton copy() =>
        tester.widget<TextButton>(find.widgetWithText(TextButton, '复制 JSON'));
    await enter(tester, 'SplitHTTP/XHTTP h2Params JSON', '{');
    expect(tester.takeException(), isNull);
    expect(copy().onPressed, isNull);
    await enter(tester, 'SplitHTTP/XHTTP h2Params JSON', '{}');
    expect(copy().onPressed, isNotNull);
    expect(settings()['h2Params'], isEmpty);
    await enter(tester, 'SplitHTTP/XHTTP h2Params JSON', '');
    expect(settings().containsKey('h2Params'), isFalse);
  });
}
