part of 'transport.dart';

@freezed
abstract class Masquerade with _$Masquerade {
  const factory Masquerade({
    String? type,
    String? dir,
    String? url,
    bool? rewriteHost,
    bool? insecure,
    String? content,
    Map<String, String>? headers,
    int? statusCode,
  }) = _Masquerade;

  factory Masquerade.fromJson(Object? json) {
    final map = asJsonMap(json, 'masquerade');
    return Masquerade(
      type: map['type'] as String?,
      dir: map['dir'] as String?,
      url: map['url'] as String?,
      rewriteHost: map['rewriteHost'] as bool?,
      insecure: map['insecure'] as bool?,
      content: map['content'] as String?,
      headers: (map['headers'] as Map?)?.cast<String, String>(),
      statusCode: map['statusCode'] as int?,
    );
  }

  const Masquerade._();

  Map<String, dynamic> toJson() => withoutNulls({
    'type': type,
    'dir': dir,
    'url': url,
    'rewriteHost': rewriteHost,
    'insecure': insecure,
    'content': content,
    'headers': headers,
    'statusCode': statusCode,
  });
}
