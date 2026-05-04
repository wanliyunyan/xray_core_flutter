part of 'protocol_settings.dart';

@freezed
abstract class ShadowsocksClientConfig
    with _$ShadowsocksClientConfig
    implements XrayOutboundSettings {
  const factory ShadowsocksClientConfig({
    XrayAddress? address,
    int? port,
    int? level,
    String? email,
    @JsonKey(name: 'method') String? cipher,
    String? password,
    bool? uot,
    int? uotVersion,
    List<ShadowsocksServerTarget>? servers,
  }) = _ShadowsocksClientConfig;

  factory ShadowsocksClientConfig.single({
    required XrayAddress address,
    required int port,
    int? level,
    String? email,
    required String cipher,
    required String password,
    bool? uot,
    int? uotVersion,
  }) => ShadowsocksClientConfig(
    address: address,
    port: port,
    level: level,
    email: email,
    cipher: cipher,
    password: password,
    uot: uot,
    uotVersion: uotVersion,
  );

  factory ShadowsocksClientConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'shadowsocks outbound');
    return ShadowsocksClientConfig(
      address: map['address'] == null
          ? null
          : XrayAddress.fromJson(map['address']),
      port: map['port'] as int?,
      level: map['level'] as int?,
      email: map['email'] as String?,
      cipher: map['method'] as String?,
      password: map['password'] as String?,
      uot: map['uot'] as bool?,
      uotVersion: map['uotVersion'] as int?,
      servers: map['servers'] == null
          ? null
          : asJsonList(map['servers'], ShadowsocksServerTarget.fromJson),
    );
  }

  const ShadowsocksClientConfig._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
    'address': address?.toJson(),
    'port': port,
    'level': level,
    'email': email,
    'method': cipher,
    'password': password,
    'uot': uot,
    'uotVersion': uotVersion,
    'servers': servers?.map((item) => item.toJson()).toList(),
  });
}
