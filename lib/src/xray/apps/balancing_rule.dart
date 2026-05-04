part of 'apps.dart';

@freezed
abstract class BalancingRule with _$BalancingRule {
  const factory BalancingRule({
    required String tag,
    @JsonKey(name: 'selector') required XrayStringList selectors,
    StrategyConfig? strategy,
    String? fallbackTag,
  }) = _BalancingRule;

  factory BalancingRule.fromJson(Object? json) {
    final map = asJsonMap(json, 'balancing rule');
    return BalancingRule(
      tag: map['tag'] as String,
      selectors: XrayStringList.fromJson(map['selector']),
      strategy: map['strategy'] == null
          ? null
          : StrategyConfig.fromJson(map['strategy']),
      fallbackTag: map['fallbackTag'] as String?,
    );
  }

  const BalancingRule._();

  Map<String, dynamic> toJson() => withoutNulls({
    'tag': tag,
    'selector': selectors.toJson(),
    'strategy': strategy?.toJson(),
    'fallbackTag': fallbackTag,
  });
}
