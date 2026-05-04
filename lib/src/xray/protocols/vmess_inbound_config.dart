part of 'protocol_settings.dart';

@freezed
abstract class VMessInboundConfig
    with _$VMessInboundConfig
    implements XrayInboundSettings {
  const factory VMessInboundConfig({
    @JsonKey(name: 'clients') List<VMessUser>? users,
    @JsonKey(name: 'default') VMessDefaultConfig? defaults,
  }) = _VMessInboundConfig;

  factory VMessInboundConfig.single({
    required VMessUser user,
    VMessDefaultConfig? defaults,
  }) => VMessInboundConfig(users: [user], defaults: defaults);

  factory VMessInboundConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'vmess inbound');
    return VMessInboundConfig(
      users: map['clients'] == null
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
    'clients': users?.map((item) => item.toJson()).toList(),
    'default': defaults?.toJson(),
  });
}
