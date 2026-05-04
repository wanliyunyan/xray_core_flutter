part of 'protocol_settings.dart';

@freezed
abstract class TrojanServerTarget with _$TrojanServerTarget {
  const factory TrojanServerTarget({
    required XrayAddress address,
    required int port,
    int? level,
    String? email,
    required String password,
    String? flow,
  }) = _TrojanServerTarget;

  factory TrojanServerTarget.fromJson(Object? json) {
    final map = asJsonMap(json, 'trojan server');
    return TrojanServerTarget(
      address: XrayAddress.fromJson(map['address']),
      port: map['port'] as int,
      level: map['level'] as int?,
      email: map['email'] as String?,
      password: map['password'] as String,
      flow: map['flow'] as String?,
    );
  }

  const TrojanServerTarget._();

  Map<String, dynamic> toJson() => withoutNulls({
    'address': address.toJson(),
    'port': port,
    'level': level,
    'email': email,
    'password': password,
    'flow': flow,
  });
}
