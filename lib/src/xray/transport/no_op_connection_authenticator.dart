part of 'transport.dart';

class NoOpConnectionAuthenticator extends TCPHeaderConfig {
  const NoOpConnectionAuthenticator();

  @override
  Map<String, dynamic> toJson() => {'type': 'none'};
}
