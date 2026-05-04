part of 'protocol_settings.dart';

@freezed
abstract class TrojanInboundFallback with _$TrojanInboundFallback {
  const factory TrojanInboundFallback({
    String? name,
    String? alpn,
    String? path,
    XrayFallbackType? type,
    Object? dest,
    int? xver,
  }) = _TrojanInboundFallback;

  factory TrojanInboundFallback.fromJson(Object? json) {
    final map = asJsonMap(json, 'trojan fallback');
    return TrojanInboundFallback(
      name: map['name'] as String?,
      alpn: map['alpn'] as String?,
      path: map['path'] as String?,
      type: map['type'] == null ? null : XrayFallbackType.fromJson(map['type']),
      dest: map['dest'],
      xver: map['xver'] as int?,
    );
  }

  const TrojanInboundFallback._();

  Map<String, dynamic> toJson() => withoutNulls({
    'name': name,
    'alpn': alpn,
    'path': path,
    'type': type?.toJson(),
    'dest': dest,
    'xver': xver,
  });
}
