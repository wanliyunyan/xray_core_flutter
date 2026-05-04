part of 'transport.dart';

enum TLSCertificateUsage {
  encipherment,
  verify,
  issue;

  factory TLSCertificateUsage.fromJson(Object? json) {
    if (json is String) {
      return switch (json.toLowerCase()) {
        'encipherment' => TLSCertificateUsage.encipherment,
        'verify' => TLSCertificateUsage.verify,
        'issue' => TLSCertificateUsage.issue,
        _ => throw FormatException('unknown certificate usage: $json'),
      };
    }
    throw FormatException('invalid certificate usage: $json');
  }

  String toJson() => name;
}
