import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter/xray_core_flutter.dart';

XrayConfig block(BlackholeResponse response) => XrayConfig(
  outbounds: [
    OutboundDetourConfig(
      protocol: 'blackhole',
      settings: BlackholeConfig(response: response),
    ),
  ],
);

StreamConfig hopping(UDPHop hop) => StreamConfig(
  finalmask: FinalMask(
    udp: [Mask(type: 'udphop', settings: hop)],
  ),
);

void main() {
  XrayConfig withMasks(FinalMask masks) {
    final stream = StreamConfig(finalmask: masks);
    return XrayConfig(
      inbounds: [
        InboundDetourConfig(
          protocol: 'dokodemo-door',
          port: XrayPortList.single(1080),
          streamSettings: stream,
        ),
      ],
      outbounds: [
        OutboundDetourConfig(protocol: 'freedom', streamSettings: stream),
      ],
    );
  }

  test('UDP hop cannot be placed in TCP, including raw and imported masks', () {
    for (final settings in <FinalMaskSettings?>[
      UDPHop(mode: 'intervalremote', interval: XrayInt32Range.single(5)),
      const RawFinalMaskSettings({'mode': 'intervalremote', 'interval': 5}),
      null,
    ]) {
      final config = withMasks(
        FinalMask(
          tcp: [Mask(type: 'UDPHOP', settings: settings)],
        ),
      );
      for (final candidate in [config, XrayConfig.fromJson(config.toJson())]) {
        expect(candidate.validate().map((i) => i.path), [
          'inbounds[0].streamSettings.finalmask.tcp[0].type',
          'outbounds[0].streamSettings.finalmask.tcp[0].type',
        ]);
      }
    }
  });

  test(
    'UDP hop rejects unrelated typed settings but retains the raw escape hatch',
    () {
      final wrong = withMasks(
        const FinalMask(
          udp: [
            Mask(
              type: 'udphop',
              settings: Realm(url: 'realm://x'),
            ),
          ],
        ),
      );
      expect(wrong.validate().map((i) => i.path), [
        'inbounds[0].streamSettings.finalmask.udp[0].settings',
        'inbounds[0].streamSettings.finalmask.udp[0].type',
        'outbounds[0].streamSettings.finalmask.udp[0].settings',
      ]);
      expect(wrong.assertValid, throwsA(isA<XrayConfigValidationException>()));
      final raw = withMasks(
        const FinalMask(
          udp: [
            Mask(
              type: 'udphop',
              settings: RawFinalMaskSettings({'mode': 'future-mode'}),
            ),
          ],
        ),
      );
      expect(raw.validate().map((i) => i.path), [
        'inbounds[0].streamSettings.finalmask.udp[0].type',
      ]);
    },
  );

  test('UDP hop checks both interval endpoints against int32 bounds', () {
    for (final input in <Object>[
      4,
      2147483648,
      '5-2147483648',
      '2147483648-5',
      '-2147483649-5',
    ]) {
      final config = withMasks(
        FinalMask(
          udp: [
            Mask(
              type: 'udphop',
              settings: UDPHop(
                mode: 'intervalremote',
                interval: XrayInt32Range.fromJson(input),
              ),
            ),
          ],
        ),
      );
      for (final candidate in [config, XrayConfig.fromJson(config.toJson())]) {
        expect(candidate.validate().map((i) => i.path), [
          'inbounds[0].streamSettings.finalmask.udp[0].settings.interval',
          'inbounds[0].streamSettings.finalmask.udp[0].type',
          'outbounds[0].streamSettings.finalmask.udp[0].settings.interval',
        ], reason: '$input');
      }
    }
    for (final input in <Object>[
      5,
      2147483647,
      '5-2147483647',
      '2147483647-5',
    ]) {
      final config = withMasks(
        FinalMask(
          udp: [
            Mask(
              type: 'udphop',
              settings: UDPHop(
                mode: 'intervalremote',
                interval: XrayInt32Range.fromJson(input),
              ),
            ),
          ],
        ),
      );
      expect(config.validate().map((i) => i.path), [
        'inbounds[0].streamSettings.finalmask.udp[0].type',
      ], reason: '$input');
    }
  });

  test(
    'empty dialerProxy means no proxy; unknown nonempty tags still fail',
    () {
      for (final tag in ['', 'missing']) {
        final config = XrayConfig(
          outbounds: [
            OutboundDetourConfig(
              protocol: 'freedom',
              streamSettings: StreamConfig(
                sockopt: SocketConfig(dialerProxy: tag),
              ),
            ),
          ],
        );
        if (tag.isEmpty) {
          expect(config.validate(), isEmpty);
        } else {
          expect(
            config.validate().single.path,
            'outbounds[0].streamSettings.sockopt.dialerProxy',
          );
        }
      }
    },
  );

  test('custom blackhole response follows Go standard Base64 rules', () {
    for (final data in [
      '',
      'b2s=',
      'YQ==',
      'YWJj',
      'Y\r\nQ==',
      '+/8=',
      'AB==',
    ]) {
      expect(
        block(BlackholeResponse.custom(data)).validate(),
        isEmpty,
        reason: data,
      );
    }
    for (final data in [
      'not base64!',
      'YQ',
      'YQ=',
      'YQ===',
      'Y Q==',
      '-_8=',
      '%59Q==',
      '=YQ=',
    ]) {
      final config = block(BlackholeResponse.custom(data));
      expect(
        config.validate().single.path,
        'outbounds[0].settings.response.customResponseData',
        reason: data,
      );
      expect(config.assertValid, throwsA(isA<XrayConfigValidationException>()));
    }
    expect(block(const ResponseConfig(type: 'CUSTOM')).validate(), isEmpty);
    expect(
      block(
        const ResponseConfig(type: 'http', customResponseData: '!'),
      ).validate(),
      isEmpty,
    );
    expect(
      block(const ResponseConfig(type: 'unknown')).validate().single.path,
      'outbounds[0].settings.response.type',
    );
  });

  test(
    'invalid UDP hop mode, IP and interval are reported on both directions',
    () {
      final stream = hopping(
        UDPHop(
          mode: 'intervalremote,invalid',
          remoteIPs: [
            'example.com',
            '192.0.2.1/33',
            '2001:db8::/129',
            '01.2.3.4',
            '2001:::1',
          ],
          interval: XrayInt32Range.single(4),
        ),
      );
      final config = XrayConfig(
        inbounds: [
          InboundDetourConfig(
            protocol: 'dokodemo-door',
            port: XrayPortList.single(1080),
            streamSettings: stream,
          ),
        ],
        outbounds: [
          OutboundDetourConfig(protocol: 'freedom', streamSettings: stream),
        ],
      );
      final paths = config.validate().map((i) => i.path).toList();
      for (final side in ['inbounds', 'outbounds']) {
        final prefix = '$side[0].streamSettings.finalmask.udp[0].settings';
        expect(paths, contains('$prefix.mode'));
        expect(paths, contains('$prefix.interval'));
        for (var i = 0; i < 5; i++) {
          expect(paths, contains('$prefix.remoteIPs[$i]'));
        }
      }
      expect(
        paths,
        contains('inbounds[0].streamSettings.finalmask.udp[0].type'),
      );
      expect(paths, hasLength(15));
    },
  );

  test('UDP hop accepts supported modes, IPs and CIDRs', () {
    for (final mode in [
      'intervallocal',
      'INTERVALREMOTE',
      'perconnremote',
      'intervallocal,intervalremote,perconnremote',
    ]) {
      final stream = hopping(
        const UDPHop().copyWith(
          mode: mode,
          interval: XrayInt32Range.fromJson('5-10'),
          remoteIPs: [
            '192.0.2.1',
            '198.51.100.0/24',
            '0.0.0.0/0',
            '::1',
            '2001:db8::/64',
            '::ffff:192.0.2.1',
            'fe80::1%eth0',
          ],
        ),
      );
      expect(
        XrayConfig(
          outbounds: [
            OutboundDetourConfig(protocol: 'freedom', streamSettings: stream),
          ],
        ).validate(),
        isEmpty,
        reason: mode,
      );
    }
  });

  test('missing UDP hop mode fails but omitted interval uses Core default', () {
    final config = XrayConfig(
      outbounds: [
        OutboundDetourConfig(
          protocol: 'freedom',
          streamSettings: hopping(const UDPHop()),
        ),
      ],
    );
    expect(config.validate().map((i) => i.path), [
      'outbounds[0].streamSettings.finalmask.udp[0].settings.mode',
    ]);
  });

  test('UDP hop is client-only and must be the outermost UDP mask', () {
    const hop = Mask(
      type: 'udphop',
      settings: UDPHop(
        mode: 'intervalremote',
        interval: XrayInt32Range(left: 5, right: 5),
      ),
    );
    const noise = Mask(type: 'noise', settings: RawFinalMaskSettings({}));

    final inbound = XrayConfig(
      inbounds: [
        InboundDetourConfig(
          protocol: 'dokodemo-door',
          port: XrayPortList.single(1080),
          streamSettings: const StreamConfig(finalmask: FinalMask(udp: [hop])),
        ),
      ],
    );
    expect(inbound.validate().map((i) => i.path), [
      'inbounds[0].streamSettings.finalmask.udp[0].type',
    ]);

    final nonOutermost = XrayConfig(
      outbounds: [
        OutboundDetourConfig(
          protocol: 'freedom',
          streamSettings: const StreamConfig(
            finalmask: FinalMask(udp: [hop, noise]),
          ),
        ),
      ],
    );
    for (final candidate in [
      nonOutermost,
      XrayConfig.fromJson(nonOutermost.toJson()),
    ]) {
      expect(candidate.validate().map((i) => i.path), [
        'outbounds[0].streamSettings.finalmask.udp[0].type',
      ]);
    }

    const outermost = XrayConfig(
      outbounds: [
        OutboundDetourConfig(
          protocol: 'freedom',
          streamSettings: StreamConfig(finalmask: FinalMask(udp: [noise, hop])),
        ),
      ],
    );
    expect(outermost.validate(), isEmpty);
  });
}
