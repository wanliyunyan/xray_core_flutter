part of 'protocol_settings.dart';

@freezed
abstract class TunConfig with _$TunConfig implements XrayInboundSettings {
  const factory TunConfig({
    String? name,
    String? desc,
    @JsonKey(name: 'mtu') int? mtu,
    List<String>? gateway,
    @JsonKey(name: 'dns') List<String>? dns,
    int? userLevel,
    List<String>? autoSystemRoutingTable,
    String? autoOutboundsInterface,
    bool? autoSystemDnsToGateway,

    /// Windows WFP rules: named actions, TCP/UDP ports or ranges, optionally
    /// scoped by an IPv4 CIDR or a bracketed IPv6 CIDR. Core expands dns and
    /// allexceptlan, while always allowing loopback, DHCP and IPv6 discovery.
    /// On Windows, any nonempty rule list requires autoSystemRoutingTable.
    /// Rules that block system DNS also require dns to be configured.
    /// If Windows DisabledComponents turns IPv6 off, Core logs IPv6 setup
    /// failures and misconfigtun blocks IPv6 outside the TUN.
    List<String>? autoSystemWfpBlockLeak,
  }) = _TunConfig;

  factory TunConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'tun inbound');
    return TunConfig(
      name: map['name'] as String?,
      desc: map['desc'] as String?,
      mtu: map['mtu'] as int?,
      gateway: (map['gateway'] as List?)?.cast<String>(),
      dns: (map['dns'] as List?)?.cast<String>(),
      userLevel: map['userLevel'] as int?,
      autoSystemRoutingTable: (map['autoSystemRoutingTable'] as List?)
          ?.cast<String>(),
      autoOutboundsInterface: map['autoOutboundsInterface'] as String?,
      autoSystemDnsToGateway: map['autoSystemDnsToGateway'] as bool?,
      autoSystemWfpBlockLeak: (map['autoSystemWfpBlockLeak'] as List?)
          ?.cast<String>(),
    );
  }

  const TunConfig._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
    'name': name,
    'desc': desc,
    'mtu': mtu,
    'gateway': gateway,
    'dns': dns,
    'userLevel': userLevel,
    'autoSystemRoutingTable': autoSystemRoutingTable,
    'autoOutboundsInterface': autoOutboundsInterface,
    'autoSystemDnsToGateway': autoSystemDnsToGateway,
    'autoSystemWfpBlockLeak': autoSystemWfpBlockLeak,
  });
}
