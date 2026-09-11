part of 'apps.dart';

@freezed
abstract class SystemPolicy with _$SystemPolicy {
  // Freezed forwards this constructor annotation to the generated class.
  // ignore: invalid_annotation_target
  @JsonSerializable(includeIfNull: false, createFieldMap: true)
  const factory SystemPolicy({
    bool? statsInboundUplink,
    bool? statsInboundDownlink,
    bool? statsOutboundUplink,
    bool? statsOutboundDownlink,
  }) = _SystemPolicy;

  factory SystemPolicy.fromJson(Object? json) =>
      _$SystemPolicyFromJson(asJsonMap(json, 'system policy'));
}
