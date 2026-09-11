part of 'transport.dart';

@freezed
abstract class Masquerade with _$Masquerade {
  // Freezed forwards this constructor annotation to the generated class.
  // ignore: invalid_annotation_target
  @JsonSerializable(includeIfNull: false, createFieldMap: true)
  const factory Masquerade({
    String? type,
    String? dir,
    String? url,
    bool? rewriteHost,
    bool? xForwarded,
    bool? insecure,
    String? content,
    Map<String, String>? headers,
    @JsonKey(fromJson: nullableIntFromJson) int? statusCode,
  }) = _Masquerade;

  factory Masquerade.fromJson(Object? json) =>
      _$MasqueradeFromJson(asJsonMap(json, 'masquerade'));
}
