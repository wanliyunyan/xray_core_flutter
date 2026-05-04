part of 'protocol_settings.dart';

@freezed
abstract class Fragment with _$Fragment {
  const factory Fragment({
    String? packets,
    XrayInt32Range? length,
    XrayInt32Range? interval,
    XrayInt32Range? maxSplit,
  }) = _Fragment;

  factory Fragment.fromJson(Object? json) {
    final map = asJsonMap(json, 'fragment');
    return Fragment(
      packets: map['packets'] as String?,
      length: map['length'] == null
          ? null
          : XrayInt32Range.fromJson(map['length']),
      interval: map['interval'] == null
          ? null
          : XrayInt32Range.fromJson(map['interval']),
      maxSplit: map['maxSplit'] == null
          ? null
          : XrayInt32Range.fromJson(map['maxSplit']),
    );
  }

  const Fragment._();

  Map<String, dynamic> toJson() => withoutNulls({
    'packets': packets,
    'length': length?.toJson(),
    'interval': interval?.toJson(),
    'maxSplit': maxSplit?.toJson(),
  });
}
