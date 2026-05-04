part of 'apps.dart';

@freezed
abstract class StrategyLeastLoadConfig
    with _$StrategyLeastLoadConfig
    implements XrayStrategySettings {
  const factory StrategyLeastLoadConfig({
    List<StrategyWeight>? costs,
    List<XrayDuration>? baselines,
    int? expected,
    XrayDuration? maxRTT,
    double? tolerance,
  }) = _StrategyLeastLoadConfig;

  factory StrategyLeastLoadConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'leastload strategy');
    return StrategyLeastLoadConfig(
      costs: map['costs'] == null
          ? null
          : asJsonList(map['costs'], StrategyWeight.fromJson),
      baselines: map['baselines'] == null
          ? null
          : asJsonList(map['baselines'], XrayDuration.fromJson),
      expected: map['expected'] as int?,
      maxRTT: map['maxRTT'] == null
          ? null
          : XrayDuration.fromJson(map['maxRTT']),
      tolerance: (map['tolerance'] as num?)?.toDouble(),
    );
  }

  const StrategyLeastLoadConfig._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
    'costs': costs?.map((item) => item.toJson()).toList(),
    'baselines': baselines?.map((item) => item.toJson()).toList(),
    'expected': expected,
    'maxRTT': maxRTT?.toJson(),
    'tolerance': tolerance,
  });
}
