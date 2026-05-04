part of 'protocol_settings.dart';

@freezed
abstract class SocksAccount with _$SocksAccount {
  const factory SocksAccount({
    @JsonKey(name: 'user') String? username,
    @JsonKey(name: 'pass') String? password,
  }) = _SocksAccount;

  factory SocksAccount.fromJson(Object? json) {
    final map = asJsonMap(json, 'socks account');
    return SocksAccount(
      username: map['user'] as String?,
      password: map['pass'] as String?,
    );
  }

  const SocksAccount._();

  Map<String, dynamic> toJson() =>
      withoutNulls({'user': username, 'pass': password});
}
