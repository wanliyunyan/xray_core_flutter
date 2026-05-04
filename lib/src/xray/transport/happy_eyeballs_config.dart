part of 'transport.dart';

@freezed
abstract class HappyEyeballsConfig with _$HappyEyeballsConfig {
  const factory HappyEyeballsConfig({
    bool? prioritizeIPv6,
    int? tryDelayMs,
    int? interleave,
    int? maxConcurrentTry,
  }) = _HappyEyeballsConfig;

  factory HappyEyeballsConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'happyEyeballs');
    return HappyEyeballsConfig(
      prioritizeIPv6: map['prioritizeIPv6'] as bool?,
      tryDelayMs: map['tryDelayMs'] as int?,
      interleave: map['interleave'] as int?,
      maxConcurrentTry: map['maxConcurrentTry'] as int?,
    );
  }

  const HappyEyeballsConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'prioritizeIPv6': prioritizeIPv6,
    'tryDelayMs': tryDelayMs,
    'interleave': interleave,
    'maxConcurrentTry': maxConcurrentTry,
  });
}
