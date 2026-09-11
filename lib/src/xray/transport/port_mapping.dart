part of 'transport.dart';

/// Realm's port mapping options, matching its protobuf JSON fields.
@freezed
abstract class PortMapping with _$PortMapping {
  // Freezed forwards this constructor annotation to the generated class.
  // ignore: invalid_annotation_target
  @JsonSerializable(includeIfNull: false, createFieldMap: true)
  const factory PortMapping({
    bool? enabled,
    @JsonKey(fromJson: nullableIntFromJson) int? timeout,
    @JsonKey(fromJson: nullableIntFromJson) int? lifetime,
  }) = _PortMapping;

  factory PortMapping.fromJson(Object? json) =>
      _$PortMappingFromJson(asJsonMap(json, 'realm portMapping'));
}
