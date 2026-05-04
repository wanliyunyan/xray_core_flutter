part of 'transport.dart';

@freezed
abstract class AuthenticatorRequest with _$AuthenticatorRequest {
  const factory AuthenticatorRequest({
    String? version,
    String? method,
    XrayStringList? path,
    Map<String, XrayStringList>? headers,
  }) = _AuthenticatorRequest;

  factory AuthenticatorRequest.fromJson(Object? json) {
    final map = asJsonMap(json, 'authenticator request');
    return AuthenticatorRequest(
      version: map['version'] as String?,
      method: map['method'] as String?,
      path: map['path'] == null ? null : XrayStringList.fromJson(map['path']),
      headers: (map['headers'] as Map?)?.map(
        (key, value) => MapEntry('$key', XrayStringList.fromJson(value)),
      ),
    );
  }

  const AuthenticatorRequest._();

  Map<String, dynamic> toJson() => withoutNulls({
    'version': version,
    'method': method,
    'path': path?.toJson(),
    'headers': headers?.map((key, value) => MapEntry(key, value.toJson())),
  });
}
