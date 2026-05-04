part of 'protocol_settings.dart';

@freezed
abstract class HTTPServerConfig
    with _$HTTPServerConfig
    implements XrayInboundSettings {
  const factory HTTPServerConfig({
    List<HTTPAccount>? accounts,
    @JsonKey(name: 'allowTransparent') bool? transparent,
    int? userLevel,
  }) = _HTTPServerConfig;

  factory HTTPServerConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'http inbound');
    return HTTPServerConfig(
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
    'accounts': accounts?.map((item) => item.toJson()).toList(),
    'allowTransparent': transparent,
    'userLevel': userLevel,
  });
}
