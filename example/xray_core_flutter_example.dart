import 'dart:convert';

import 'package:xray_core_flutter/xray_core_flutter.dart';

void main() {
  final config = XrayConfig(
    inbounds: [
      InboundDetourConfig.socks(
        tag: 'socks-in',
        listen: const XrayAddress('127.0.0.1'),
        port: XrayPortList.single(10808),
        settings: const SocksServerConfig(udp: true),
      ),
    ],
    outbounds: [
      OutboundDetourConfig.direct(
        tag: 'direct',
        settings: const FreedomConfig(),
      ),
    ],
  );

  config.assertValid();

  final json = config.toJson();
  final restoredConfig = XrayConfig.fromJson(json);

  // ignore: avoid_print
  print(const JsonEncoder.withIndent('  ').convert(restoredConfig.toJson()));
}
