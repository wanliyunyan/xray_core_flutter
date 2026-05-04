part of 'transport.dart';

@freezed
abstract class NoiseMask with _$NoiseMask implements FinalMaskSettings {
  const factory NoiseMask({
    XrayInt32Range? reset,
    @JsonKey(name: 'noise') List<NoiseItem>? noiseItems,
  }) = _NoiseMask;

  factory NoiseMask.fromJson(Object? json) {
    final map = asJsonMap(json, 'noise mask');
    return NoiseMask(
      reset: map['reset'] == null
          ? null
          : XrayInt32Range.fromJson(map['reset']),
      noiseItems: map['noise'] == null
          ? null
          : asJsonList(map['noise'], NoiseItem.fromJson),
    );
  }

  const NoiseMask._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
    'reset': reset?.toJson(),
    'noise': noiseItems?.map((item) => item.toJson()).toList(),
  });
}
