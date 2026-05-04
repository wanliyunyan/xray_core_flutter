part of 'protocol_settings.dart';

@freezed
abstract class TrojanUserConfig with _$TrojanUserConfig {
  const factory TrojanUserConfig({
    required String password,
    int? level,
    String? email,
    String? flow,
  }) = _TrojanUserConfig;

  factory TrojanUserConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'trojan user');
    return TrojanUserConfig(
      password: map['password'] as String,
      level: map['level'] as int?,
      email: map['email'] as String?,
      flow: map['flow'] as String?,
    );
  }

  const TrojanUserConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'password': password,
    'level': level,
    'email': email,
    'flow': flow,
  });
}
