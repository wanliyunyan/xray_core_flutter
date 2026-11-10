part of 'transport.dart';

@freezed
abstract class XDriveConfig with _$XDriveConfig {
  const factory XDriveConfig({
    String? remoteFolder,
    String? service,
    List<String>? secrets,
    int? segmentBytes,

    /// Flush interval in milliseconds. Core defaults Google Drive to 10 ms
    /// and other backends to 20 ms when this is omitted or zero.
    int? flushIntervalMs,
    int? pollIntervalMs,

    /// Maximum poll interval in milliseconds. Core defaults Google Drive to
    /// 200 ms and other backends to 500 ms when this is omitted or zero.
    int? maxPollIntervalMs,
    int? sessionTtlSeconds,

    /// Core defaults Google Drive concurrency to 64 and other backends to 8;
    /// values above 256 are capped at 256.
    int? concurrency,
    int? eagerWindowMs,
    int? holeTimeoutMs,
    Object? template,
    XDriveS3Config? s3,
    XmuxConfig? xmux,
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
      s3: map['s3'] == null ? null : XDriveS3Config.fromJson(map['s3']),
      xmux: map['xmux'] == null ? null : XmuxConfig.fromJson(map['xmux']),
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
    's3': s3?.toJson(),
    'xmux': xmux?.toJson(),
  });
}
