part of 'apps.dart';

@freezed
abstract class MetricsConfig with _$MetricsConfig {
  // Freezed forwards this constructor annotation to the generated class.
  // ignore: invalid_annotation_target
  @JsonSerializable(includeIfNull: false, createFieldMap: true)
  const factory MetricsConfig({String? tag, String? listen}) = _MetricsConfig;

  factory MetricsConfig.tag(String tag, {String? listen}) =>
      MetricsConfig(tag: tag, listen: listen);

  factory MetricsConfig.listen(String listen, {String? tag}) =>
      MetricsConfig(tag: tag, listen: listen);

  factory MetricsConfig.fromJson(Object? json) =>
      _$MetricsConfigFromJson(asJsonMap(json, 'metrics'));
}
