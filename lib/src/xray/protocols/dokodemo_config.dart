part of 'protocol_settings.dart';

@freezed
abstract class DokodemoConfig
    with _$DokodemoConfig
    implements XrayInboundSettings {
  const factory DokodemoConfig({
    XrayNetworkList? allowedNetwork,
    XrayAddress? rewriteAddress,
    int? rewritePort,
    XrayAddress? address,
    int? port,
    Map<String, String>? portMap,
    @JsonKey(name: 'network') XrayNetworkList? network,
    bool? followRedirect,
    int? userLevel,
  }) = _DokodemoConfig;

  factory DokodemoConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'dokodemo inbound');
    return DokodemoConfig(
      allowedNetwork: map['allowedNetwork'] == null
          ? null
          : XrayNetworkList.fromJson(map['allowedNetwork']),
      rewriteAddress: map['rewriteAddress'] == null
          ? null
          : XrayAddress.fromJson(map['rewriteAddress']),
      rewritePort: map['rewritePort'] as int?,
      address:
          map['address'] == null ? null : XrayAddress.fromJson(map['address']),
      port: map['port'] as int?,
      portMap: (map['portMap'] as Map?)?.cast<String, String>(),
      network: map['network'] == null
          ? null
          : XrayNetworkList.fromJson(map['network']),
      followRedirect: map['followRedirect'] as bool?,
      userLevel: map['userLevel'] as int?,
    );
  }

  const DokodemoConfig._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
        'allowedNetwork': allowedNetwork?.toJson(),
        'rewriteAddress': rewriteAddress?.toJson(),
        'rewritePort': rewritePort,
        'address': address?.toJson(),
        'port': port,
        'portMap': portMap,
        'network': network?.toJson(),
        'followRedirect': followRedirect,
        'userLevel': userLevel,
      });
}
