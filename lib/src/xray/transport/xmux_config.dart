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
      maxConcurrency: _xmuxRangeFromJson(map['maxConcurrency']),
      maxConnections: _xmuxRangeFromJson(map['maxConnections']),
      cMaxReuseTimes: _xmuxRangeFromJson(map['cMaxReuseTimes']),
      hMaxRequestTimes: _xmuxRangeFromJson(map['hMaxRequestTimes']),
      hMaxReusableSecs: _xmuxRangeFromJson(map['hMaxReusableSecs']),
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

// Core unmarshals JSON numbers into int32. Decimal strings are parsed as Go
// integers, then cast to int32; normalize that conversion before exporting JSON.
XrayInt32Range? _xmuxRangeFromJson(Object? json) {
  if (json == null) return null;
  if (json is int && json >= -0x80000000 && json <= 0x7fffffff) {
    return XrayInt32Range.single(json);
  }
  if (json is String) {
    if (json.isEmpty) return XrayInt32Range.single(0);
    final match = RegExp(
      r'^([+-]?[0-9]+)(?:-([+-]?[0-9]+))?$',
    ).firstMatch(json);
    if (match != null && match.end == json.length) {
      final left = BigInt.parse(match.group(1)!);
      final right = BigInt.parse(match.group(2) ?? match.group(1)!);
      final min = -(BigInt.one << 63);
      final max = (BigInt.one << 63) - BigInt.one;
      if (left >= min && left <= max && right >= min && right <= max) {
        return XrayInt32Range(
          left: left.toSigned(32).toInt(),
          right: right.toSigned(32).toInt(),
        );
      }
    }
  }
  throw FormatException('invalid XMUX int32 range: $json');
}
