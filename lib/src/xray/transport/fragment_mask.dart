part of 'transport.dart';

@freezed
abstract class FragmentMask with _$FragmentMask implements FinalMaskSettings {
  const factory FragmentMask({
    String? packets,
    XrayInt32Range? length,
    XrayInt32Range? delay,
    List<XrayInt32Range>? lengths,
    List<XrayInt32Range>? delays,
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
      lengths: map['lengths'] == null
          ? null
          : asJsonList(map['lengths'], XrayInt32Range.fromJson),
      delays: map['delays'] == null
          ? null
          : asJsonList(map['delays'], XrayInt32Range.fromJson),
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
        'lengths': lengths?.map((item) => item.toJson()).toList(),
        'delays': delays?.map((item) => item.toJson()).toList(),
        'maxSplit': maxSplit?.toJson(),
      });
}
