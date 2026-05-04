part of 'config.dart';

@freezed
abstract class InboundDetourConfig with _$InboundDetourConfig {
  const factory InboundDetourConfig({
    required String protocol,
    XrayPortList? port,
    XrayAddress? listen,
    XrayInboundSettings? settings,
    String? tag,
    StreamConfig? streamSettings,
    SniffingConfig? sniffing,
  }) = _InboundDetourConfig;

  factory InboundDetourConfig.fromProtocol({
    required XrayInboundProtocol protocol,
    XrayPortList? port,
    XrayAddress? listen,
    XrayInboundSettings? settings,
    String? tag,
    StreamConfig? streamSettings,
    SniffingConfig? sniffing,
  }) => InboundDetourConfig(
    protocol: protocol.toJson(),
    port: port,
    listen: listen,
    settings: settings,
    tag: tag,
    streamSettings: streamSettings,
    sniffing: sniffing,
  );

  factory InboundDetourConfig.socks({
    required XrayPortList port,
    required SocksServerConfig settings,
    XrayAddress? listen,
    String? tag,
    StreamConfig? streamSettings,
    SniffingConfig? sniffing,
  }) => InboundDetourConfig.fromProtocol(
    protocol: XrayInboundProtocol.socks,
    port: port,
    listen: listen,
    settings: settings,
    tag: tag,
    streamSettings: streamSettings,
    sniffing: sniffing,
  );

  factory InboundDetourConfig.http({
    required XrayPortList port,
    required HTTPServerConfig settings,
    XrayAddress? listen,
    String? tag,
    StreamConfig? streamSettings,
    SniffingConfig? sniffing,
  }) => InboundDetourConfig.fromProtocol(
    protocol: XrayInboundProtocol.http,
    port: port,
    listen: listen,
    settings: settings,
    tag: tag,
    streamSettings: streamSettings,
    sniffing: sniffing,
  );

  factory InboundDetourConfig.vless({
    required XrayPortList port,
    required VLessInboundConfig settings,
    XrayAddress? listen,
    String? tag,
    StreamConfig? streamSettings,
    SniffingConfig? sniffing,
  }) => InboundDetourConfig.fromProtocol(
    protocol: XrayInboundProtocol.vless,
    port: port,
    listen: listen,
    settings: settings,
    tag: tag,
    streamSettings: streamSettings,
    sniffing: sniffing,
  );

  factory InboundDetourConfig.vmess({
    required XrayPortList port,
    required VMessInboundConfig settings,
    XrayAddress? listen,
    String? tag,
    StreamConfig? streamSettings,
    SniffingConfig? sniffing,
  }) => InboundDetourConfig.fromProtocol(
    protocol: XrayInboundProtocol.vmess,
    port: port,
    listen: listen,
    settings: settings,
    tag: tag,
    streamSettings: streamSettings,
    sniffing: sniffing,
  );

  factory InboundDetourConfig.trojan({
    required XrayPortList port,
    required TrojanServerConfig settings,
    XrayAddress? listen,
    String? tag,
    StreamConfig? streamSettings,
    SniffingConfig? sniffing,
  }) => InboundDetourConfig.fromProtocol(
    protocol: XrayInboundProtocol.trojan,
    port: port,
    listen: listen,
    settings: settings,
    tag: tag,
    streamSettings: streamSettings,
    sniffing: sniffing,
  );

  factory InboundDetourConfig.shadowsocks({
    required XrayPortList port,
    required ShadowsocksServerConfig settings,
    XrayAddress? listen,
    String? tag,
    StreamConfig? streamSettings,
    SniffingConfig? sniffing,
  }) => InboundDetourConfig.fromProtocol(
    protocol: XrayInboundProtocol.shadowsocks,
    port: port,
    listen: listen,
    settings: settings,
    tag: tag,
    streamSettings: streamSettings,
    sniffing: sniffing,
  );

  factory InboundDetourConfig.tun({
    required TunConfig settings,
    String? tag,
    StreamConfig? streamSettings,
    SniffingConfig? sniffing,
  }) => InboundDetourConfig.fromProtocol(
    protocol: XrayInboundProtocol.tun,
    settings: settings,
    tag: tag,
    streamSettings: streamSettings,
    sniffing: sniffing,
  );

  factory InboundDetourConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'inbound');
    final protocol = map['protocol'] as String;
    final settingsJson = map['settings'];
    return InboundDetourConfig(
      protocol: protocol,
      port: map['port'] == null ? null : XrayPortList.fromJson(map['port']),
      listen: map['listen'] == null
          ? null
          : XrayAddress.fromJson(map['listen']),
      settings: settingsJson == null
          ? null
          : _parseInboundSettings(protocol, settingsJson),
      tag: map['tag'] as String?,
      streamSettings: map['streamSettings'] == null
          ? null
          : StreamConfig.fromJson(map['streamSettings']),
      sniffing: map['sniffing'] == null
          ? null
          : SniffingConfig.fromJson(map['sniffing']),
    );
  }

  const InboundDetourConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'protocol': protocol,
    'port': port?.toJson(),
    'listen': listen?.toJson(),
    'settings': settings?.toJson(),
    'tag': tag,
    'streamSettings': streamSettings?.toJson(),
    'sniffing': sniffing?.toJson(),
  });
}

XrayInboundSettings _parseInboundSettings(String protocol, Object? json) {
  return switch (protocol.toLowerCase()) {
    'tunnel' || 'dokodemo-door' => DokodemoConfig.fromJson(json),
    'http' => HTTPServerConfig.fromJson(json),
    'shadowsocks' => ShadowsocksServerConfig.fromJson(json),
    'socks' || 'mixed' => SocksServerConfig.fromJson(json),
    'vless' => VLessInboundConfig.fromJson(json),
    'vmess' => VMessInboundConfig.fromJson(json),
    'trojan' => TrojanServerConfig.fromJson(json),
    'wireguard' => WireGuardConfig.fromJson(json),
    'hysteria' => HysteriaServerConfig.fromJson(json),
    'tun' => TunConfig.fromJson(json),
    _ => XrayRawInboundSettings(asJsonMap(json, '$protocol settings')),
  };
}
