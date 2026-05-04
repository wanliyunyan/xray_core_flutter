part of 'apps.dart';

@freezed
abstract class StrategyConfig with _$StrategyConfig {
  const factory StrategyConfig({
    BalancingStrategyType? type,
    XrayStrategySettings? settings,
  }) = _StrategyConfig;

  factory StrategyConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'strategy');
    final type = map['type'] == null
        ? null
        : BalancingStrategyType.fromJson(map['type']);
    return StrategyConfig(
      type: type,
      settings: map['settings'] == null
          ? null
          : type == BalancingStrategyType.leastload
          ? StrategyLeastLoadConfig.fromJson(map['settings'])
          : XrayRawStrategySettings(asJsonMap(map['settings'], 'settings')),
    );
  }

  const StrategyConfig._();

  Map<String, dynamic> toJson() =>
      withoutNulls({'type': type?.toJson(), 'settings': settings?.toJson()});
}
