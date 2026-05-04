part of 'transport.dart';

@freezed
abstract class TCPItem with _$TCPItem {
  const factory TCPItem({
    XrayInt32Range? delay,
    int? rand,
    XrayInt32Range? randRange,
    String? capture,
    String? type,
    String? reuse,
    CustomTransform? transform,
    Object? packet,
  }) = _TCPItem;

  factory TCPItem.fromJson(Object? json) {
    final map = asJsonMap(json, 'tcp item');
    return TCPItem(
      delay: map['delay'] == null
          ? null
          : XrayInt32Range.fromJson(map['delay']),
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

  const TCPItem._();

  Map<String, dynamic> toJson() => withoutNulls({
    'delay': delay?.toJson(),
    'rand': rand,
    'randRange': randRange?.toJson(),
    'capture': capture,
    'type': type,
    'reuse': reuse,
    'transform': transform?.toJson(),
    'packet': packet,
  });
}
