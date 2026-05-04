part of 'protocol_settings.dart';

@freezed
abstract class VMessOutboundTarget with _$VMessOutboundTarget {
  const factory VMessOutboundTarget({
    required XrayAddress address,
    required int port,
    required List<VMessUser> users,
  }) = _VMessOutboundTarget;

  factory VMessOutboundTarget.fromJson(Object? json) {
    final map = asJsonMap(json, 'vmess vnext');
    return VMessOutboundTarget(
      address: XrayAddress.fromJson(map['address']),
      port: map['port'] as int,
      users: asJsonList(map['users'], VMessUser.fromJson),
    );
  }

  const VMessOutboundTarget._();

  Map<String, dynamic> toJson() => {
    'address': address.toJson(),
    'port': port,
    'users': users.map((item) => item.toJson()).toList(),
  };
}
