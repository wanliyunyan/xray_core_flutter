part of 'transport.dart';

@freezed
abstract class TLSConfig with _$TLSConfig {
  const factory TLSConfig({
    bool? allowInsecure,
    @JsonKey(name: 'certificates') List<TLSCertConfig>? certs,
    String? serverName,
    @JsonKey(name: 'alpn') XrayStringList? alpn,
    bool? enableSessionResumption,
    bool? disableSystemRoot,
    String? minVersion,
    String? maxVersion,
    String? cipherSuites,
    String? fingerprint,
    @JsonKey(name: 'rejectUnknownSni') bool? rejectUnknownSNI,
    XrayStringList? curvePreferences,
    String? masterKeyLog,
    String? pinnedPeerCertSha256,
    String? verifyPeerCertByName,
    String? echServerKeys,
    String? echConfigList,
    @JsonKey(name: 'echSockopt') SocketConfig? echSocketSettings,
  }) = _TLSConfig;

  factory TLSConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'tlsSettings');
    return TLSConfig(
      allowInsecure: map['allowInsecure'] as bool?,
      certs: map['certificates'] == null
          ? null
          : asJsonList(map['certificates'], TLSCertConfig.fromJson),
      serverName: map['serverName'] as String?,
      alpn: map['alpn'] == null ? null : XrayStringList.fromJson(map['alpn']),
      enableSessionResumption: map['enableSessionResumption'] as bool?,
      disableSystemRoot: map['disableSystemRoot'] as bool?,
      minVersion: map['minVersion'] as String?,
      maxVersion: map['maxVersion'] as String?,
      cipherSuites: map['cipherSuites'] as String?,
      fingerprint: map['fingerprint'] as String?,
      rejectUnknownSNI: map['rejectUnknownSni'] as bool?,
      curvePreferences: map['curvePreferences'] == null
          ? null
          : XrayStringList.fromJson(map['curvePreferences']),
      masterKeyLog: map['masterKeyLog'] as String?,
      pinnedPeerCertSha256: map['pinnedPeerCertSha256'] as String?,
      verifyPeerCertByName: map['verifyPeerCertByName'] as String?,
      echServerKeys: map['echServerKeys'] as String?,
      echConfigList: map['echConfigList'] as String?,
      echSocketSettings: map['echSockopt'] == null
          ? null
          : SocketConfig.fromJson(map['echSockopt']),
    );
  }

  const TLSConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
        'allowInsecure': allowInsecure,
        'certificates': certs?.map((item) => item.toJson()).toList(),
        'serverName': serverName,
        'alpn': alpn?.toJson(),
        'enableSessionResumption': enableSessionResumption,
        'disableSystemRoot': disableSystemRoot,
        'minVersion': minVersion,
        'maxVersion': maxVersion,
        'cipherSuites': cipherSuites,
        'fingerprint': fingerprint,
        'rejectUnknownSni': rejectUnknownSNI,
        'curvePreferences': curvePreferences?.toJson(),
        'masterKeyLog': masterKeyLog,
        'pinnedPeerCertSha256': pinnedPeerCertSha256,
        'verifyPeerCertByName': verifyPeerCertByName,
        'echServerKeys': echServerKeys,
        'echConfigList': echConfigList,
        'echSockopt': echSocketSettings?.toJson(),
      });
}
