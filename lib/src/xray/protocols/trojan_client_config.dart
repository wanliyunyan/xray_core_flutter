part of 'protocol_settings.dart';

@freezed
abstract class TrojanClientConfig
    with _$TrojanClientConfig
    implements XrayOutboundSettings {
  const factory TrojanClientConfig({
    XrayAddress? address,
    int? port,
    int? level,
    String? email,
    String? password,
    String? flow,
    List<TrojanServerTarget>? servers,
  }) = _TrojanClientConfig;

  factory TrojanClientConfig.single({
    required XrayAddress address,
    required int port,
    int? level,
    String? email,
    required String password,
  }) => TrojanClientConfig(
    address: address,
    port: port,
    level: level,
    email: email,
    password: password,
  );

  factory TrojanClientConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'trojan outbound');
    return TrojanClientConfig(
      address: map['address'] == null
          ? null
          : XrayAddress.fromJson(map['address']),
      port: map['port'] as int?,
      level: map['level'] as int?,
      email: map['email'] as String?,
      password: map['password'] as String?,
      flow: map['flow'] as String?,
      servers: map['servers'] == null
          ? null
          : asJsonList(map['servers'], TrojanServerTarget.fromJson),
    );
  }

  const TrojanClientConfig._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
    'address': address?.toJson(),
    'port': port,
    'level': level,
    'email': email,
    'password': password,
    'flow': flow,
    'servers': servers?.map((item) => item.toJson()).toList(),
  });
}
