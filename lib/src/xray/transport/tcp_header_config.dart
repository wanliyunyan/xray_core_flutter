part of 'transport.dart';

sealed class TCPHeaderConfig {
  const TCPHeaderConfig();

  const factory TCPHeaderConfig.none() = NoOpConnectionAuthenticator;

  const factory TCPHeaderConfig.http({
    AuthenticatorRequest? request,
    AuthenticatorResponse? response,
  }) = Authenticator;

  factory TCPHeaderConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'tcp header');
    final type = map['type'];
    return switch (type is String ? type.toLowerCase() : '') {
      'none' => const NoOpConnectionAuthenticator(),
      'http' => Authenticator.fromJson(map),
      _ => RawTCPHeaderConfig(map),
    };
  }

  Map<String, dynamic> toJson();
}

class RawTCPHeaderConfig extends TCPHeaderConfig {
  const RawTCPHeaderConfig(this.value);

  final Map<String, dynamic> value;

  @override
  Map<String, dynamic> toJson() => value;
}
