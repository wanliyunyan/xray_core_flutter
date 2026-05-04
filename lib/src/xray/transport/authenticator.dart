part of 'transport.dart';

class Authenticator extends TCPHeaderConfig {
  const Authenticator({this.request, this.response});

  factory Authenticator.fromJson(Object? json) {
    final map = asJsonMap(json, 'tcp http header');
    return Authenticator(
      request: map['request'] == null
          ? null
          : AuthenticatorRequest.fromJson(map['request']),
      response: map['response'] == null
          ? null
          : AuthenticatorResponse.fromJson(map['response']),
    );
  }

  final AuthenticatorRequest? request;
  final AuthenticatorResponse? response;

  @override
  Map<String, dynamic> toJson() => withoutNulls({
    'type': 'http',
    'request': request?.toJson(),
    'response': response?.toJson(),
  });
}
