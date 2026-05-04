part of 'apps.dart';

@freezed
abstract class HealthCheckSettings with _$HealthCheckSettings {
  const factory HealthCheckSettings({
    String? destination,
    String? connectivity,
    XrayDuration? interval,
    @JsonKey(name: 'sampling') int? samplingCount,
    XrayDuration? timeout,
    String? httpMethod,
  }) = _HealthCheckSettings;

  factory HealthCheckSettings.fromJson(Object? json) {
    final map = asJsonMap(json, 'health check');
    return HealthCheckSettings(
      destination: map['destination'] as String?,
      connectivity: map['connectivity'] as String?,
      interval: map['interval'] == null
          ? null
          : XrayDuration.fromJson(map['interval']),
      samplingCount: map['sampling'] as int?,
      timeout: map['timeout'] == null
          ? null
          : XrayDuration.fromJson(map['timeout']),
      httpMethod: map['httpMethod'] as String?,
    );
  }

  const HealthCheckSettings._();

  Map<String, dynamic> toJson() => withoutNulls({
    'destination': destination,
    'connectivity': connectivity,
    'interval': interval?.toJson(),
    'sampling': samplingCount,
    'timeout': timeout?.toJson(),
    'httpMethod': httpMethod,
  });
}
