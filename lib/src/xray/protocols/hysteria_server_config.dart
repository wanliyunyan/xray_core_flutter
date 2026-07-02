part of 'protocol_settings.dart';

@freezed
abstract class HysteriaServerConfig
    with _$HysteriaServerConfig
    implements XrayInboundSettings {
  const factory HysteriaServerConfig({
    int? version,
    List<HysteriaUserConfig>? users,
    List<HysteriaUserConfig>? clients,
  }) = _HysteriaServerConfig;

  factory HysteriaServerConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'hysteria inbound');
    return HysteriaServerConfig(
      version: map['version'] as int?,
      users: map['users'] == null
          ? null
          : asJsonList(map['users'], HysteriaUserConfig.fromJson),
      clients: map['clients'] == null
          ? null
          : asJsonList(map['clients'], HysteriaUserConfig.fromJson),
    );
  }

  const HysteriaServerConfig._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
        'version': version,
        'users': users?.map((item) => item.toJson()).toList(),
        'clients': clients?.map((item) => item.toJson()).toList(),
      });
}
