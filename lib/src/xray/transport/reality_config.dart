part of 'transport.dart';

@freezed
abstract class REALITYConfig with _$REALITYConfig {
  const factory REALITYConfig({
    String? masterKeyLog,
    bool? show,
    Object? target,
    Object? dest,
    String? type,
    int? xver,
    List<String>? serverNames,
    String? privateKey,
    String? minClientVer,
    String? maxClientVer,
    int? maxTimeDiff,
    List<String>? shortIds,
    String? mldsa65Seed,
    LimitFallback? limitFallbackUpload,
    LimitFallback? limitFallbackDownload,
    String? fingerprint,
    String? serverName,
    String? password,
    String? publicKey,
    String? shortId,
    String? mldsa65Verify,
    String? spiderX,
  }) = _REALITYConfig;

  factory REALITYConfig.client({
    String? fingerprint,
    String? serverName,
    required String publicKey,
    String? shortId,
    String? spiderX,
    String? mldsa65Verify,
  }) => REALITYConfig(
    fingerprint: fingerprint,
    serverName: serverName,
    publicKey: publicKey,
    shortId: shortId,
    spiderX: spiderX,
    mldsa65Verify: mldsa65Verify,
  );

  factory REALITYConfig.server({
    required Object target,
    String? type,
    int? xver,
    required List<String> serverNames,
    required String privateKey,
    required List<String> shortIds,
    String? minClientVer,
    String? maxClientVer,
    int? maxTimeDiff,
    String? mldsa65Seed,
    LimitFallback? limitFallbackUpload,
    LimitFallback? limitFallbackDownload,
    String? masterKeyLog,
    bool? show,
  }) => REALITYConfig(
    masterKeyLog: masterKeyLog,
    show: show,
    target: target,
    type: type,
    xver: xver,
    serverNames: serverNames,
    privateKey: privateKey,
    minClientVer: minClientVer,
    maxClientVer: maxClientVer,
    maxTimeDiff: maxTimeDiff,
    shortIds: shortIds,
    mldsa65Seed: mldsa65Seed,
    limitFallbackUpload: limitFallbackUpload,
    limitFallbackDownload: limitFallbackDownload,
  );

  factory REALITYConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'realitySettings');
    return REALITYConfig(
      masterKeyLog: map['masterKeyLog'] as String?,
      show: map['show'] as bool?,
      target: map['target'],
      dest: map['dest'],
      type: map['type'] as String?,
      xver: map['xver'] as int?,
      serverNames: (map['serverNames'] as List?)?.cast<String>(),
      privateKey: map['privateKey'] as String?,
      minClientVer: map['minClientVer'] as String?,
      maxClientVer: map['maxClientVer'] as String?,
      maxTimeDiff: map['maxTimeDiff'] as int?,
      shortIds: (map['shortIds'] as List?)?.cast<String>(),
      mldsa65Seed: map['mldsa65Seed'] as String?,
      limitFallbackUpload: map['limitFallbackUpload'] == null
          ? null
          : LimitFallback.fromJson(map['limitFallbackUpload']),
      limitFallbackDownload: map['limitFallbackDownload'] == null
          ? null
          : LimitFallback.fromJson(map['limitFallbackDownload']),
      fingerprint: map['fingerprint'] as String?,
      serverName: map['serverName'] as String?,
      password: map['password'] as String?,
      publicKey: map['publicKey'] as String?,
      shortId: map['shortId'] as String?,
      mldsa65Verify: map['mldsa65Verify'] as String?,
      spiderX: map['spiderX'] as String?,
    );
  }

  const REALITYConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'masterKeyLog': masterKeyLog,
    'show': show,
    'target': target,
    'dest': dest,
    'type': type,
    'xver': xver,
    'serverNames': serverNames,
    'privateKey': privateKey,
    'minClientVer': minClientVer,
    'maxClientVer': maxClientVer,
    'maxTimeDiff': maxTimeDiff,
    'shortIds': shortIds,
    'mldsa65Seed': mldsa65Seed,
    'limitFallbackUpload': limitFallbackUpload?.toJson(),
    'limitFallbackDownload': limitFallbackDownload?.toJson(),
    'fingerprint': fingerprint,
    'serverName': serverName,
    'password': password,
    'publicKey': publicKey,
    'shortId': shortId,
    'mldsa65Verify': mldsa65Verify,
    'spiderX': spiderX,
  });
}
