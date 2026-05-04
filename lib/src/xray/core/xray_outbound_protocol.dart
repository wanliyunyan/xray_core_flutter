part of 'config.dart';

enum XrayOutboundProtocol {
  block,
  blackhole,
  loopback,
  direct,
  freedom,
  http,
  shadowsocks,
  socks,
  vless,
  vmess,
  trojan,
  hysteria,
  dns,
  wireguard;

  factory XrayOutboundProtocol.fromJson(Object? json) {
    if (json is String) {
      return switch (json.toLowerCase()) {
        'block' => XrayOutboundProtocol.block,
        'blackhole' => XrayOutboundProtocol.blackhole,
        'loopback' => XrayOutboundProtocol.loopback,
        'direct' => XrayOutboundProtocol.direct,
        'freedom' => XrayOutboundProtocol.freedom,
        'http' => XrayOutboundProtocol.http,
        'shadowsocks' => XrayOutboundProtocol.shadowsocks,
        'socks' => XrayOutboundProtocol.socks,
        'vless' => XrayOutboundProtocol.vless,
        'vmess' => XrayOutboundProtocol.vmess,
        'trojan' => XrayOutboundProtocol.trojan,
        'hysteria' => XrayOutboundProtocol.hysteria,
        'dns' => XrayOutboundProtocol.dns,
        'wireguard' => XrayOutboundProtocol.wireguard,
        _ => throw FormatException('unknown outbound protocol: $json'),
      };
    }
    throw FormatException('invalid outbound protocol: $json');
  }

  String toJson() => name;
}
