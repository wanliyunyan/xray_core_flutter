part of 'apps.dart';

@freezed
abstract class VersionConfig with _$VersionConfig {
  const factory VersionConfig({
    @JsonKey(name: 'min') String? minVersion,
    @JsonKey(name: 'max') String? maxVersion,
  }) = _VersionConfig;

  factory VersionConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'version');
    return VersionConfig(
      minVersion: map['min'] as String?,
      maxVersion: map['max'] as String?,
    );
  }

  const VersionConfig._();

  Map<String, dynamic> toJson() =>
      withoutNulls({'min': minVersion, 'max': maxVersion});
}
