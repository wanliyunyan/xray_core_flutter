part of 'protocol_settings.dart';

@freezed
abstract class VLessUser with _$VLessUser {
  const factory VLessUser({
    String? email,
    int? level,
    required String id,
    String? flow,
    String? seed,
    String? encryption,
    VLessReverseConfig? reverse,
    int? testpre,
    List<int>? testseed,
  }) = _VLessUser;

  factory VLessUser.fromJson(Object? json) {
    final map = asJsonMap(json, 'vless user');
    return VLessUser(
      email: map['email'] as String?,
      level: map['level'] as int?,
      id: map['id'] as String,
      flow: map['flow'] as String?,
      seed: map['seed'] as String?,
      encryption: map['encryption'] as String?,
      reverse: map['reverse'] == null
          ? null
          : VLessReverseConfig.fromJson(map['reverse']),
      testpre: map['testpre'] as int?,
      testseed: (map['testseed'] as List?)?.cast<int>(),
    );
  }

  const VLessUser._();

  Map<String, dynamic> toJson() => withoutNulls({
    'email': email,
    'level': level,
    'id': id,
    'flow': flow,
    'seed': seed,
    'encryption': encryption,
    'reverse': reverse?.toJson(),
    'testpre': testpre,
    'testseed': testseed,
  });
}
