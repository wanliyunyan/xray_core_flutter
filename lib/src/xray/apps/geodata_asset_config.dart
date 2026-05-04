part of 'apps.dart';

@freezed
abstract class GeodataAssetConfig with _$GeodataAssetConfig {
  const factory GeodataAssetConfig({
    required String url,
    required String file,
  }) = _GeodataAssetConfig;

  factory GeodataAssetConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'geodata asset');
    return GeodataAssetConfig(
      url: map['url'] as String,
      file: map['file'] as String,
    );
  }

  const GeodataAssetConfig._();

  Map<String, dynamic> toJson() => withoutNulls({'url': url, 'file': file});
}
