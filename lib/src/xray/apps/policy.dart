part of 'apps.dart';

@freezed
abstract class Policy with _$Policy {
  // Freezed forwards this constructor annotation to the generated class.
  // ignore: invalid_annotation_target
  @JsonSerializable(includeIfNull: false, createFieldMap: true)
  const factory Policy({
    @JsonKey(fromJson: nullableIntFromJson) int? handshake,
    @JsonKey(name: 'connIdle', fromJson: nullableIntFromJson)
    int? connectionIdle,
    @JsonKey(fromJson: nullableIntFromJson) int? uplinkOnly,
    @JsonKey(fromJson: nullableIntFromJson) int? downlinkOnly,
    bool? statsUserUplink,
    bool? statsUserDownlink,
    bool? statsUserOnline,
    @JsonKey(fromJson: nullableIntFromJson) int? bufferSize,
  }) = _Policy;

  factory Policy.fromJson(Object? json) =>
      _$PolicyFromJson(asJsonMap(json, 'policy'));
}
