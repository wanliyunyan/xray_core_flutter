part of 'transport.dart';

@freezed
abstract class KCPConfig with _$KCPConfig {
  const factory KCPConfig({
    int? mtu,
    int? tti,
    @JsonKey(name: 'uplinkCapacity') int? upCap,
    @JsonKey(name: 'downlinkCapacity') int? downCap,
    int? cwndMultiplier,
    int? maxSendingWindow,
    Map<String, dynamic>? header,
    String? seed,
  }) = _KCPConfig;

  factory KCPConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'kcp settings');
    return KCPConfig(
      mtu: map['mtu'] as int?,
      tti: map['tti'] as int?,
      upCap: map['uplinkCapacity'] as int?,
      downCap: map['downlinkCapacity'] as int?,
      cwndMultiplier: map['cwndMultiplier'] as int?,
      maxSendingWindow: map['maxSendingWindow'] as int?,
      header: map['header'] == null
          ? null
          : asJsonMap(map['header'], 'kcp header'),
      seed: map['seed'] as String?,
    );
  }

  const KCPConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'mtu': mtu,
    'tti': tti,
    'uplinkCapacity': upCap,
    'downlinkCapacity': downCap,
    'cwndMultiplier': cwndMultiplier,
    'maxSendingWindow': maxSendingWindow,
    'header': header,
    'seed': seed,
  });
}
