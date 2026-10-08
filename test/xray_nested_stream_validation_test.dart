import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter/xray_core_flutter.dart';

const _badStream = StreamConfig(
  finalmask: FinalMask(tcp: [Mask(type: 'udphop')]),
);

XrayConfig _config(StreamConfig stream, {bool inbound = false}) => XrayConfig(
  inbounds: inbound
      ? [
          InboundDetourConfig(
            protocol: 'socks',
            port: XrayPortList.single(1080),
            settings: const SocksServerConfig(),
            streamSettings: stream,
          ),
        ]
      : null,
  outbounds: [
    OutboundDetourConfig.direct(
      tag: 'direct',
      streamSettings: inbound ? null : stream,
    ),
  ],
);

void _expectPaths(XrayConfig config, List<String> paths) {
  for (final candidate in [config, XrayConfig.fromJson(config.toJson())]) {
    expect(candidate.validate().map((issue) => issue.path), paths);
    if (paths.isNotEmpty) {
      expect(
        candidate.assertValid,
        throwsA(isA<XrayConfigValidationException>()),
      );
    }
  }
}

void main() {
  test('checks download streams recursively through both XHTTP aliases', () {
    for (final inbound in [false, true]) {
      for (final xhttp in [false, true]) {
        const split = SplitHTTPConfig(
          downloadSettings: StreamConfig(
            xhttpSettings: SplitHTTPConfig(downloadSettings: _badStream),
          ),
        );
        final config = _config(
          StreamConfig(
            xhttpSettings: xhttp ? split : null,
            splithttpSettings: xhttp ? null : split,
          ),
          inbound: inbound,
        );
        final side = inbound ? 'inbounds' : 'outbounds';
        final alias = xhttp ? 'xhttpSettings' : 'splithttpSettings';
        _expectPaths(config, [
          '$side[0].streamSettings.$alias.downloadSettings'
              '.xhttpSettings.downloadSettings.finalmask.tcp[0].type',
        ]);
      }
    }
  });

  test('only validates the effective XHTTP alias and typed options', () {
    const invalid = SplitHTTPConfig(downloadSettings: _badStream);
    _expectPaths(
      _config(
        const StreamConfig(
          xhttpSettings: SplitHTTPConfig(),
          splithttpSettings: invalid,
        ),
      ),
      [],
    );
    _expectPaths(
      _config(
        const StreamConfig(
          xhttpSettings: invalid,
          splithttpSettings: SplitHTTPConfig(),
        ),
      ),
      [
        'outbounds[0].streamSettings.xhttpSettings.downloadSettings.finalmask.tcp[0].type',
      ],
    );
    // Even an empty raw extra replaces the outer typed download settings.
    _expectPaths(
      _config(StreamConfig(xhttpSettings: invalid.copyWith(extra: {}))),
      [],
    );
  });

  test('nested UDP masks retain direction and ordering checks', () {
    const hop = Mask(
      type: 'udphop',
      settings: UDPHop(
        mode: 'intervalremote',
        interval: XrayInt32Range(left: 5, right: 5),
      ),
    );
    StreamConfig stream(List<Mask> masks) => StreamConfig(
      xhttpSettings: SplitHTTPConfig(
        downloadSettings: StreamConfig(finalmask: FinalMask(udp: masks)),
      ),
    );
    _expectPaths(_config(stream([hop])), []);
    _expectPaths(_config(stream([hop]), inbound: true), [
      'inbounds[0].streamSettings.xhttpSettings.downloadSettings.finalmask.udp[0].type',
    ]);
    _expectPaths(_config(stream([hop, const Mask(type: 'noise')])), [
      'outbounds[0].streamSettings.xhttpSettings.downloadSettings.finalmask.udp[0].type',
    ]);
  });

  test('checks nested stream dialerProxy references', () {
    for (final tag in ['', 'direct', 'reverse-node', 'missing']) {
      final sockopt = SocketConfig(dialerProxy: tag);
      final config =
          _config(
            StreamConfig(
              xhttpSettings: SplitHTTPConfig(
                downloadSettings: StreamConfig(
                  sockopt: sockopt,
                  finalmask: FinalMask(
                    udp: [
                      Mask(
                        type: 'udphop',
                        settings: UDPHop(
                          mode: 'intervallocal',
                          interval: XrayInt32Range.single(5),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ).copyWith(
            inbounds: [
              InboundDetourConfig.vless(
                port: XrayPortList.single(1080),
                settings: const VLessInboundConfig(
                  decryption: 'none',
                  clients: [
                    VLessUser(
                      id: '00000000-0000-0000-0000-000000000000',
                      reverse: VLessReverseConfig(tag: 'reverse-node'),
                    ),
                  ],
                ),
              ),
            ],
          );
      const prefix =
          'outbounds[0].streamSettings.xhttpSettings.downloadSettings';
      _expectPaths(config, [
        if (tag == 'missing') ...['$prefix.sockopt.dialerProxy'],
      ]);
    }
  });

  test('raw UDPHop settings remain an escape hatch', () {
    final config = _config(
      const StreamConfig(
        finalmask: FinalMask(
          udp: [
            Mask(
              type: 'udphop',
              settings: RawFinalMaskSettings({
                'mode': 'intervallocal',
                'interval': 5,
                'sockopt': {'dialerProxy': 'missing'},
              }),
            ),
          ],
        ),
      ),
    );
    expect(config.validate(), isEmpty);
    // Core and the typed model ignore the removed mask-owned socket options.
    expect(XrayConfig.fromJson(config.toJson()).validate(), isEmpty);
  });
}
