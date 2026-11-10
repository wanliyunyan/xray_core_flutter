part of 'apps.dart';

@freezed
abstract class GeodataAssetConfig with _$GeodataAssetConfig {
  // Freezed forwards this constructor annotation to the generated class.
  // ignore: invalid_annotation_target
  @JsonSerializable(includeIfNull: false, createFieldMap: true)
  const factory GeodataAssetConfig({
    /// HTTPS asset URL. Core v26.11.9 rewrites XTLS/Xray-rules-dat GitHub and
    /// raw GitHub URLs ending in .dat to .dat.gz and emits a deprecation warning.
    required String url,
    required String file,
  }) = _GeodataAssetConfig;

  factory GeodataAssetConfig.fromJson(Object? json) =>
      _$GeodataAssetConfigFromJson(asJsonMap(json, 'geodata asset'));
}
