part of 'apps.dart';

@freezed
abstract class StrategyWeight with _$StrategyWeight {
  const factory StrategyWeight({bool? regexp, String? match, double? value}) =
      _StrategyWeight;

  factory StrategyWeight.fromJson(Object? json) {
    final map = asJsonMap(json, 'strategy weight');
    return StrategyWeight(
      regexp: map['regexp'] as bool?,
      match: map['match'] as String?,
      value: (map['value'] as num?)?.toDouble(),
    );
  }

  const StrategyWeight._();

  Map<String, dynamic> toJson() =>
      withoutNulls({'regexp': regexp, 'match': match, 'value': value});
}
