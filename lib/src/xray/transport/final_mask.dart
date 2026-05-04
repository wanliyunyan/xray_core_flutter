part of 'transport.dart';

@freezed
abstract class FinalMask with _$FinalMask {
  const factory FinalMask({
    List<Mask>? tcp,
    List<Mask>? udp,
    QuicParamsConfig? quicParams,
  }) = _FinalMask;

  factory FinalMask.fromJson(Object? json) {
    final map = asJsonMap(json, 'finalmask');
    return FinalMask(
      tcp: map['tcp'] == null ? null : asJsonList(map['tcp'], Mask.fromJson),
      udp: map['udp'] == null
          ? null
          : asJsonList(map['udp'], (item) => Mask.fromJson(item, udp: true)),
      quicParams: map['quicParams'] == null
          ? null
          : QuicParamsConfig.fromJson(map['quicParams']),
    );
  }

  const FinalMask._();

  Map<String, dynamic> toJson() => withoutNulls({
    'tcp': tcp?.map((item) => item.toJson()).toList(),
    'udp': udp?.map((item) => item.toJson()).toList(),
    'quicParams': quicParams?.toJson(),
  });
}
