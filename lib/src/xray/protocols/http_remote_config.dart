part of 'protocol_settings.dart';

@freezed
abstract class HTTPRemoteConfig with _$HTTPRemoteConfig {
  const factory HTTPRemoteConfig({
    required XrayAddress address,
    required int port,
    List<HTTPAccount>? users,
  }) = _HTTPRemoteConfig;

  factory HTTPRemoteConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'http remote');
    return HTTPRemoteConfig(
      address: XrayAddress.fromJson(map['address']),
      port: map['port'] as int,
      users: map['users'] == null
          ? null
          : asJsonList(map['users'], HTTPAccount.fromJson),
    );
  }

  const HTTPRemoteConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'address': address.toJson(),
    'port': port,
    'users': users?.map((item) => item.toJson()).toList(),
  });
}
