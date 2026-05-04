part of 'protocol_settings.dart';

@freezed
abstract class VLessOutboundVnext with _$VLessOutboundVnext {
  const factory VLessOutboundVnext({
    required XrayAddress address,
    required int port,
    required List<VLessUser> users,
  }) = _VLessOutboundVnext;

  factory VLessOutboundVnext.fromJson(Object? json) {
    final map = asJsonMap(json, 'vless vnext');
    return VLessOutboundVnext(
      address: XrayAddress.fromJson(map['address']),
      port: map['port'] as int,
      users: asJsonList(map['users'], VLessUser.fromJson),
    );
  }

  const VLessOutboundVnext._();

  Map<String, dynamic> toJson() => {
    'address': address.toJson(),
    'port': port,
    'users': users.map((item) => item.toJson()).toList(),
  };
}
