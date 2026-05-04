part of 'protocol_settings.dart';

@freezed
abstract class HysteriaUserConfig with _$HysteriaUserConfig {
  const factory HysteriaUserConfig({
    required String auth,
    int? level,
    String? email,
  }) = _HysteriaUserConfig;

  factory HysteriaUserConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'hysteria user');
    return HysteriaUserConfig(
      auth: map['auth'] as String,
      level: map['level'] as int?,
      email: map['email'] as String?,
    );
  }

  const HysteriaUserConfig._();

  Map<String, dynamic> toJson() =>
      withoutNulls({'auth': auth, 'level': level, 'email': email});
}
