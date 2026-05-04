part of 'protocol_settings.dart';

@freezed
abstract class WireGuardConfig
    with _$WireGuardConfig
    implements XrayInboundSettings, XrayOutboundSettings {
  const factory WireGuardConfig({
    bool? noKernelTun,
    required String secretKey,
    List<String>? address,
    List<WireGuardPeerConfig>? peers,
    @JsonKey(name: 'mtu') int? mtu,
    @JsonKey(name: 'workers') int? numWorkers,
    List<int>? reserved,
    XrayTargetStrategy? domainStrategy,
  }) = _WireGuardConfig;

  factory WireGuardConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'wireguard');
    return WireGuardConfig(
      noKernelTun: map['noKernelTun'] as bool?,
      secretKey: map['secretKey'] as String,
      address: (map['address'] as List?)?.cast<String>(),
      peers: map['peers'] == null
          ? null
          : asJsonList(map['peers'], WireGuardPeerConfig.fromJson),
      mtu: map['mtu'] as int?,
      numWorkers: map['workers'] as int?,
      reserved: (map['reserved'] as List?)?.cast<int>(),
      domainStrategy: map['domainStrategy'] == null
          ? null
          : XrayTargetStrategyJson.fromJson(map['domainStrategy']),
    );
  }

  const WireGuardConfig._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
    'noKernelTun': noKernelTun,
    'secretKey': secretKey,
    'address': address,
    'peers': peers?.map((item) => item.toJson()).toList(),
    'mtu': mtu,
    'workers': numWorkers,
    'reserved': reserved,
    'domainStrategy': domainStrategy?.toJson(),
  });
}
