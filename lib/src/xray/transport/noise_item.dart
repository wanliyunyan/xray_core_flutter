part of 'transport.dart';

@freezed
abstract class NoiseItem with _$NoiseItem {
  const factory NoiseItem({
    XrayInt32Range? rand,
    XrayInt32Range? randRange,
    String? type,
    Object? packet,
    XrayInt32Range? delay,
  }) = _NoiseItem;

  factory NoiseItem.fromJson(Object? json) {
    final map = asJsonMap(json, 'noise item');
    return NoiseItem(
      rand: map['rand'] == null ? null : XrayInt32Range.fromJson(map['rand']),
      randRange: map['randRange'] == null
          ? null
          : XrayInt32Range.fromJson(map['randRange']),
      type: map['type'] as String?,
      packet: map['packet'],
      delay: map['delay'] == null
          ? null
          : XrayInt32Range.fromJson(map['delay']),
    );
  }

  const NoiseItem._();

  Map<String, dynamic> toJson() => withoutNulls({
    'rand': rand?.toJson(),
    'randRange': randRange?.toJson(),
    'type': type,
    'packet': packet,
    'delay': delay?.toJson(),
  });
}
