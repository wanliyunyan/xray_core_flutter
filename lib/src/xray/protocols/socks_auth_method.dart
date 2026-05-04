part of 'protocol_settings.dart';

enum SocksAuthMethod {
  @JsonValue('noauth')
  noauth,
  @JsonValue('password')
  password;

  factory SocksAuthMethod.fromJson(Object? json) {
    if (json is String) {
      return switch (json.toLowerCase()) {
        'noauth' => SocksAuthMethod.noauth,
        'password' => SocksAuthMethod.password,
        _ => throw FormatException('unknown socks auth method: $json'),
      };
    }
    throw FormatException('invalid socks auth method: $json');
  }

  String toJson() => switch (this) {
    SocksAuthMethod.noauth => 'noauth',
    SocksAuthMethod.password => 'password',
  };
}
