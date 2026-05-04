part of 'protocol_settings.dart';

@freezed
abstract class VLessInboundFallback with _$VLessInboundFallback {
  const factory VLessInboundFallback({
    String? name,
    String? alpn,
    String? path,
    XrayFallbackType? type,
    Object? dest,
    int? xver,
  }) = _VLessInboundFallback;

  factory VLessInboundFallback.fromJson(Object? json) {
    final map = asJsonMap(json, 'vless fallback');
    return VLessInboundFallback(
      name: map['name'] as String?,
      alpn: map['alpn'] as String?,
      path: map['path'] as String?,
      type: map['type'] == null ? null : XrayFallbackType.fromJson(map['type']),
      dest: map['dest'],
      xver: map['xver'] as int?,
    );
  }

  const VLessInboundFallback._();

  Map<String, dynamic> toJson() => withoutNulls({
    'name': name,
    'alpn': alpn,
    'path': path,
    'type': type?.toJson(),
    'dest': dest,
    'xver': xver,
  });
}
