part of 'apps.dart';

@freezed
abstract class VersionConfig with _$VersionConfig {
  // Freezed forwards this constructor annotation to the generated class.
  // ignore: invalid_annotation_target
  @JsonSerializable(includeIfNull: false, createFieldMap: true)
  const factory VersionConfig({
    @JsonKey(name: 'min') String? minVersion,
    @JsonKey(name: 'max') String? maxVersion,
  }) = _VersionConfig;

  factory VersionConfig.fromJson(Object? json) =>
      _$VersionConfigFromJson(asJsonMap(json, 'version'));
}
