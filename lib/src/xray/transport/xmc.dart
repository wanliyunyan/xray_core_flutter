part of 'transport.dart';

@freezed
abstract class XMC with _$XMC implements FinalMaskSettings {
  const factory XMC({
    String? hostname,
    required List<XMCProfile> profiles,
    required String password,
  }) = _XMC;

  factory XMC.fromJson(Object? json) {
    final map = asJsonMap(json, 'xmc mask');
    return XMC(
      hostname: map['hostname'] as String?,
      profiles: (map['profiles'] as List)
          .map((profile) => XMCProfile.fromJson(profile))
          .toList(),
      password: map['password'] as String,
    );
  }

  const XMC._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
        'hostname': hostname,
        'profiles': profiles.map((profile) => profile.toJson()).toList(),
        'password': password,
      });
}

@freezed
abstract class XMCProfile with _$XMCProfile {
  const factory XMCProfile({
    required String username,
    required String uuid,
    required String texturesValue,
    required String texturesSignature,
  }) = _XMCProfile;

  factory XMCProfile.fromJson(Object? json) {
    final map = asJsonMap(json, 'xmc profile');
    return XMCProfile(
      username: map['username'] as String,
      uuid: map['uuid'] as String,
      texturesValue: map['texturesValue'] as String,
      texturesSignature: map['texturesSignature'] as String,
    );
  }

  const XMCProfile._();

  Map<String, dynamic> toJson() => withoutNulls({
        'username': username,
        'uuid': uuid,
        'texturesValue': texturesValue,
        'texturesSignature': texturesSignature,
      });
}
