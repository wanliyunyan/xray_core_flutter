part of 'config.dart';

@freezed
abstract class MuxConfig with _$MuxConfig {
  const factory MuxConfig({
    bool? enabled,
    int? concurrency,
    int? xudpConcurrency,
    String? xudpProxyUDP443,
  }) = _MuxConfig;

  factory MuxConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'mux');
    return MuxConfig(
      enabled: map['enabled'] as bool?,
      concurrency: map['concurrency'] as int?,
      xudpConcurrency: map['xudpConcurrency'] as int?,
      xudpProxyUDP443: map['xudpProxyUDP443'] as String?,
    );
  }

  const MuxConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'enabled': enabled,
    'concurrency': concurrency,
    'xudpConcurrency': xudpConcurrency,
    'xudpProxyUDP443': xudpProxyUDP443,
  });
}
