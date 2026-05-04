part of 'transport.dart';

@freezed
abstract class TLSCertConfig with _$TLSCertConfig {
  const factory TLSCertConfig({
    @JsonKey(name: 'certificateFile') String? certFile,
    @JsonKey(name: 'certificate') List<String>? certStr,
    String? keyFile,
    @JsonKey(name: 'key') List<String>? keyStr,
    TLSCertificateUsage? usage,
    int? ocspStapling,
    bool? oneTimeLoading,
    bool? buildChain,
  }) = _TLSCertConfig;

  factory TLSCertConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'tls certificate');
    return TLSCertConfig(
      certFile: map['certificateFile'] as String?,
      certStr: (map['certificate'] as List?)?.cast<String>(),
      keyFile: map['keyFile'] as String?,
      keyStr: (map['key'] as List?)?.cast<String>(),
      usage: map['usage'] == null
          ? null
          : TLSCertificateUsage.fromJson(map['usage']),
      ocspStapling: map['ocspStapling'] as int?,
      oneTimeLoading: map['oneTimeLoading'] as bool?,
      buildChain: map['buildChain'] as bool?,
    );
  }

  const TLSCertConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'certificateFile': certFile,
    'certificate': certStr,
    'keyFile': keyFile,
    'key': keyStr,
    'usage': usage?.toJson(),
    'ocspStapling': ocspStapling,
    'oneTimeLoading': oneTimeLoading,
    'buildChain': buildChain,
  });
}
