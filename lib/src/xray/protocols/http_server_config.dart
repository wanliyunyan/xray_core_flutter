part of 'protocol_settings.dart';

@freezed
abstract class HTTPServerConfig
    with _$HTTPServerConfig
    implements XrayInboundSettings {
  const factory HTTPServerConfig({
    List<HTTPAccount>? users,
    List<HTTPAccount>? accounts,
    @JsonKey(name: 'allowTransparent') bool? transparent,
    int? userLevel,
  }) = _HTTPServerConfig;

  factory HTTPServerConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'http inbound');
    return HTTPServerConfig(
      users: map['users'] == null
          ? null
          : asJsonList(map['users'], HTTPAccount.fromJson),
      accounts: map['accounts'] == null
          ? null
          : asJsonList(map['accounts'], HTTPAccount.fromJson),
      transparent: map['allowTransparent'] as bool?,
      userLevel: map['userLevel'] as int?,
    );
  }

  const HTTPServerConfig._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
        'users': users?.map((item) => item.toJson()).toList(),
        'accounts': accounts?.map((item) => item.toJson()).toList(),
        'allowTransparent': transparent,
        'userLevel': userLevel,
      });
}
