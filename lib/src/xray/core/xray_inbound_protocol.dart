part of 'config.dart';

enum XrayInboundProtocol {
  tunnel,
  @JsonValue('dokodemo-door')
  dokodemoDoor,
  http,
  shadowsocks,
  mixed,
  socks,
  vless,
  vmess,
  trojan,
  wireguard,
  hysteria,
  tun;

  factory XrayInboundProtocol.fromJson(Object? json) {
    if (json is String) {
      return switch (json.toLowerCase()) {
        'tunnel' => XrayInboundProtocol.tunnel,
        'dokodemo-door' => XrayInboundProtocol.dokodemoDoor,
        'http' => XrayInboundProtocol.http,
        'shadowsocks' => XrayInboundProtocol.shadowsocks,
        'mixed' => XrayInboundProtocol.mixed,
        'socks' => XrayInboundProtocol.socks,
        'vless' => XrayInboundProtocol.vless,
        'vmess' => XrayInboundProtocol.vmess,
        'trojan' => XrayInboundProtocol.trojan,
        'wireguard' => XrayInboundProtocol.wireguard,
        'hysteria' => XrayInboundProtocol.hysteria,
        'tun' => XrayInboundProtocol.tun,
        _ => throw FormatException('unknown inbound protocol: $json'),
      };
    }
    throw FormatException('invalid inbound protocol: $json');
  }

  String toJson() => switch (this) {
    XrayInboundProtocol.tunnel => 'tunnel',
    XrayInboundProtocol.dokodemoDoor => 'dokodemo-door',
    XrayInboundProtocol.http => 'http',
    XrayInboundProtocol.shadowsocks => 'shadowsocks',
    XrayInboundProtocol.mixed => 'mixed',
    XrayInboundProtocol.socks => 'socks',
    XrayInboundProtocol.vless => 'vless',
    XrayInboundProtocol.vmess => 'vmess',
    XrayInboundProtocol.trojan => 'trojan',
    XrayInboundProtocol.wireguard => 'wireguard',
    XrayInboundProtocol.hysteria => 'hysteria',
    XrayInboundProtocol.tun => 'tun',
  };
}
