part of 'transport.dart';

@freezed
abstract class QuicParamsConfig with _$QuicParamsConfig {
  const factory QuicParamsConfig({
    String? congestion,
    bool? debug,
    String? bbrProfile,
    Bandwidth? brutalUp,
    Bandwidth? brutalDown,
    UdpHop? udpHop,
    int? initStreamReceiveWindow,
    int? maxStreamReceiveWindow,
    int? initConnectionReceiveWindow,
    int? maxConnectionReceiveWindow,
    int? maxIdleTimeout,
    int? keepAlivePeriod,
    bool? disablePathMTUDiscovery,
    int? maxIncomingStreams,
  }) = _QuicParamsConfig;

  factory QuicParamsConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'quicParams');
    return QuicParamsConfig(
      congestion: map['congestion'] as String?,
      debug: map['debug'] as bool?,
      bbrProfile: map['bbrProfile'] as String?,
      brutalUp: map['brutalUp'] == null
          ? null
          : Bandwidth.fromJson(map['brutalUp']),
      brutalDown: map['brutalDown'] == null
          ? null
          : Bandwidth.fromJson(map['brutalDown']),
      udpHop: map['udpHop'] == null ? null : UdpHop.fromJson(map['udpHop']),
      initStreamReceiveWindow: map['initStreamReceiveWindow'] as int?,
      maxStreamReceiveWindow: map['maxStreamReceiveWindow'] as int?,
      initConnectionReceiveWindow: map['initConnectionReceiveWindow'] as int?,
      maxConnectionReceiveWindow: map['maxConnectionReceiveWindow'] as int?,
      maxIdleTimeout: map['maxIdleTimeout'] as int?,
      keepAlivePeriod: map['keepAlivePeriod'] as int?,
      disablePathMTUDiscovery: map['disablePathMTUDiscovery'] as bool?,
      maxIncomingStreams: map['maxIncomingStreams'] as int?,
    );
  }

  const QuicParamsConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'congestion': congestion,
    'debug': debug,
    'bbrProfile': bbrProfile,
    'brutalUp': brutalUp?.toJson(),
    'brutalDown': brutalDown?.toJson(),
    'udpHop': udpHop?.toJson(),
    'initStreamReceiveWindow': initStreamReceiveWindow,
    'maxStreamReceiveWindow': maxStreamReceiveWindow,
    'initConnectionReceiveWindow': initConnectionReceiveWindow,
    'maxConnectionReceiveWindow': maxConnectionReceiveWindow,
    'maxIdleTimeout': maxIdleTimeout,
    'keepAlivePeriod': keepAlivePeriod,
    'disablePathMTUDiscovery': disablePathMTUDiscovery,
    'maxIncomingStreams': maxIncomingStreams,
  });
}
