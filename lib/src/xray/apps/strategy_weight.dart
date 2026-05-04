part of 'apps.dart';

@freezed
abstract class StrategyWeight with _$StrategyWeight {
  const factory StrategyWeight({String? regexp, double? weight}) =
      _StrategyWeight;

  factory StrategyWeight.fromJson(Object? json) {
    final map = asJsonMap(json, 'strategy weight');
    return StrategyWeight(
      regexp: map['regexp'] as String?,
      weight: (map['weight'] as num?)?.toDouble(),
    );
  }

  const StrategyWeight._();

  Map<String, dynamic> toJson() =>
      withoutNulls({'regexp': regexp, 'weight': weight});
}
