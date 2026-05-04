part of 'protocol_settings.dart';

@freezed
abstract class ShadowsocksUserConfig with _$ShadowsocksUserConfig {
  const factory ShadowsocksUserConfig({
    @JsonKey(name: 'method') String? cipher,
    required String password,
    int? level,
    String? email,
    XrayAddress? address,
    int? port,
  }) = _ShadowsocksUserConfig;

  factory ShadowsocksUserConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'shadowsocks user');
    return ShadowsocksUserConfig(
      cipher: map['method'] as String?,
      password: map['password'] as String,
      level: map['level'] as int?,
      email: map['email'] as String?,
      address: map['address'] == null
          ? null
          : XrayAddress.fromJson(map['address']),
      port: map['port'] as int?,
    );
  }

  const ShadowsocksUserConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'method': cipher,
    'password': password,
    'level': level,
    'email': email,
    'address': address?.toJson(),
    'port': port,
  });
}
