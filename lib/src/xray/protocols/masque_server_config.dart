part of 'protocol_settings.dart';

@freezed
abstract class MasqueServerConfig
    with _$MasqueServerConfig
    implements XrayInboundSettings {
  const factory MasqueServerConfig({
    List<MasqueUserConfig>? users,
    List<MasqueUserConfig>? clients,
    List<String>? address,
    int? mtu,
  }) = _MasqueServerConfig;

  factory MasqueServerConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'MasqueServerConfig');
    return MasqueServerConfig(
      users: map['users'] == null
          ? null
          : asJsonList(map['users'], MasqueUserConfig.fromJson),
      clients: map['clients'] == null
          ? null
          : asJsonList(map['clients'], MasqueUserConfig.fromJson),
      address: (map['address'] as List?)?.cast<String>(),
      mtu: map['mtu'] as int?,
    );
  }

  const MasqueServerConfig._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
    'users': users?.map((item) => item.toJson()).toList(),
    'clients': clients?.map((item) => item.toJson()).toList(),
    'address': address,
    'mtu': mtu,
  });
}
