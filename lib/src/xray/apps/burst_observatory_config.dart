part of 'apps.dart';

@freezed
abstract class BurstObservatoryConfig with _$BurstObservatoryConfig {
  const factory BurstObservatoryConfig({
    List<String>? subjectSelector,
    @JsonKey(name: 'pingConfig') required HealthCheckSettings healthCheck,
  }) = _BurstObservatoryConfig;

  factory BurstObservatoryConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'burst observatory');
    return BurstObservatoryConfig(
      subjectSelector: (map['subjectSelector'] as List?)?.cast<String>(),
      healthCheck: HealthCheckSettings.fromJson(map['pingConfig']),
    );
  }

  const BurstObservatoryConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'subjectSelector': subjectSelector,
    'pingConfig': healthCheck.toJson(),
  });
}
