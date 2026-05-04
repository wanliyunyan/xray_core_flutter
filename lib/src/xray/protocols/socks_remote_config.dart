part of 'protocol_settings.dart';

@freezed
abstract class SocksRemoteConfig with _$SocksRemoteConfig {
  const factory SocksRemoteConfig({
    required XrayAddress address,
    required int port,
    List<SocksAccount>? users,
  }) = _SocksRemoteConfig;

  factory SocksRemoteConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'socks remote');
    return SocksRemoteConfig(
      address: XrayAddress.fromJson(map['address']),
      port: map['port'] as int,
      users: map['users'] == null
          ? null
          : asJsonList(map['users'], SocksAccount.fromJson),
    );
  }

  const SocksRemoteConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'address': address.toJson(),
    'port': port,
    'users': users?.map((item) => item.toJson()).toList(),
  });
}
