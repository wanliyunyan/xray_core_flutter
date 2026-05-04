part of 'transport.dart';

@freezed
abstract class UDPItem with _$UDPItem {
  const factory UDPItem({
    int? rand,
    XrayInt32Range? randRange,
    String? capture,
    String? type,
    String? reuse,
    CustomTransform? transform,
    Object? packet,
  }) = _UDPItem;

  factory UDPItem.fromJson(Object? json) {
    final map = asJsonMap(json, 'udp item');
    return UDPItem(
      rand: map['rand'] as int?,
      randRange: map['randRange'] == null
          ? null
          : XrayInt32Range.fromJson(map['randRange']),
      capture: map['capture'] as String?,
      type: map['type'] as String?,
      reuse: map['reuse'] as String?,
      transform: map['transform'] == null
          ? null
          : CustomTransform.fromJson(map['transform']),
      packet: map['packet'],
    );
  }

  const UDPItem._();

  Map<String, dynamic> toJson() => withoutNulls({
    'rand': rand,
    'randRange': randRange?.toJson(),
    'capture': capture,
    'type': type,
    'reuse': reuse,
    'transform': transform?.toJson(),
    'packet': packet,
  });
}
