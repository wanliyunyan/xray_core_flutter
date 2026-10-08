part of 'protocol_settings.dart';

@freezed
abstract class MasqueUserConfig with _$MasqueUserConfig {
  const factory MasqueUserConfig({String? pass, int? level, String? email}) =
      _MasqueUserConfig;

  factory MasqueUserConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'MasqueUserConfig');
    return MasqueUserConfig(
      pass: map['pass'] as String?,
      level: map['level'] as int?,
      email: map['email'] as String?,
    );
  }

  const MasqueUserConfig._();

  Map<String, dynamic> toJson() =>
      withoutNulls({'pass': pass, 'level': level, 'email': email});
}
