part of 'transport.dart';

@freezed
abstract class HysteriaConfig with _$HysteriaConfig {
  const factory HysteriaConfig({
    required int version,
    String? auth,
    int? udpIdleTimeout,
    Masquerade? masquerade,
  }) = _HysteriaConfig;

  factory HysteriaConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'hysteria settings');
    return HysteriaConfig(
      version: map['version'] as int,
      auth: map['auth'] as String?,
      udpIdleTimeout: map['udpIdleTimeout'] as int?,
      masquerade: map['masquerade'] == null
          ? null
          : Masquerade.fromJson(map['masquerade']),
    );
  }

  const HysteriaConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'version': version,
    'auth': auth,
    'udpIdleTimeout': udpIdleTimeout,
    'masquerade': masquerade?.toJson(),
  });
}
