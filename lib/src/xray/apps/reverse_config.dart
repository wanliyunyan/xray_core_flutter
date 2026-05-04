part of 'apps.dart';

@freezed
abstract class ReverseConfig with _$ReverseConfig {
  const factory ReverseConfig({
    List<BridgeConfig>? bridges,
    List<PortalConfig>? portals,
  }) = _ReverseConfig;

  factory ReverseConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'reverse');
    return ReverseConfig(
      bridges: map['bridges'] == null
          ? null
          : asJsonList(map['bridges'], BridgeConfig.fromJson),
      portals: map['portals'] == null
          ? null
          : asJsonList(map['portals'], PortalConfig.fromJson),
    );
  }

  const ReverseConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'bridges': bridges?.map((item) => item.toJson()).toList(),
    'portals': portals?.map((item) => item.toJson()).toList(),
  });
}
