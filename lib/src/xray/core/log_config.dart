part of 'config.dart';

@freezed
abstract class LogConfig with _$LogConfig {
  const factory LogConfig({
    String? access,
    String? error,
    LogLevel? loglevel,
    bool? dnsLog,
    String? maskAddress,
  }) = _LogConfig;

  factory LogConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'log');
    return LogConfig(
      access: map['access'] as String?,
      error: map['error'] as String?,
      loglevel: map['loglevel'] == null
          ? null
          : LogLevel.fromJson(map['loglevel']),
      dnsLog: map['dnsLog'] as bool?,
      maskAddress: map['maskAddress'] as String?,
    );
  }

  const LogConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'access': access,
    'error': error,
    'loglevel': loglevel?.toJson(),
    'dnsLog': dnsLog,
    'maskAddress': maskAddress,
  });
}

enum LogLevel {
  debug,
  info,
  warning,
  error,
  none;

  factory LogLevel.fromJson(Object? json) {
    if (json is String) {
      return switch (json.toLowerCase()) {
        'debug' => LogLevel.debug,
        'info' => LogLevel.info,
        'warning' => LogLevel.warning,
        'error' => LogLevel.error,
        'none' => LogLevel.none,
        _ => throw FormatException('unknown log level: $json'),
      };
    }
    throw FormatException('invalid log level: $json');
  }

  String toJson() => name;
}
