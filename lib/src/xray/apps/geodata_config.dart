part of 'apps.dart';

@freezed
abstract class GeodataConfig with _$GeodataConfig {
  const factory GeodataConfig({
    String? cron,
    String? outbound,
    List<GeodataAssetConfig>? assets,
  }) = _GeodataConfig;

  factory GeodataConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'geodata');
    return GeodataConfig(
      cron: map['cron'] as String?,
      outbound: map['outbound'] as String?,
      assets: map['assets'] == null
          ? null
          : asJsonList(map['assets'], GeodataAssetConfig.fromJson),
    );
  }

  const GeodataConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'cron': cron,
    'outbound': outbound,
    'assets': assets?.map((item) => item.toJson()).toList(),
  });
}
