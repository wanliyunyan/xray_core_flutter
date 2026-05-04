part of 'apps.dart';

@freezed
abstract class StatsConfig with _$StatsConfig {
  const factory StatsConfig() = _StatsConfig;

  factory StatsConfig.fromJson(Object? json) {
    asJsonMap(json, 'stats');
    return const StatsConfig();
  }

  const StatsConfig._();

  Map<String, dynamic> toJson() => {};
}
