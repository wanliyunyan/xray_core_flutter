part of 'transport.dart';

@freezed
abstract class WebSocketConfig with _$WebSocketConfig {
  const factory WebSocketConfig({
    String? host,
    String? path,
    Map<String, String>? headers,
    bool? acceptProxyProtocol,
    int? heartbeatPeriod,
  }) = _WebSocketConfig;

  factory WebSocketConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'websocket settings');
    return WebSocketConfig(
      host: map['host'] as String?,
      path: map['path'] as String?,
      headers: (map['headers'] as Map?)?.cast<String, String>(),
      acceptProxyProtocol: map['acceptProxyProtocol'] as bool?,
      heartbeatPeriod: map['heartbeatPeriod'] as int?,
    );
  }

  const WebSocketConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'host': host,
    'path': path,
    'headers': headers,
    'acceptProxyProtocol': acceptProxyProtocol,
    'heartbeatPeriod': heartbeatPeriod,
  });
}
