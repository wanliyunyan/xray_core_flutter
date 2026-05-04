part of 'transport.dart';

@freezed
abstract class HysteriaConfig with _$HysteriaConfig {
  const factory HysteriaConfig({
    required int version,
    String? auth,
    String? congestion,
    Bandwidth? up,
    Bandwidth? down,
    @JsonKey(name: 'udphop') UdpHop? udpHop,
    int? udpIdleTimeout,
    Masquerade? masquerade,
  }) = _HysteriaConfig;

  factory HysteriaConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'hysteria settings');
    return HysteriaConfig(
      version: map['version'] as int,
      auth: map['auth'] as String?,
      congestion: map['congestion'] as String?,
      up: map['up'] == null ? null : Bandwidth.fromJson(map['up']),
      down: map['down'] == null ? null : Bandwidth.fromJson(map['down']),
      udpHop: map['udphop'] == null ? null : UdpHop.fromJson(map['udphop']),
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
    'congestion': congestion,
    'up': up?.toJson(),
    'down': down?.toJson(),
    'udphop': udpHop?.toJson(),
    'udpIdleTimeout': udpIdleTimeout,
    'masquerade': masquerade?.toJson(),
  });
}
