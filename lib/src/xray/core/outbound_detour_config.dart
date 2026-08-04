part of 'config.dart';

@freezed
abstract class OutboundDetourConfig with _$OutboundDetourConfig {
  const factory OutboundDetourConfig({
    required String protocol,
    String? sendThrough,
    String? tag,
    XrayOutboundSettings? settings,
    StreamConfig? streamSettings,
    ProxyConfig? proxySettings,
    MuxConfig? mux,
    XrayTargetStrategy? targetStrategy,
  }) = _OutboundDetourConfig;

  factory OutboundDetourConfig.fromProtocol({
    required XrayOutboundProtocol protocol,
    String? sendThrough,
    String? tag,
    XrayOutboundSettings? settings,
    StreamConfig? streamSettings,
    ProxyConfig? proxySettings,
    MuxConfig? mux,
    XrayTargetStrategy? targetStrategy,
  }) =>
      OutboundDetourConfig(
        protocol: protocol.toJson(),
        sendThrough: sendThrough,
        tag: tag,
        settings: settings,
        streamSettings: streamSettings,
        proxySettings: proxySettings,
        mux: mux,
        targetStrategy: targetStrategy,
      );

  factory OutboundDetourConfig.vless({
    required VLessOutboundConfig settings,
    String? tag,
    String? sendThrough,
    StreamConfig? streamSettings,
    ProxyConfig? proxySettings,
    MuxConfig? mux,
    XrayTargetStrategy? targetStrategy,
  }) =>
      OutboundDetourConfig.fromProtocol(
        protocol: XrayOutboundProtocol.vless,
        sendThrough: sendThrough,
        tag: tag,
        settings: settings,
        streamSettings: streamSettings,
        proxySettings: proxySettings,
        mux: mux,
        targetStrategy: targetStrategy,
      );

  factory OutboundDetourConfig.vmess({
    required VMessOutboundConfig settings,
    String? tag,
    String? sendThrough,
    StreamConfig? streamSettings,
    ProxyConfig? proxySettings,
    MuxConfig? mux,
    XrayTargetStrategy? targetStrategy,
  }) =>
      OutboundDetourConfig.fromProtocol(
        protocol: XrayOutboundProtocol.vmess,
        sendThrough: sendThrough,
        tag: tag,
        settings: settings,
        streamSettings: streamSettings,
        proxySettings: proxySettings,
        mux: mux,
        targetStrategy: targetStrategy,
      );

  factory OutboundDetourConfig.trojan({
    required TrojanClientConfig settings,
    String? tag,
    String? sendThrough,
    StreamConfig? streamSettings,
    ProxyConfig? proxySettings,
    MuxConfig? mux,
    XrayTargetStrategy? targetStrategy,
  }) =>
      OutboundDetourConfig.fromProtocol(
        protocol: XrayOutboundProtocol.trojan,
        sendThrough: sendThrough,
        tag: tag,
        settings: settings,
        streamSettings: streamSettings,
        proxySettings: proxySettings,
        mux: mux,
        targetStrategy: targetStrategy,
      );

  factory OutboundDetourConfig.shadowsocks({
    required ShadowsocksClientConfig settings,
    String? tag,
    String? sendThrough,
    StreamConfig? streamSettings,
    ProxyConfig? proxySettings,
    MuxConfig? mux,
    XrayTargetStrategy? targetStrategy,
  }) =>
      OutboundDetourConfig.fromProtocol(
        protocol: XrayOutboundProtocol.shadowsocks,
        sendThrough: sendThrough,
        tag: tag,
        settings: settings,
        streamSettings: streamSettings,
        proxySettings: proxySettings,
        mux: mux,
        targetStrategy: targetStrategy,
      );

  factory OutboundDetourConfig.socks({
    required SocksClientConfig settings,
    String? tag,
    String? sendThrough,
    StreamConfig? streamSettings,
    ProxyConfig? proxySettings,
    MuxConfig? mux,
    XrayTargetStrategy? targetStrategy,
  }) =>
      OutboundDetourConfig.fromProtocol(
        protocol: XrayOutboundProtocol.socks,
        sendThrough: sendThrough,
        tag: tag,
        settings: settings,
        streamSettings: streamSettings,
        proxySettings: proxySettings,
        mux: mux,
        targetStrategy: targetStrategy,
      );

  factory OutboundDetourConfig.http({
    required HTTPClientConfig settings,
    String? tag,
    String? sendThrough,
    StreamConfig? streamSettings,
    ProxyConfig? proxySettings,
    MuxConfig? mux,
    XrayTargetStrategy? targetStrategy,
  }) =>
      OutboundDetourConfig.fromProtocol(
        protocol: XrayOutboundProtocol.http,
        sendThrough: sendThrough,
        tag: tag,
        settings: settings,
        streamSettings: streamSettings,
        proxySettings: proxySettings,
        mux: mux,
        targetStrategy: targetStrategy,
      );

