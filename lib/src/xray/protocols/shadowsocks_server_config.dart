part of 'protocol_settings.dart';

@freezed
abstract class ShadowsocksServerConfig
    with _$ShadowsocksServerConfig
    implements XrayInboundSettings {
  const factory ShadowsocksServerConfig({
    @JsonKey(name: 'method') String? cipher,
    String? password,
    int? level,
    String? email,
    List<ShadowsocksUserConfig>? users,
    List<ShadowsocksUserConfig>? clients,
    @JsonKey(name: 'network') XrayNetworkList? networkList,
  }) = _ShadowsocksServerConfig;

  factory ShadowsocksServerConfig.single({
    required String cipher,
    required String password,
    int? level,
    String? email,
    XrayNetworkList? networkList,
  }) =>
      ShadowsocksServerConfig(
        cipher: cipher,
        password: password,
        level: level,
        email: email,
        networkList: networkList,
      );

  factory ShadowsocksServerConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'shadowsocks inbound');
    return ShadowsocksServerConfig(
      cipher: map['method'] as String?,
      password: map['password'] as String?,
      level: map['level'] as int?,
      email: map['email'] as String?,
      users: map['users'] == null
          ? null
          : asJsonList(map['users'], ShadowsocksUserConfig.fromJson),
      clients: map['clients'] == null
          ? null
          : asJsonList(map['clients'], ShadowsocksUserConfig.fromJson),
      networkList: map['network'] == null
          ? null
          : XrayNetworkList.fromJson(map['network']),
    );
  }

  const ShadowsocksServerConfig._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
        'method': cipher,
        'password': password,
        'level': level,
        'email': email,
        'users': users?.map((item) => item.toJson()).toList(),
        'clients': clients?.map((item) => item.toJson()).toList(),
        'network': networkList?.toJson(),
      });
}
