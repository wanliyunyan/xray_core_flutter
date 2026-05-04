part of 'protocol_settings.dart';

@freezed
abstract class TunConfig with _$TunConfig implements XrayInboundSettings {
  const factory TunConfig({
    String? name,
    @JsonKey(name: 'mtu') int? mtu,
    List<String>? gateway,
    @JsonKey(name: 'dns') List<String>? dns,
    int? userLevel,
    List<String>? autoSystemRoutingTable,
    String? autoOutboundsInterface,
  }) = _TunConfig;

  factory TunConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'tun inbound');
    return TunConfig(
      name: map['name'] as String?,
      mtu: map['mtu'] as int?,
      gateway: (map['gateway'] as List?)?.cast<String>(),
      dns: (map['dns'] as List?)?.cast<String>(),
      userLevel: map['userLevel'] as int?,
      autoSystemRoutingTable: (map['autoSystemRoutingTable'] as List?)
          ?.cast<String>(),
      autoOutboundsInterface: map['autoOutboundsInterface'] as String?,
    );
  }

  const TunConfig._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
    'name': name,
    'mtu': mtu,
    'gateway': gateway,
    'dns': dns,
    'userLevel': userLevel,
    'autoSystemRoutingTable': autoSystemRoutingTable,
    'autoOutboundsInterface': autoOutboundsInterface,
  });
}
