part of 'common.dart';

@freezed
abstract class XrayUser with _$XrayUser {
  const factory XrayUser({String? email, int? level}) = _XrayUser;

  factory XrayUser.fromJson(Object? json) {
    final map = asJsonMap(json, 'user');
    return XrayUser(
        email: map['email'] as String?, level: map['level'] as int?);
  }

  const XrayUser._();

  Map<String, dynamic> toJson() =>
      withoutNulls({'email': email, 'level': level});
}
