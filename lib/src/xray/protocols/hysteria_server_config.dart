part of 'protocol_settings.dart';

@freezed
abstract class HysteriaServerConfig
    with _$HysteriaServerConfig
    implements XrayInboundSettings {
  const factory HysteriaServerConfig({
    int? version,
    @JsonKey(name: 'clients') List<HysteriaUserConfig>? users,
  }) = _HysteriaServerConfig;

  factory HysteriaServerConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'hysteria inbound');
    return HysteriaServerConfig(
      version: map['version'] as int?,
      users: map['clients'] == null
          ? null
          : asJsonList(map['clients'], HysteriaUserConfig.fromJson),
    );
  }

  const HysteriaServerConfig._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
    'version': version,
    'clients': users?.map((item) => item.toJson()).toList(),
  });
}
