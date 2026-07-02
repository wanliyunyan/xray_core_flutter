part of 'transport.dart';

@freezed
abstract class FragmentMask with _$FragmentMask implements FinalMaskSettings {
  const factory FragmentMask({
    String? packets,
    XrayInt32Range? length,
    XrayInt32Range? delay,
    XrayInt32Range? maxSplit,
  }) = _FragmentMask;

  factory FragmentMask.fromJson(Object? json) {
    final map = asJsonMap(json, 'fragment mask');
    return FragmentMask(
      packets: map['packets'] as String?,
      length:
          map['length'] == null ? null : XrayInt32Range.fromJson(map['length']),
      delay:
          map['delay'] == null ? null : XrayInt32Range.fromJson(map['delay']),
      maxSplit: map['maxSplit'] == null
          ? null
          : XrayInt32Range.fromJson(map['maxSplit']),
    );
  }

  const FragmentMask._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
        'packets': packets,
        'length': length?.toJson(),
        'delay': delay?.toJson(),
        'maxSplit': maxSplit?.toJson(),
      });
}
