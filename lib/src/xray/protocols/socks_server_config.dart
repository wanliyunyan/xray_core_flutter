part of 'protocol_settings.dart';

@freezed
abstract class SocksServerConfig
    with _$SocksServerConfig
    implements XrayInboundSettings {
  const factory SocksServerConfig({
    @JsonKey(name: 'auth') SocksAuthMethod? authMethod,
    List<SocksAccount>? accounts,
    bool? udp,
    @JsonKey(name: 'ip') XrayAddress? host,
    int? userLevel,
  }) = _SocksServerConfig;

  factory SocksServerConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'socks inbound');
    return SocksServerConfig(
      authMethod: map['auth'] == null
          ? null
          : SocksAuthMethod.fromJson(map['auth']),
      accounts: map['accounts'] == null
          ? null
          : asJsonList(map['accounts'], SocksAccount.fromJson),
      udp: map['udp'] as bool?,
      host: map['ip'] == null ? null : XrayAddress.fromJson(map['ip']),
      userLevel: map['userLevel'] as int?,
    );
  }

  const SocksServerConfig._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
    'auth': authMethod?.toJson(),
    'accounts': accounts?.map((item) => item.toJson()).toList(),
    'udp': udp,
    'ip': host?.toJson(),
    'userLevel': userLevel,
  });
}
