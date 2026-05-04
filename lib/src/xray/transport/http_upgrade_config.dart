part of 'transport.dart';

@freezed
abstract class HttpUpgradeConfig with _$HttpUpgradeConfig {
  const factory HttpUpgradeConfig({
    String? host,
    String? path,
    Map<String, String>? headers,
    bool? acceptProxyProtocol,
  }) = _HttpUpgradeConfig;

  factory HttpUpgradeConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'httpupgrade settings');
    return HttpUpgradeConfig(
      host: map['host'] as String?,
      path: map['path'] as String?,
      headers: (map['headers'] as Map?)?.cast<String, String>(),
      acceptProxyProtocol: map['acceptProxyProtocol'] as bool?,
    );
  }

  const HttpUpgradeConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'host': host,
    'path': path,
    'headers': headers,
    'acceptProxyProtocol': acceptProxyProtocol,
  });
}
