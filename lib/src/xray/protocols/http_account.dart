part of 'protocol_settings.dart';

@freezed
abstract class HTTPAccount with _$HTTPAccount {
  const factory HTTPAccount({
    @JsonKey(name: 'user') String? username,
    @JsonKey(name: 'pass') String? password,
  }) = _HTTPAccount;

  factory HTTPAccount.fromJson(Object? json) {
    final map = asJsonMap(json, 'http account');
    return HTTPAccount(
      username: map['user'] as String?,
      password: map['pass'] as String?,
    );
  }

  const HTTPAccount._();

  Map<String, dynamic> toJson() =>
      withoutNulls({'user': username, 'pass': password});
}
