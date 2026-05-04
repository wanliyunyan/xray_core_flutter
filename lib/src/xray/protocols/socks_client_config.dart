part of 'protocol_settings.dart';

@freezed
abstract class SocksClientConfig
    with _$SocksClientConfig
    implements XrayOutboundSettings {
  const factory SocksClientConfig({
    XrayAddress? address,
    int? port,
    int? level,
    String? email,
    @JsonKey(name: 'user') String? username,
    @JsonKey(name: 'pass') String? password,
    List<SocksRemoteConfig>? servers,
  }) = _SocksClientConfig;

  factory SocksClientConfig.single({
    required XrayAddress address,
    required int port,
    int? level,
    String? email,
    String? username,
    String? password,
  }) => SocksClientConfig(
    address: address,
    port: port,
    level: level,
    email: email,
    username: username,
    password: password,
  );

  factory SocksClientConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'socks outbound');
    return SocksClientConfig(
      address: map['address'] == null
          ? null
          : XrayAddress.fromJson(map['address']),
      port: map['port'] as int?,
      level: map['level'] as int?,
      email: map['email'] as String?,
      username: map['user'] as String?,
      password: map['pass'] as String?,
      servers: map['servers'] == null
          ? null
          : asJsonList(map['servers'], SocksRemoteConfig.fromJson),
    );
  }

  const SocksClientConfig._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
    'address': address?.toJson(),
    'port': port,
    'level': level,
    'email': email,
    'user': username,
    'pass': password,
    'servers': servers?.map((item) => item.toJson()).toList(),
  });
}
