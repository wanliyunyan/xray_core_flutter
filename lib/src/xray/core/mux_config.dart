part of 'config.dart';

@freezed
abstract class MuxConfig with _$MuxConfig {
  const factory MuxConfig({
    bool? enabled,

    /// Mux concurrency, limited to the signed int16 range -32768..32767.
    /// Core v26.11.9 normalizes nonnegative values through 128 to 128; a
    /// negative value disables mux.
    int? concurrency,

    /// XUDP concurrency, limited to the signed int16 range -32768..32767.
    /// Core v26.11.9 lets each mux and XUDP worker serve up to 1024 connections
    /// before replacement.
    int? xudpConcurrency,

    /// Exact, case-sensitive UDP/443 policy: reject (the Core default), allow
    /// or skip. An omitted or empty value also selects reject.
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
