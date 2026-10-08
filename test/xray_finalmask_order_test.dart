import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter/xray_core_flutter.dart';

const noise = Mask(type: 'noise', settings: NoiseMask());
const icmp = Mask(
  type: 'xicmp',
  settings: Xicmp(ips: ['192.0.2.1']),
);

XrayConfig config(List<Mask> masks, {bool inbound = false}) {
  final stream = StreamConfig(finalmask: FinalMask(udp: masks));
  return inbound
      ? XrayConfig(
          inbounds: [
            InboundDetourConfig.socks(
              port: XrayPortList.single(1080),
              settings: const SocksServerConfig(),
              streamSettings: stream,
            ),
          ],
        )
      : XrayConfig(
          outbounds: [OutboundDetourConfig.direct(streamSettings: stream)],
        );
}

void main() {
  test('XICMP must be last in UDP masks on both clients and servers', () {
    for (final inbound in [false, true]) {
      for (final mask in [
        icmp,
        const Mask(
          type: 'XICMP',
          settings: RawFinalMaskSettings({
            'ips': ['192.0.2.1'],
          }),
        ),
      ]) {
        final invalid = config([mask, noise], inbound: inbound);
        for (final candidate in [
          invalid,
          XrayConfig.fromJson(invalid.toJson()),
        ]) {
          expect(
            candidate.validate().single.path,
            '${inbound ? 'inbounds' : 'outbounds'}[0].streamSettings.finalmask.udp[0].type',
          );
        }
        final valid = config([noise, mask], inbound: inbound);
        final before = valid.toJson();
        expect(valid.validate(), isEmpty);
        expect(valid.toJson(), before);
      }
    }
  });

  test('XICMP ordering is checked in nested download streams', () {
    final nested = XrayConfig(
      outbounds: [
        OutboundDetourConfig.direct(
          streamSettings: const StreamConfig(
            xhttpSettings: SplitHTTPConfig(
              downloadSettings: StreamConfig(
                finalmask: FinalMask(udp: [icmp, noise]),
              ),
            ),
          ),
        ),
      ],
    );
    expect(
      nested.validate().single.path,
      'outbounds[0].streamSettings.xhttpSettings.downloadSettings.finalmask.udp[0].type',
    );
  });

  test('XICMP and UDPHop cannot both occupy the outermost position', () {
    const hop = Mask(
      type: 'udphop',
      settings: UDPHop(mode: 'intervallocal'),
    );
    for (final masks in [
      [icmp, hop],
      [hop, icmp],
    ]) {
      expect(
        config(masks).validate().single.path,
        'outbounds[0].streamSettings.finalmask.udp[0].type',
      );
    }
    // Realm no longer requires the outermost position in v26.9.30.
    expect(
      config([
        const Mask(type: 'realm', settings: RawFinalMaskSettings({})),
        noise,
      ]).validate(),
      isEmpty,
    );
  });
}
