import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter/xray_core_flutter.dart';

import 'xray_26_10_21_test.dart' show withStream, drive;

void main() {
  test('rejects Filter settings under another mask type', () {
    for (final udp in [false, true]) {
      final mask = Mask(
        type: udp ? 'noise' : 'header-custom',
        settings: const Filter(blockedSourceIPs: ['192.0.2.0/24']),
      );
      final config = withStream(
        StreamConfig(
          finalmask: FinalMask(
            tcp: udp ? null : [mask],
            udp: udp ? [mask] : null,
          ),
        ),
      );
      expect(
        config.validate().map((issue) => issue.path),
        contains(
          'outbounds[0].streamSettings.finalmask.${udp ? 'udp' : 'tcp'}[0].settings',
        ),
      );
    }
  });

  test('filter IP trimming follows Go Unicode White_Space', () {
    for (final entry in {
      '\u0085192.0.2.1\u0085': true,
      '\ufeff192.0.2.1': false,
      '[2001:db8::1]\u0085': false,
      '\u0085[2001:db8::1]': false,
      '[\u00852001:db8::1\u0085]': true,
    }.entries) {
      final config = withStream(
        StreamConfig(
          finalmask: FinalMask(
            tcp: [
              Mask(
                type: 'filter',
                settings: Filter(allowedSourceIPs: [entry.key]),
              ),
            ],
          ),
        ),
      );
      expect(config.validate().isEmpty, entry.value, reason: entry.key);
    }
  });

  test('nested download streams validate h3 and filter with precise paths', () {
    final nested = drive(
      alpn: ['h3'],
      finalmask: {
        'udp': [
          {
            'type': 'filter',
            'settings': {
              'allowedSourceIPs': ['192.0.2.0/33'],
            },
          },
        ],
        'quicParams': {'congestion': 'brutal'},
      },
    );
    final config = withStream(
      StreamConfig(xhttpSettings: SplitHTTPConfig(downloadSettings: nested)),
    );
    expect(
      config.validate().map((i) => i.path),
      containsAll([
        'outbounds[0].streamSettings.xhttpSettings.downloadSettings.finalmask.udp[0].type',
        'outbounds[0].streamSettings.xhttpSettings.downloadSettings.finalmask.udp[0].settings.allowedSourceIPs[0]',
        'outbounds[0].streamSettings.xhttpSettings.downloadSettings.finalmask.quicParams.congestion',
      ]),
    );
  });
}
