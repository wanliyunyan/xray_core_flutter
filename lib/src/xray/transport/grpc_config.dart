part of 'transport.dart';

@freezed
abstract class GRPCConfig with _$GRPCConfig {
  const factory GRPCConfig({
    String? authority,
    String? serviceName,
    bool? multiMode,
    @JsonKey(name: 'idle_timeout') int? idleTimeout,
    @JsonKey(name: 'health_check_timeout') int? healthCheckTimeout,
    @JsonKey(name: 'permit_without_stream') bool? permitWithoutStream,
    @JsonKey(name: 'initial_windows_size') int? initialWindowsSize,
    @JsonKey(name: 'user_agent') String? userAgent,
  }) = _GRPCConfig;

  factory GRPCConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'grpc settings');
    return GRPCConfig(
      authority: map['authority'] as String?,
      serviceName: map['serviceName'] as String?,
      multiMode: map['multiMode'] as bool?,
      idleTimeout: map['idle_timeout'] as int?,
      healthCheckTimeout: map['health_check_timeout'] as int?,
      permitWithoutStream: map['permit_without_stream'] as bool?,
      initialWindowsSize: map['initial_windows_size'] as int?,
      userAgent: map['user_agent'] as String?,
    );
  }

  const GRPCConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'authority': authority,
    'serviceName': serviceName,
    'multiMode': multiMode,
    'idle_timeout': idleTimeout,
    'health_check_timeout': healthCheckTimeout,
    'permit_without_stream': permitWithoutStream,
    'initial_windows_size': initialWindowsSize,
    'user_agent': userAgent,
  });
}
