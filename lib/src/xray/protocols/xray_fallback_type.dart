part of 'protocol_settings.dart';

enum XrayFallbackType {
  tcp,
  unix,
  serve;

  factory XrayFallbackType.fromJson(Object? json) {
    if (json is String) {
      return switch (json.toLowerCase()) {
        'tcp' => XrayFallbackType.tcp,
        'unix' => XrayFallbackType.unix,
        'serve' => XrayFallbackType.serve,
        _ => throw FormatException('unknown fallback type: $json'),
      };
    }
    throw FormatException('invalid fallback type: $json');
  }

  String toJson() => name;
}
