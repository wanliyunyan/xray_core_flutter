part of 'transport.dart';

@freezed
abstract class XDriveConfig with _$XDriveConfig {
  const factory XDriveConfig({
    String? remoteFolder,
    String? service,
    List<String>? secrets,
    int? segmentBytes,
    int? flushIntervalMs,
    int? pollIntervalMs,
    int? maxPollIntervalMs,
    int? sessionTtlSeconds,
    int? concurrency,
    int? eagerWindowMs,
    int? holeTimeoutMs,
    Object? template,
  }) = _XDriveConfig;

  factory XDriveConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'XDriveConfig');
    return XDriveConfig(
      remoteFolder: map['remoteFolder'] as String?,
      service: map['service'] as String?,
      secrets: (map['secrets'] as List?)?.cast<String>(),
      segmentBytes: map['segmentBytes'] as int?,
      flushIntervalMs: map['flushIntervalMs'] as int?,
      pollIntervalMs: map['pollIntervalMs'] as int?,
      maxPollIntervalMs: map['maxPollIntervalMs'] as int?,
      sessionTtlSeconds: map['sessionTtlSeconds'] as int?,
      concurrency: map['concurrency'] as int?,
      eagerWindowMs: map['eagerWindowMs'] as int?,
      holeTimeoutMs: map['holeTimeoutMs'] as int?,
      template: map['template'],
    );
  }

  const XDriveConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'remoteFolder': remoteFolder,
    'service': service,
    'secrets': secrets,
    'segmentBytes': segmentBytes,
    'flushIntervalMs': flushIntervalMs,
    'pollIntervalMs': pollIntervalMs,
    'maxPollIntervalMs': maxPollIntervalMs,
    'sessionTtlSeconds': sessionTtlSeconds,
    'concurrency': concurrency,
    'eagerWindowMs': eagerWindowMs,
    'holeTimeoutMs': holeTimeoutMs,
    'template': template,
  });
}
