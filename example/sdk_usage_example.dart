import 'dart:convert';

import 'package:xray_core_flutter/xray_config.dart';

import 'build_config.dart';

void main() {
  buildTypedConfig();
  validateConfigBeforeStart();
  importExistingJson();
}

void buildTypedConfig() {
  final config = buildExampleConfig();

  config.assertValid();

  final xrayJson = const JsonEncoder.withIndent('  ').convert(config.toJson());

  // In a real SDK, this JSON is what you pass to the native Xray runner.
  // ignore: avoid_print
  print('=== Typed config to Xray JSON ===');
  // ignore: avoid_print
  print(xrayJson);
}

void validateConfigBeforeStart() {
  final invalidConfig = XrayConfig(
    inbounds: [
      InboundDetourConfig.socks(
        tag: 'socks-in',
        port: XrayPortList.single(10808),
        settings: const SocksServerConfig(),
      ),
    ],
    outbounds: [
      OutboundDetourConfig.fromProtocol(
        protocol: XrayOutboundProtocol.vmess,
        settings: const FreedomConfig(),
      ),
    ],
    routing: RouterConfig(
      ruleList: [
        RouterRule.toOutbound(
          inboundTag: XrayStringList.single('missing-inbound'),
          outboundTag: 'missing-outbound',
        ),
      ],
    ),
  );

  final issues = invalidConfig.validate();

  // ignore: avoid_print
  print('\n=== Validation issues ===');
  for (final issue in issues) {
    // ignore: avoid_print
    print('- ${issue.path}: ${issue.message}');
  }
}

void importExistingJson() {
  final oldJson = <String, Object?>{
    'inbounds': [
      {
        'protocol': 'socks',
        'tag': 'socks-in',
        'listen': '127.0.0.1',
        'port': 10808,
        'settings': {'auth': 'noauth', 'udp': true},
      },
    ],
    'outbounds': [
      {'protocol': 'freedom', 'tag': 'direct', 'settings': {}},
    ],
    'routing': {
      'rules': [
        {
          'outboundTag': 'direct',
          'ip': ['geoip:private'],
        },
      ],
    },
  };

  final config = XrayConfig.fromJson(oldJson);
  final issues = config.validate();

  // ignore: avoid_print
  print('\n=== Imported old JSON ===');
  // ignore: avoid_print
  print('inbounds: ${config.inbounds?.length ?? 0}');
  // ignore: avoid_print
  print('outbounds: ${config.outbounds?.length ?? 0}');
  // ignore: avoid_print
  print('valid: ${issues.isEmpty}');
}
