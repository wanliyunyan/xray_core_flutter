part of 'protocol_settings.dart';

@freezed
abstract class Noise with _$Noise {
  const factory Noise({
    String? type,
    String? packet,
    XrayInt32Range? delay,
    String? applyTo,
  }) = _Noise;

  factory Noise.fromJson(Object? json) {
    final map = asJsonMap(json, 'noise');
    return Noise(
      type: map['type'] as String?,
      packet: map['packet'] as String?,
      delay: map['delay'] == null
          ? null
          : XrayInt32Range.fromJson(map['delay']),
      applyTo: map['applyTo'] as String?,
    );
  }

  const Noise._();

  Map<String, dynamic> toJson() => withoutNulls({
    'type': type,
    'packet': packet,
    'delay': delay?.toJson(),
    'applyTo': applyTo,
  });
}
