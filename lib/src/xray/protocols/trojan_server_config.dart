part of 'protocol_settings.dart';

@freezed
abstract class TrojanServerConfig
    with _$TrojanServerConfig
    implements XrayInboundSettings {
  const factory TrojanServerConfig({
    List<TrojanUserConfig>? clients,
    List<TrojanInboundFallback>? fallbacks,
  }) = _TrojanServerConfig;

  factory TrojanServerConfig.single({
    required TrojanUserConfig client,
    List<TrojanInboundFallback>? fallbacks,
  }) => TrojanServerConfig(clients: [client], fallbacks: fallbacks);

  factory TrojanServerConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'trojan inbound');
    return TrojanServerConfig(
      clients: map['clients'] == null
          ? null
          : asJsonList(map['clients'], TrojanUserConfig.fromJson),
      fallbacks: map['fallbacks'] == null
          ? null
          : asJsonList(map['fallbacks'], TrojanInboundFallback.fromJson),
    );
  }

  const TrojanServerConfig._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
    'clients': clients?.map((item) => item.toJson()).toList(),
    'fallbacks': fallbacks?.map((item) => item.toJson()).toList(),
  });
}
