part of 'protocol_settings.dart';

@freezed
abstract class WireGuardPeerConfig with _$WireGuardPeerConfig {
  const factory WireGuardPeerConfig({
    String? publicKey,
    String? preSharedKey,
    String? endpoint,
    int? keepAlive,
    List<String>? allowedIPs,
  }) = _WireGuardPeerConfig;

  factory WireGuardPeerConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'wireguard peer');
    return WireGuardPeerConfig(
      publicKey: map['publicKey'] as String?,
      preSharedKey: map['preSharedKey'] as String?,
      endpoint: map['endpoint'] as String?,
      keepAlive: map['keepAlive'] as int?,
      allowedIPs: (map['allowedIPs'] as List?)?.cast<String>(),
    );
  }

  const WireGuardPeerConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'publicKey': publicKey,
    'preSharedKey': preSharedKey,
    'endpoint': endpoint,
    'keepAlive': keepAlive,
    'allowedIPs': allowedIPs,
  });
}
