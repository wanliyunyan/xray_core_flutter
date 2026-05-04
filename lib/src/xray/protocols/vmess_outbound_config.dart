part of 'protocol_settings.dart';

@freezed
abstract class VMessOutboundConfig
    with _$VMessOutboundConfig
    implements XrayOutboundSettings {
  const factory VMessOutboundConfig({
    XrayAddress? address,
    int? port,
    int? level,
    String? email,
    String? id,
    VmessSecurity? security,
    String? experiments,
    @JsonKey(name: 'vnext') List<VMessOutboundTarget>? receivers,
  }) = _VMessOutboundConfig;

  factory VMessOutboundConfig.single({
    required XrayAddress address,
    required int port,
    int? level,
    String? email,
    required String id,
    VmessSecurity? security,
    String? experiments,
  }) => VMessOutboundConfig(
    address: address,
    port: port,
    level: level,
    email: email,
    id: id,
    security: security,
    experiments: experiments,
  );

  factory VMessOutboundConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'vmess outbound');
    return VMessOutboundConfig(
      address: map['address'] == null
          ? null
          : XrayAddress.fromJson(map['address']),
      port: map['port'] as int?,
      level: map['level'] as int?,
      email: map['email'] as String?,
      id: map['id'] as String?,
      security: map['security'] == null
          ? null
          : VmessSecurity.fromJson(map['security']),
      experiments: map['experiments'] as String?,
      receivers: map['vnext'] == null
          ? null
          : asJsonList(map['vnext'], VMessOutboundTarget.fromJson),
    );
  }

  const VMessOutboundConfig._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
    'address': address?.toJson(),
    'port': port,
    'level': level,
    'email': email,
    'id': id,
    'security': security?.toJson(),
    'experiments': experiments,
    'vnext': receivers?.map((item) => item.toJson()).toList(),
  });
}
