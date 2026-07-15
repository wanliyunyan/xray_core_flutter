part of 'protocol_settings.dart';

@freezed
abstract class ShadowsocksServerTarget with _$ShadowsocksServerTarget {
  const factory ShadowsocksServerTarget({
    required XrayAddress address,
    required int port,
    int? level,
    String? email,
    @JsonKey(name: 'method') String? cipher,
    required String password,
  }) = _ShadowsocksServerTarget;

  factory ShadowsocksServerTarget.fromJson(Object? json) {
    final map = asJsonMap(json, 'shadowsocks server');
    return ShadowsocksServerTarget(
      address: XrayAddress.fromJson(map['address']),
      port: map['port'] as int,
      level: map['level'] as int?,
      email: map['email'] as String?,
      cipher: map['method'] as String?,
      password: map['password'] as String,
    );
  }

  const ShadowsocksServerTarget._();

  Map<String, dynamic> toJson() => withoutNulls({
        'address': address.toJson(),
        'port': port,
        'level': level,
        'email': email,
        'method': cipher,
        'password': password,
      });
}
