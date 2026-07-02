part of 'transport.dart';

enum SecurityProtocol {
  @JsonValue('none')
  none,
  @JsonValue('tls')
  tls,
  @JsonValue('reality')
  reality,
  @JsonValue('xtls')
  xtls;

  factory SecurityProtocol.fromJson(Object? json) {
    if (json is String) {
      return switch (json.toLowerCase()) {
        'none' => SecurityProtocol.none,
        'tls' => SecurityProtocol.tls,
        'reality' => SecurityProtocol.reality,
        'xtls' => SecurityProtocol.xtls,
        _ => throw FormatException('unknown security protocol: $json'),
      };
    }
    throw FormatException('invalid security protocol: $json');
  }

  String toJson() => name;
}
