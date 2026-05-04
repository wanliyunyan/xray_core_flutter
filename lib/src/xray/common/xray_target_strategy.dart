part of 'common.dart';

enum XrayTargetStrategy {
  @JsonValue('AsIs')
  asIs,
  @JsonValue('UseIP')
  useIp,
  @JsonValue('UseIPv4')
  useIpv4,
  @JsonValue('UseIPv6')
  useIpv6,
  @JsonValue('UseIPv4v6')
  useIpv4v6,
  @JsonValue('UseIPv6v4')
  useIpv6v4,
  @JsonValue('ForceIP')
  forceIp,
  @JsonValue('ForceIPv4')
  forceIpv4,
  @JsonValue('ForceIPv6')
  forceIpv6,
  @JsonValue('ForceIPv4v6')
  forceIpv4v6,
  @JsonValue('ForceIPv6v4')
  forceIpv6v4,
}

extension XrayTargetStrategyJson on XrayTargetStrategy {
  static XrayTargetStrategy fromJson(Object? json) {
    if (json is String) {
      return switch (json.toLowerCase()) {
        'asis' => XrayTargetStrategy.asIs,
        'useip' => XrayTargetStrategy.useIp,
        'useipv4' => XrayTargetStrategy.useIpv4,
        'useipv6' => XrayTargetStrategy.useIpv6,
        'useipv4v6' => XrayTargetStrategy.useIpv4v6,
        'useipv6v4' => XrayTargetStrategy.useIpv6v4,
        'forceip' => XrayTargetStrategy.forceIp,
        'forceipv4' => XrayTargetStrategy.forceIpv4,
        'forceipv6' => XrayTargetStrategy.forceIpv6,
        'forceipv4v6' => XrayTargetStrategy.forceIpv4v6,
        'forceipv6v4' => XrayTargetStrategy.forceIpv6v4,
        _ => throw FormatException('unknown target strategy: $json'),
      };
    }
    throw FormatException('invalid target strategy: $json');
  }

  String toJson() => switch (this) {
    XrayTargetStrategy.asIs => 'AsIs',
    XrayTargetStrategy.useIp => 'UseIP',
    XrayTargetStrategy.useIpv4 => 'UseIPv4',
    XrayTargetStrategy.useIpv6 => 'UseIPv6',
    XrayTargetStrategy.useIpv4v6 => 'UseIPv4v6',
    XrayTargetStrategy.useIpv6v4 => 'UseIPv6v4',
    XrayTargetStrategy.forceIp => 'ForceIP',
    XrayTargetStrategy.forceIpv4 => 'ForceIPv4',
    XrayTargetStrategy.forceIpv6 => 'ForceIPv6',
    XrayTargetStrategy.forceIpv4v6 => 'ForceIPv4v6',
    XrayTargetStrategy.forceIpv6v4 => 'ForceIPv6v4',
  };
}
