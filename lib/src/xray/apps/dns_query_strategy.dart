part of 'apps.dart';

enum DnsQueryStrategy {
  @JsonValue('UseIP')
  useIp,
  @JsonValue('UseIPv4')
  useIpv4,
  @JsonValue('UseIPv6')
  useIpv6,
  @JsonValue('UseSystem')
  useSystem;

  factory DnsQueryStrategy.fromJson(Object? json) {
    if (json is String) {
      return switch (json.toLowerCase().replaceAll(RegExp(r'[_-]'), '')) {
        'useip' => DnsQueryStrategy.useIp,
        'useip4' || 'useipv4' => DnsQueryStrategy.useIpv4,
        'useip6' || 'useipv6' => DnsQueryStrategy.useIpv6,
        'usesys' || 'usesystem' => DnsQueryStrategy.useSystem,
        _ => throw FormatException('unknown dns query strategy: $json'),
      };
    }
    throw FormatException('invalid dns query strategy: $json');
  }

  String toJson() => switch (this) {
    DnsQueryStrategy.useIp => 'UseIP',
    DnsQueryStrategy.useIpv4 => 'UseIPv4',
    DnsQueryStrategy.useIpv6 => 'UseIPv6',
    DnsQueryStrategy.useSystem => 'UseSystem',
  };
}
