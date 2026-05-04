part of 'transport.dart';

@freezed
abstract class AuthenticatorResponse with _$AuthenticatorResponse {
  const factory AuthenticatorResponse({
    String? version,
    String? status,
    String? reason,
    Map<String, XrayStringList>? headers,
  }) = _AuthenticatorResponse;

  factory AuthenticatorResponse.fromJson(Object? json) {
    final map = asJsonMap(json, 'authenticator response');
    return AuthenticatorResponse(
      version: map['version'] as String?,
      status: map['status'] as String?,
      reason: map['reason'] as String?,
      headers: (map['headers'] as Map?)?.map(
        (key, value) => MapEntry('$key', XrayStringList.fromJson(value)),
      ),
    );
  }

  const AuthenticatorResponse._();

  Map<String, dynamic> toJson() => withoutNulls({
    'version': version,
    'status': status,
    'reason': reason,
    'headers': headers?.map((key, value) => MapEntry(key, value.toJson())),
  });
}
