part of 'common.dart';

@freezed
abstract class SniffingConfig with _$SniffingConfig {
  const factory SniffingConfig({
    bool? enabled,
    XrayStringList? destOverride,
    XrayStringList? domainsExcluded,
    XrayStringList? ipsExcluded,
    bool? metadataOnly,
    bool? routeOnly,
  }) = _SniffingConfig;

  factory SniffingConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'sniffing');
    return SniffingConfig(
      enabled: map['enabled'] as bool?,
      destOverride: map['destOverride'] == null
          ? null
          : XrayStringList.fromJson(map['destOverride']),
      domainsExcluded: map['domainsExcluded'] == null
          ? null
          : XrayStringList.fromJson(map['domainsExcluded']),
      ipsExcluded: map['ipsExcluded'] == null
          ? null
          : XrayStringList.fromJson(map['ipsExcluded']),
      metadataOnly: map['metadataOnly'] as bool?,
      routeOnly: map['routeOnly'] as bool?,
    );
  }

  const SniffingConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'enabled': enabled,
    'destOverride': destOverride?.toJson(),
    'domainsExcluded': domainsExcluded?.toJson(),
    'ipsExcluded': ipsExcluded?.toJson(),
    'metadataOnly': metadataOnly,
    'routeOnly': routeOnly,
  });
}
