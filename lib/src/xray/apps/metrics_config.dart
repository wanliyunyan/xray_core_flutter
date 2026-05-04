part of 'apps.dart';

@freezed
abstract class MetricsConfig with _$MetricsConfig {
  const factory MetricsConfig({String? tag, String? listen}) = _MetricsConfig;

  factory MetricsConfig.tag(String tag, {String? listen}) =>
      MetricsConfig(tag: tag, listen: listen);

  factory MetricsConfig.listen(String listen, {String? tag}) =>
      MetricsConfig(tag: tag, listen: listen);

  factory MetricsConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'metrics');
    return MetricsConfig(
      tag: map['tag'] as String?,
      listen: map['listen'] as String?,
    );
  }

  const MetricsConfig._();

  Map<String, dynamic> toJson() => withoutNulls({'tag': tag, 'listen': listen});
}
