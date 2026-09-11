part of 'transport.dart';

@freezed
abstract class CustomSockoptConfig with _$CustomSockoptConfig {
  // Freezed forwards this constructor annotation to the generated class.
  // ignore: invalid_annotation_target
  @JsonSerializable(includeIfNull: false, createFieldMap: true)
  const factory CustomSockoptConfig({
    @JsonKey(name: 'system') String? system,
    String? network,
    String? level,
    String? opt,
    String? value,
    String? type,
  }) = _CustomSockoptConfig;

  factory CustomSockoptConfig.fromJson(Object? json) =>
      _$CustomSockoptConfigFromJson(asJsonMap(json, 'customSockopt'));
}
