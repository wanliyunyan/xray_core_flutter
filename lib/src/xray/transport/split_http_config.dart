part of 'transport.dart';

@freezed
abstract class SplitHTTPConfig with _$SplitHTTPConfig {
  const factory SplitHTTPConfig({
    String? host,
    String? path,
    SplitHTTPMode? mode,
    Map<String, String>? headers,
    XrayInt32Range? xPaddingBytes,
    bool? xPaddingObfsMode,
    String? xPaddingKey,
    String? xPaddingHeader,
    SplitHTTPPlacement? xPaddingPlacement,
    SplitHTTPPaddingMethod? xPaddingMethod,
    String? uplinkHTTPMethod,
    SplitHTTPPlacement? sessionPlacement,
    String? sessionKey,
    SplitHTTPPlacement? seqPlacement,
    String? seqKey,
    SplitHTTPPlacement? uplinkDataPlacement,
    String? uplinkDataKey,
    XrayInt32Range? uplinkChunkSize,
    bool? noGRPCHeader,
    bool? noSSEHeader,
    XrayInt32Range? scMaxEachPostBytes,
    XrayInt32Range? scMinPostsIntervalMs,
    int? scMaxBufferedPosts,
    XrayInt32Range? scStreamUpServerSecs,
    int? serverMaxHeaderBytes,
    XmuxConfig? xmux,
    StreamConfig? downloadSettings,
    Map<String, dynamic>? extra,
  }) = _SplitHTTPConfig;

  factory SplitHTTPConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'splithttp settings');
    return SplitHTTPConfig(
      host: map['host'] as String?,
      path: map['path'] as String?,
      mode: map['mode'] == null ? null : SplitHTTPMode.fromJson(map['mode']),
      headers: (map['headers'] as Map?)?.cast<String, String>(),
      xPaddingBytes: map['xPaddingBytes'] == null
          ? null
          : XrayInt32Range.fromJson(map['xPaddingBytes']),
      xPaddingObfsMode: map['xPaddingObfsMode'] as bool?,
      xPaddingKey: map['xPaddingKey'] as String?,
      xPaddingHeader: map['xPaddingHeader'] as String?,
      xPaddingPlacement: map['xPaddingPlacement'] == null
          ? null
          : SplitHTTPPlacement.fromJson(map['xPaddingPlacement']),
      xPaddingMethod: map['xPaddingMethod'] == null
          ? null
          : SplitHTTPPaddingMethod.fromJson(map['xPaddingMethod']),
      uplinkHTTPMethod: map['uplinkHTTPMethod'] as String?,
      sessionPlacement: map['sessionPlacement'] == null
          ? null
          : SplitHTTPPlacement.fromJson(map['sessionPlacement']),
      sessionKey: map['sessionKey'] as String?,
      seqPlacement: map['seqPlacement'] == null
          ? null
          : SplitHTTPPlacement.fromJson(map['seqPlacement']),
      seqKey: map['seqKey'] as String?,
      uplinkDataPlacement: map['uplinkDataPlacement'] == null
          ? null
          : SplitHTTPPlacement.fromJson(map['uplinkDataPlacement']),
      uplinkDataKey: map['uplinkDataKey'] as String?,
      uplinkChunkSize: map['uplinkChunkSize'] == null
          ? null
          : XrayInt32Range.fromJson(map['uplinkChunkSize']),
      noGRPCHeader: map['noGRPCHeader'] as bool?,
      noSSEHeader: map['noSSEHeader'] as bool?,
      scMaxEachPostBytes: map['scMaxEachPostBytes'] == null
          ? null
          : XrayInt32Range.fromJson(map['scMaxEachPostBytes']),
      scMinPostsIntervalMs: map['scMinPostsIntervalMs'] == null
          ? null
          : XrayInt32Range.fromJson(map['scMinPostsIntervalMs']),
      scMaxBufferedPosts: map['scMaxBufferedPosts'] as int?,
      scStreamUpServerSecs: map['scStreamUpServerSecs'] == null
          ? null
          : XrayInt32Range.fromJson(map['scStreamUpServerSecs']),
      serverMaxHeaderBytes: map['serverMaxHeaderBytes'] as int?,
      xmux: map['xmux'] == null ? null : XmuxConfig.fromJson(map['xmux']),
      downloadSettings: map['downloadSettings'] == null
          ? null
          : StreamConfig.fromJson(map['downloadSettings']),
      extra: map['extra'] == null ? null : asJsonMap(map['extra'], 'extra'),
    );
  }

  const SplitHTTPConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'host': host,
    'path': path,
    'mode': mode?.toJson(),
    'headers': headers,
    'xPaddingBytes': xPaddingBytes?.toJson(),
    'xPaddingObfsMode': xPaddingObfsMode,
    'xPaddingKey': xPaddingKey,
    'xPaddingHeader': xPaddingHeader,
    'xPaddingPlacement': xPaddingPlacement?.toJson(),
    'xPaddingMethod': xPaddingMethod?.toJson(),
    'uplinkHTTPMethod': uplinkHTTPMethod,
    'sessionPlacement': sessionPlacement?.toJson(),
    'sessionKey': sessionKey,
    'seqPlacement': seqPlacement?.toJson(),
    'seqKey': seqKey,
    'uplinkDataPlacement': uplinkDataPlacement?.toJson(),
    'uplinkDataKey': uplinkDataKey,
    'uplinkChunkSize': uplinkChunkSize?.toJson(),
    'noGRPCHeader': noGRPCHeader,
    'noSSEHeader': noSSEHeader,
    'scMaxEachPostBytes': scMaxEachPostBytes?.toJson(),
    'scMinPostsIntervalMs': scMinPostsIntervalMs?.toJson(),
    'scMaxBufferedPosts': scMaxBufferedPosts,
    'scStreamUpServerSecs': scStreamUpServerSecs?.toJson(),
    'serverMaxHeaderBytes': serverMaxHeaderBytes,
    'xmux': xmux?.toJson(),
    'downloadSettings': downloadSettings?.toJson(),
    'extra': extra,
  });
}
