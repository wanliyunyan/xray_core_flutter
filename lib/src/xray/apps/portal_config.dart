part of 'apps.dart';

@freezed
abstract class PortalConfig with _$PortalConfig {
  const factory PortalConfig({String? tag, String? domain}) = _PortalConfig;

  factory PortalConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'portal');
    return PortalConfig(
      tag: map['tag'] as String?,
      domain: map['domain'] as String?,
    );
  }

  const PortalConfig._();

  Map<String, dynamic> toJson() => withoutNulls({'tag': tag, 'domain': domain});
}