  factory OutboundDetourConfig.direct({
    String? tag,
    String? sendThrough,
    FreedomConfig? settings,
    StreamConfig? streamSettings,
    ProxyConfig? proxySettings,
    MuxConfig? mux,
    XrayTargetStrategy? targetStrategy,
  }) =>
      OutboundDetourConfig.fromProtocol(
        protocol: XrayOutboundProtocol.freedom,
        sendThrough: sendThrough,
        tag: tag,
        settings: settings,
        streamSettings: streamSettings,
        proxySettings: proxySettings,
        mux: mux,
        targetStrategy: targetStrategy,
      );

  factory OutboundDetourConfig.block({
    String? tag,
    BlackholeConfig? settings,
  }) =>
      OutboundDetourConfig.fromProtocol(
        protocol: XrayOutboundProtocol.blackhole,
        tag: tag,
        settings: settings,
      );

  factory OutboundDetourConfig.loopback({
    String? tag,
    LoopbackConfig? settings,
  }) =>
      OutboundDetourConfig.fromProtocol(
        protocol: XrayOutboundProtocol.loopback,
        tag: tag,
        settings: settings,
      );

  factory OutboundDetourConfig.dns({
    required DNSOutboundConfig settings,
    String? tag,
    String? sendThrough,
    StreamConfig? streamSettings,
    ProxyConfig? proxySettings,
    MuxConfig? mux,
    XrayTargetStrategy? targetStrategy,
  }) =>
      OutboundDetourConfig.fromProtocol(
        protocol: XrayOutboundProtocol.dns,
        sendThrough: sendThrough,
        tag: tag,
        settings: settings,
        streamSettings: streamSettings,
        proxySettings: proxySettings,
        mux: mux,
        targetStrategy: targetStrategy,
      );

  factory OutboundDetourConfig.wireguard({
    required WireGuardConfig settings,
    String? tag,
    String? sendThrough,
    StreamConfig? streamSettings,
    ProxyConfig? proxySettings,
    MuxConfig? mux,
    XrayTargetStrategy? targetStrategy,
  }) =>
      OutboundDetourConfig.fromProtocol(
        protocol: XrayOutboundProtocol.wireguard,
        sendThrough: sendThrough,
        tag: tag,
        settings: settings,
        streamSettings: streamSettings,
        proxySettings: proxySettings,
        mux: mux,
        targetStrategy: targetStrategy,
      );

  factory OutboundDetourConfig.hysteria({
    required HysteriaClientConfig settings,
    String? tag,
    String? sendThrough,
    StreamConfig? streamSettings,
    ProxyConfig? proxySettings,
    MuxConfig? mux,
    XrayTargetStrategy? targetStrategy,
  }) =>
      OutboundDetourConfig.fromProtocol(
        protocol: XrayOutboundProtocol.hysteria,
        sendThrough: sendThrough,
        tag: tag,
        settings: settings,
        streamSettings: streamSettings,
        proxySettings: proxySettings,
        mux: mux,
        targetStrategy: targetStrategy,
      );

  factory OutboundDetourConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'outbound');
    final protocol = map['protocol'] as String;
    final settingsJson = map['settings'];
    final targetStrategyJson = map['targetStrategy'];
    return OutboundDetourConfig(
      protocol: protocol,
      sendThrough: map['sendThrough'] as String?,
      tag: map['tag'] as String?,
      settings: settingsJson == null
          ? null
          : _parseOutboundSettings(protocol, settingsJson),
      streamSettings: map['streamSettings'] == null
          ? null
          : StreamConfig.fromJson(map['streamSettings']),
      proxySettings: map['proxySettings'] == null
          ? null
          : ProxyConfig.fromJson(map['proxySettings']),
      mux: map['mux'] == null ? null : MuxConfig.fromJson(map['mux']),
      targetStrategy: targetStrategyJson == null || targetStrategyJson == ''
          ? null
          : XrayTargetStrategyJson.fromJson(targetStrategyJson),
    );
  }

  const OutboundDetourConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
        'protocol': protocol,
        'sendThrough': sendThrough,
        'tag': tag,
        'settings': settings?.toJson(),
        'streamSettings': streamSettings?.toJson(),
        'proxySettings': proxySettings?.toJson(),
        'mux': mux?.toJson(),
        'targetStrategy': targetStrategy?.toJson(),
      });
}

XrayOutboundSettings _parseOutboundSettings(String protocol, Object? json) {
  return switch (protocol.toLowerCase()) {
    'block' || 'blackhole' => BlackholeConfig.fromJson(json),
    'loopback' => LoopbackConfig.fromJson(json),
    'direct' || 'freedom' => FreedomConfig.fromJson(json),
    'http' => HTTPClientConfig.fromJson(json),
    'socks' => SocksClientConfig.fromJson(json),
    'vless' => VLessOutboundConfig.fromJson(json),
    'vmess' => VMessOutboundConfig.fromJson(json),
    'trojan' => TrojanClientConfig.fromJson(json),
    'shadowsocks' => ShadowsocksClientConfig.fromJson(json),
    'hysteria' => HysteriaClientConfig.fromJson(json),
    'dns' => DNSOutboundConfig.fromJson(json),
    'wireguard' => WireGuardConfig.fromJson(json),
    _ => XrayRawOutboundSettings(asJsonMap(json, '$protocol settings')),
  };
}
