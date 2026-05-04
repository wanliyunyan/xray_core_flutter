part of 'protocol_settings.dart';

@freezed
abstract class HTTPClientConfig
    with _$HTTPClientConfig
    implements XrayOutboundSettings {
  const factory HTTPClientConfig({
    XrayAddress? address,
    int? port,
    int? level,
    String? email,
    @JsonKey(name: 'user') String? username,
    @JsonKey(name: 'pass') String? password,
    List<HTTPRemoteConfig>? servers,
    Map<String, String>? headers,
  }) = _HTTPClientConfig;

  factory HTTPClientConfig.single({
    required XrayAddress address,
    required int port,
    int? level,
    String? email,
    String? username,
    String? password,
    Map<String, String>? headers,
  }) => HTTPClientConfig(
    address: address,
    port: port,
    level: level,
    email: email,
    username: username,
    password: password,
    headers: headers,
  );

  factory HTTPClientConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'http outbound');
    return HTTPClientConfig(
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
          : asJsonList(map['servers'], HTTPRemoteConfig.fromJson),
      headers: (map['headers'] as Map?)?.cast<String, String>(),
    );
  }

  const HTTPClientConfig._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
    'address': address?.toJson(),
    'port': port,
    'level': level,
    'email': email,
    'user': username,
    'pass': password,
    'servers': servers?.map((item) => item.toJson()).toList(),
    'headers': headers,
  });
}
