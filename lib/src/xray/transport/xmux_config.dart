part of 'transport.dart';

@freezed
abstract class XmuxConfig with _$XmuxConfig {
  const factory XmuxConfig({
    XrayInt32Range? maxConcurrency,
    XrayInt32Range? maxConnections,
    XrayInt32Range? cMaxReuseTimes,
    XrayInt32Range? hMaxRequestTimes,
    XrayInt32Range? hMaxReusableSecs,
    int? hKeepAlivePeriod,
  }) = _XmuxConfig;

  factory XmuxConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'xmux');
    return XmuxConfig(
      maxConcurrency: map['maxConcurrency'] == null
          ? null
          : XrayInt32Range.fromJson(map['maxConcurrency']),
      maxConnections: map['maxConnections'] == null
          ? null
          : XrayInt32Range.fromJson(map['maxConnections']),
      cMaxReuseTimes: map['cMaxReuseTimes'] == null
          ? null
          : XrayInt32Range.fromJson(map['cMaxReuseTimes']),
      hMaxRequestTimes: map['hMaxRequestTimes'] == null
          ? null
          : XrayInt32Range.fromJson(map['hMaxRequestTimes']),
      hMaxReusableSecs: map['hMaxReusableSecs'] == null
          ? null
          : XrayInt32Range.fromJson(map['hMaxReusableSecs']),
      hKeepAlivePeriod: map['hKeepAlivePeriod'] as int?,
    );
  }

  const XmuxConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'maxConcurrency': maxConcurrency?.toJson(),
    'maxConnections': maxConnections?.toJson(),
    'cMaxReuseTimes': cMaxReuseTimes?.toJson(),
    'hMaxRequestTimes': hMaxRequestTimes?.toJson(),
    'hMaxReusableSecs': hMaxReusableSecs?.toJson(),
    'hKeepAlivePeriod': hKeepAlivePeriod,
  });
}
