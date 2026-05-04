part of 'protocol_settings.dart';

enum VmessSecurity {
  @JsonValue('aes-128-gcm')
  aes128Gcm,
  @JsonValue('chacha20-poly1305')
  chacha20Poly1305,
  @JsonValue('auto')
  auto,
  @JsonValue('none')
  none,
  @JsonValue('zero')
  zero;

  factory VmessSecurity.fromJson(Object? json) {
    if (json is String) {
      return switch (json.toLowerCase()) {
        'aes-128-gcm' => VmessSecurity.aes128Gcm,
        'chacha20-poly1305' => VmessSecurity.chacha20Poly1305,
        'auto' => VmessSecurity.auto,
        'none' => VmessSecurity.none,
        'zero' => VmessSecurity.zero,
        _ => throw FormatException('unknown vmess security: $json'),
      };
    }
    throw FormatException('invalid vmess security: $json');
  }

  String toJson() => switch (this) {
    VmessSecurity.aes128Gcm => 'aes-128-gcm',
    VmessSecurity.chacha20Poly1305 => 'chacha20-poly1305',
    VmessSecurity.auto => 'auto',
    VmessSecurity.none => 'none',
    VmessSecurity.zero => 'zero',
  };
}
