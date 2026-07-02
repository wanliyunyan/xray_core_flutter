part of 'protocol_settings.dart';

@freezed
abstract class DNSOutboundConfig
    with _$DNSOutboundConfig
    implements XrayOutboundSettings {
  const factory DNSOutboundConfig({
    XrayNetwork? rewriteNetwork,
    XrayAddress? rewriteAddress,
    int? rewritePort,
    XrayNetwork? network,
    XrayAddress? address,
    int? port,
    int? userLevel,
    List<DNSOutboundRuleConfig>? rules,
    String? nonIPQuery,
    List<int>? blockTypes,
  }) = _DNSOutboundConfig;

  factory DNSOutboundConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'dns outbound');
    return DNSOutboundConfig(
      rewriteNetwork: map['rewriteNetwork'] == null
          ? null
          : XrayNetwork.fromJson(map['rewriteNetwork']),
      rewriteAddress: map['rewriteAddress'] == null
          ? null
          : XrayAddress.fromJson(map['rewriteAddress']),
      rewritePort: map['rewritePort'] as int?,
      network:
          map['network'] == null ? null : XrayNetwork.fromJson(map['network']),
      address:
          map['address'] == null ? null : XrayAddress.fromJson(map['address']),
      port: map['port'] as int?,
      userLevel: map['userLevel'] as int?,
      rules: map['rules'] == null
          ? null
          : asJsonList(map['rules'], DNSOutboundRuleConfig.fromJson),
      nonIPQuery: map['nonIPQuery'] as String?,
      blockTypes: (map['blockTypes'] as List?)?.cast<int>(),
    );
  }

  const DNSOutboundConfig._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
        'rewriteNetwork': rewriteNetwork?.name,
        'rewriteAddress': rewriteAddress?.toJson(),
        'rewritePort': rewritePort,
        'network': network?.name,
        'address': address?.toJson(),
        'port': port,
        'userLevel': userLevel,
        'rules': rules?.map((item) => item.toJson()).toList(),
        'nonIPQuery': nonIPQuery,
        'blockTypes': blockTypes,
      });
}
