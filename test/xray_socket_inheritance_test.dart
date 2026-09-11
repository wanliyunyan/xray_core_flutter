import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter/xray_core_flutter.dart';

const _hop = Mask(
  type: 'UDPHOP',
  settings: UDPHop(
    mode: 'intervallocal',
    interval: XrayInt32Range(left: 5, right: 5),
  ),
);

XrayConfig _config(StreamConfig stream) => XrayConfig(
  outbounds: [
    OutboundDetourConfig.direct(tag: 'upstream'),
    OutboundDetourConfig.direct(tag: 'test', streamSettings: stream),
  ],
);

void _expectPaths(StreamConfig stream, List<String> paths) {
  final config = _config(stream);
  for (final candidate in [config, XrayConfig.fromJson(config.toJson())]) {
    expect(candidate.validate().map((issue) => issue.path), paths);
    if (paths.isEmpty) {
      candidate.assertValid();
    } else {
      expect(
        candidate.assertValid,
        throwsA(isA<XrayConfigValidationException>()),
      );
    }
  }
  // Validation must not rewrite the configuration being exported.
  expect(config.outbounds!.last.streamSettings!.toJson(), stream.toJson());
}

void main() {
  test('UDPHop rejects outer dialerProxy even with raw mask settings', () {
    for (final mask in [
      _hop,
      const Mask(
        type: 'udphop',
        settings: RawFinalMaskSettings({
          'mode': 'intervallocal',
          'interval': 5,
        }),
      ),
    ]) {
      _expectPaths(
        StreamConfig(
          sockopt: const SocketConfig(dialerProxy: 'upstream'),
          finalmask: FinalMask(udp: [mask]),
        ),
        ['outbounds[1].streamSettings.finalmask.udp[0].type'],
      );
    }
  });

  test('UDPHop allows its own proxy and absent or empty outer proxy', () {
    for (final sockopt in <SocketConfig?>[
      null,
      const SocketConfig(),
      const SocketConfig(dialerProxy: ''),
    ]) {
      _expectPaths(
        StreamConfig(
          sockopt: sockopt,
          finalmask: FinalMask(
            udp: [
              _hop.copyWith(
                settings: (_hop.settings! as UDPHop).copyWith(
                  sockopt: const SocketConfig(dialerProxy: 'upstream'),
                ),
              ),
            ],
          ),
        ),
        [],
      );
    }
  });

  test('penetrate overrides download sockopt through both XHTTP aliases', () {
    for (final xhttp in [false, true]) {
      for (final penetrate in [false, true]) {
        const split = SplitHTTPConfig(
          downloadSettings: StreamConfig(
            sockopt: SocketConfig(dialerProxy: 'ignored-missing'),
          ),
        );
        final alias = xhttp ? 'xhttpSettings' : 'splithttpSettings';
        _expectPaths(
          StreamConfig(
            sockopt: SocketConfig(
              penetrate: penetrate,
              dialerProxy: 'upstream',
            ),
            xhttpSettings: xhttp ? split : null,
            splithttpSettings: xhttp ? null : split,
          ),
          penetrate
              ? []
              : [
                  'outbounds[1].streamSettings.$alias.downloadSettings.sockopt.dialerProxy',
                ],
        );
      }
    }
  });

  test('inherited socket options determine nested UDPHop compatibility', () {
    for (final tag in <String?>[null, '', 'upstream']) {
      _expectPaths(
        StreamConfig(
          sockopt: SocketConfig(penetrate: true, dialerProxy: tag),
          xhttpSettings: const SplitHTTPConfig(
            downloadSettings: StreamConfig(
              sockopt: SocketConfig(penetrate: false, dialerProxy: 'ignored'),
              xhttpSettings: SplitHTTPConfig(
                downloadSettings: StreamConfig(
                  sockopt: SocketConfig(dialerProxy: 'also-ignored'),
                  finalmask: FinalMask(udp: [_hop]),
                ),
              ),
            ),
          ),
        ),
        tag == 'upstream'
            ? [
                'outbounds[1].streamSettings.xhttpSettings.downloadSettings'
                    '.xhttpSettings.downloadSettings.finalmask.udp[0].type',
              ]
            : [],
      );
    }
  });

  test('overriding download sockopt still validates mask-owned sockopt', () {
    _expectPaths(
      StreamConfig(
        sockopt: const SocketConfig(penetrate: true),
        xhttpSettings: SplitHTTPConfig(
          downloadSettings: StreamConfig(
            sockopt: const SocketConfig(dialerProxy: 'ignored'),
            finalmask: FinalMask(
              udp: [
                _hop.copyWith(
                  settings: (_hop.settings! as UDPHop).copyWith(
                    sockopt: const SocketConfig(dialerProxy: 'missing'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      [
        'outbounds[1].streamSettings.xhttpSettings.downloadSettings'
            '.finalmask.udp[0].settings.sockopt.dialerProxy',
      ],
    );
  });

  test('invalid inherited proxy is reported once at its source', () {
    _expectPaths(
      const StreamConfig(
        sockopt: SocketConfig(penetrate: true, dialerProxy: 'missing'),
        xhttpSettings: SplitHTTPConfig(
          downloadSettings: StreamConfig(
            xhttpSettings: SplitHTTPConfig(downloadSettings: StreamConfig()),
          ),
        ),
      ),
      ['outbounds[1].streamSettings.sockopt.dialerProxy'],
    );
  });
}
