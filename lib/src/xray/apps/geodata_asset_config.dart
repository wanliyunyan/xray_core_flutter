part of 'apps.dart';

@freezed
abstract class GeodataAssetConfig with _$GeodataAssetConfig {
  // Freezed forwards this constructor annotation to the generated class.
  // ignore: invalid_annotation_target
  @JsonSerializable(includeIfNull: false, createFieldMap: true)
  const factory GeodataAssetConfig({
    required String url,
    required String file,
  }) = _GeodataAssetConfig;

  factory GeodataAssetConfig.fromJson(Object? json) =>
      _$GeodataAssetConfigFromJson(asJsonMap(json, 'geodata asset'));
}
