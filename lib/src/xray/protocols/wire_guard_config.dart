part of 'protocol_settings.dart';

@freezed
abstract class WireGuardConfig
    with _$WireGuardConfig
    implements XrayInboundSettings, XrayOutboundSettings {
  const factory WireGuardConfig({
    bool? noKernelTun,
    required String secretKey,
    List<String>? address,
    List<String>? remoteDNS,
    List<WireGuardPeerConfig>? peers,
    @JsonKey(name: 'mtu') int? mtu,
    List<int>? reserved,
  }) = _WireGuardConfig;

  factory WireGuardConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'wireguard');
    return WireGuardConfig(
      noKernelTun: map['noKernelTun'] as bool?,
      secretKey: map['secretKey'] as String,
      address: (map['address'] as List?)?.cast<String>(),
      remoteDNS: (map['remoteDNS'] as List?)?.cast<String>(),
      peers: map['peers'] == null
          ? null
          : asJsonList(map['peers'], WireGuardPeerConfig.fromJson),
      mtu: map['mtu'] as int?,
      reserved: (map['reserved'] as List?)?.cast<int>(),
    );
  }

  const WireGuardConfig._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
    'noKernelTun': noKernelTun,
    'secretKey': secretKey,
    'address': address,
    'remoteDNS': remoteDNS,
    'peers': peers?.map((item) => item.toJson()).toList(),
    'mtu': mtu,
    'reserved': reserved,
  });
}
