import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter/xray_config.dart';

import 'test_configs.dart';

void main() {
  final cases = <String, XrayConfig Function()>{
    'vless reality with socks inbound': buildExampleConfig,
    'vmess websocket tls': _buildVmessWebSocketTls,
    'trojan grpc tls': _buildTrojanGrpcTls,
    'shadowsocks tcp': _buildShadowsocksTcp,
    'http and socks proxy outbounds': _buildHttpAndSocksProxy,
  };

  for (final entry in cases.entries) {
    test('${entry.key} validates and round-trips json', () {
      final config = entry.value();

      expect(config.validate(), isEmpty);

      final json = config.toJson();
      expect(jsonEncode(json), isA<String>());

      final imported = XrayConfig.fromJson(json);
      expect(imported.validate(), isEmpty);
      expect(imported.toJson(), json);
    });
  }
}

XrayConfig _baseConfig(List<OutboundDetourConfig> outbounds) {
  return XrayConfig(
    inbounds: [
      InboundDetourConfig.socks(
        tag: 'socks-in',
        listen: const XrayAddress('127.0.0.1'),
        port: XrayPortList.single(10808),
        settings: const SocksServerConfig(
          authMethod: SocksAuthMethod.noauth,
          udp: true,
        ),
      ),
    ],
    outbounds: [
      ...outbounds,
      OutboundDetourConfig.direct(
        tag: 'direct',
        settings: const FreedomConfig(),
      ),
    ],
    routing: RouterConfig(
      ruleList: [
        RouterRule.toOutbound(
          outboundTag: 'direct',
          ip: XrayStringList.single('geoip:private'),
        ),
      ],
    ),
  );
}

XrayConfig _buildVmessWebSocketTls() {
  return _baseConfig([
    OutboundDetourConfig.vmess(
      tag: 'proxy',
      settings: VMessOutboundConfig.single(
        address: const XrayAddress('vmess.example.com'),
        port: 443,
        id: '00000000-0000-0000-0000-000000000000',
        security: VmessSecurity.auto,
      ),
      streamSettings: StreamConfig.tls(
        network: TransportProtocol.ws,
        wsSettings: const WebSocketConfig(path: '/ws'),
        tlsSettings: const TLSConfig(serverName: 'vmess.example.com'),
      ),
    ),
  ]);
}

XrayConfig _buildTrojanGrpcTls() {
  return _baseConfig([
    OutboundDetourConfig.trojan(
      tag: 'proxy',
      settings: TrojanClientConfig.single(
        address: const XrayAddress('trojan.example.com'),
        port: 443,
        password: 'secret',
      ),
      streamSettings: StreamConfig.tls(
        network: TransportProtocol.grpc,
        grpcSettings: const GRPCConfig(serviceName: 'grpc-service'),
        tlsSettings: const TLSConfig(serverName: 'trojan.example.com'),
      ),
    ),
  ]);
}

XrayConfig _buildShadowsocksTcp() {
  return _baseConfig([
    OutboundDetourConfig.shadowsocks(
      tag: 'proxy',
      settings: ShadowsocksClientConfig.single(
        address: const XrayAddress('ss.example.com'),
        port: 8388,
        cipher: 'aes-128-gcm',
        password: 'secret',
      ),
      streamSettings: const StreamConfig(network: TransportProtocol.tcp),
    ),
  ]);
}

XrayConfig _buildHttpAndSocksProxy() {
  return _baseConfig([
    OutboundDetourConfig.http(
      tag: 'http-proxy',
      settings: HTTPClientConfig.single(
        address: const XrayAddress('http.example.com'),
        port: 8080,
        username: 'user',
        password: 'pass',
      ),
    ),
    OutboundDetourConfig.socks(
      tag: 'socks-proxy',
      settings: SocksClientConfig.single(
        address: const XrayAddress('127.0.0.1'),
        port: 1080,
        username: 'user',
        password: 'pass',
      ),
    ),
  ]);
}
