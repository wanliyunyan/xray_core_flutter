part of 'protocol_settings.dart';

@freezed
abstract class VMessUser with _$VMessUser {
  const factory VMessUser({
    String? email,
    int? level,
    required String id,
    VmessSecurity? security,
    String? experiments,
  }) = _VMessUser;

  factory VMessUser.fromJson(Object? json) {
    final map = asJsonMap(json, 'vmess user');
    return VMessUser(
      email: map['email'] as String?,
      level: map['level'] as int?,
      id: map['id'] as String,
      security: map['security'] == null
          ? null
          : VmessSecurity.fromJson(map['security']),
      experiments: map['experiments'] as String?,
    );
  }

  const VMessUser._();

  Map<String, dynamic> toJson() => withoutNulls({
    'email': email,
    'level': level,
    'id': id,
    'security': security?.toJson(),
    'experiments': experiments,
  });
}
