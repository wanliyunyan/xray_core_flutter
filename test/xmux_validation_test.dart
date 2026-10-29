import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter/xray_core_flutter.dart';

import 'xray_26_10_21_test.dart' show withStream;

StreamConfig withXmux(String key, XmuxConfig xmux) => switch (key) {
  'xdriveSettings' => StreamConfig(
    xdriveSettings: XDriveConfig(service: 'local', xmux: xmux),
  ),
  'masqueSettings' => StreamConfig(masqueSettings: MasqueConfig(xmux: xmux)),
  'xhttpSettings' => StreamConfig(xhttpSettings: SplitHTTPConfig(xmux: xmux)),
  _ => StreamConfig(splithttpSettings: SplitHTTPConfig(xmux: xmux)),
};

void main() {
  for (final key in [
    'xdriveSettings',
    'masqueSettings',
    'xhttpSettings',
    'splithttpSettings',
  ]) {
    test('$key validates typed int32 JSON bounds', () {
      final invalid = <XmuxConfig>[
        const XmuxConfig(
          maxConcurrency: XrayInt32Range(left: 2147483648, right: 2147483648),
        ),
        const XmuxConfig(
          maxConnections: XrayInt32Range(left: -2147483649, right: -2147483649),
        ),
        const XmuxConfig(
          cMaxReuseTimes: XrayInt32Range(left: 2147483648, right: 2147483648),
        ),
        const XmuxConfig(
          hMaxRequestTimes: XrayInt32Range(left: 2147483648, right: 2147483648),
        ),
        const XmuxConfig(
          hMaxReusableSecs: XrayInt32Range(left: 2147483648, right: 2147483648),
        ),
      ];
      for (final xmux in invalid) {
        final field = xmux.toJson().keys.single;
        expect(
          withStream(withXmux(key, xmux)).validate().map((i) => i.path),
          contains('outbounds[0].streamSettings.$key.xmux.$field'),
        );
      }
    });
    test('$key checks conflicts after Core string range conversion', () {
      const conflict = XmuxConfig(
        maxConnections: XrayInt32Range(left: 2, right: 1),
        maxConcurrency: XrayInt32Range(left: 1, right: 2),
      );
      expect(
        withStream(withXmux(key, conflict)).validate().map((i) => i.path),
        contains('outbounds[0].streamSettings.$key.xmux'),
      );
      const wrapped = XmuxConfig(
        maxConnections: XrayInt32Range(left: 2147483648, right: 2147483649),
        maxConcurrency: XrayInt32Range(left: 1, right: 2),
      );
      expect(withStream(withXmux(key, wrapped)).validate(), isEmpty);
    });
  }

  test('XHTTP XMUX respects alias and raw extra precedence', () {
    const invalid = XmuxConfig(
      maxConnections: XrayInt32Range(left: 1, right: 2),
      maxConcurrency: XrayInt32Range(left: 1, right: 2),
    );
    expect(
      withStream(
        const StreamConfig(
          xhttpSettings: SplitHTTPConfig(),
          splithttpSettings: SplitHTTPConfig(xmux: invalid),
        ),
      ).validate(),
      isEmpty,
    );
    expect(
      withStream(
        const StreamConfig(
          xhttpSettings: SplitHTTPConfig(xmux: invalid, extra: {}),
        ),
      ).validate(),
      isEmpty,
    );
  });

  test('nested XMUX issues retain the download stream path', () {
    const stream = StreamConfig(
      xhttpSettings: SplitHTTPConfig(
        downloadSettings: StreamConfig(
          splithttpSettings: SplitHTTPConfig(
            xmux: XmuxConfig(
              maxConnections: XrayInt32Range(left: 1, right: 2),
              maxConcurrency: XrayInt32Range(left: 1, right: 2),
            ),
          ),
        ),
      ),
    );
    expect(
      withStream(stream).validate().map((i) => i.path),
      contains(
        'outbounds[0].streamSettings.xhttpSettings.downloadSettings.splithttpSettings.xmux',
      ),
    );
  });
}
