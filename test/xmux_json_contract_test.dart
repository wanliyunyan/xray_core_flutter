import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter/xray_core_flutter.dart';

import 'xray_26_10_21_test.dart' show withStream;

void main() {
  const keys = [
    'maxConcurrency',
    'maxConnections',
    'cMaxReuseTimes',
    'hMaxRequestTimes',
    'hMaxReusableSecs',
  ];
  test('XMUX JSON numbers must fit Go int32', () {
    for (final key in keys) {
      for (final value in [2147483648, -2147483649]) {
        expect(() => XmuxConfig.fromJson({key: value}), throwsFormatException);
      }
      for (final value in [-2147483648, -1, 0, 2147483647]) {
        expect(XmuxConfig.fromJson({key: value}).toJson(), {key: value});
      }
    }
  });

  test('XMUX string ranges follow Go decimal parsing and int32 conversion', () {
    for (final key in keys) {
      for (final value in ['0x10', ' 1', '1 ', '1- 2', '9223372036854775808']) {
        expect(
          () => XmuxConfig.fromJson({key: value}),
          throwsFormatException,
          reason: value,
        );
      }
      final cases = <String, Object>{
        '': 0,
        '-1': -1,
        '+1-+2': '1-2',
        '2147483648': -2147483648,
        '2147483648-2147483649': '-2147483648--2147483647',
      };
      for (final entry in cases.entries) {
        expect(XmuxConfig.fromJson({key: entry.key}).toJson(), {
          key: entry.value,
        });
      }
    }
  });

  test('XDrive rejects typed XMUX values that export invalid JSON numbers', () {
    const xmux = XmuxConfig(
      maxConnections: XrayInt32Range(left: 2147483648, right: 2147483648),
    );
    final config = withStream(
      const StreamConfig(
        xdriveSettings: XDriveConfig(service: 'local', xmux: xmux),
      ),
    );
    expect(
      config.validate().map((i) => i.path),
      contains(
        'outbounds[0].streamSettings.xdriveSettings.xmux.maxConnections',
      ),
    );
  });

  test('XDrive XMUX conflicts use effective Core int32 endpoints', () {
    final config = withStream(
      StreamConfig(
        xdriveSettings: XDriveConfig.fromJson({
          'service': 'local',
          'xmux': {
            'maxConnections': '2147483648-2147483649',
            'maxConcurrency': 1,
          },
        }),
      ),
    );
    expect(config.validate(), isEmpty);
  });
}
