part of 'transport.dart';

enum TProxyMode {
  off,
  tproxy,
  redirect;

  factory TProxyMode.fromJson(Object? json) {
    if (json is String) {
      return switch (json.toLowerCase()) {
        'off' => TProxyMode.off,
        'tproxy' => TProxyMode.tproxy,
        'redirect' => TProxyMode.redirect,
        _ => throw FormatException('unknown tproxy mode: $json'),
      };
    }
    throw FormatException('invalid tproxy mode: $json');
  }

  String toJson() => name;
}
