part of 'protocol_settings.dart';

@freezed
abstract class VMessInboundConfig
    with _$VMessInboundConfig
    implements XrayInboundSettings {
  const factory VMessInboundConfig({
    List<VMessUser>? users,
    List<VMessUser>? clients,
    @JsonKey(name: 'default') VMessDefaultConfig? defaults,
  }) = _VMessInboundConfig;

  factory VMessInboundConfig.single({
    required VMessUser user,
    VMessDefaultConfig? defaults,
  }) =>
      VMessInboundConfig(clients: [user], defaults: defaults);

  factory VMessInboundConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'vmess inbound');
    return VMessInboundConfig(
      users: map['users'] == null
          ? null
          : asJsonList(map['users'], VMessUser.fromJson),
      clients: map['clients'] == null
          ? null
          : asJsonList(map['clients'], VMessUser.fromJson),
      defaults: map['default'] == null
          ? null
          : VMessDefaultConfig.fromJson(map['default']),
    );
  }

  const VMessInboundConfig._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
        'users': users?.map((item) => item.toJson()).toList(),
        'clients': clients?.map((item) => item.toJson()).toList(),
        'default': defaults?.toJson(),
      });
}
