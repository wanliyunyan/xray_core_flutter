part of 'common.dart';

enum XrayNetwork {
  @JsonValue('tcp')
  tcp,
  @JsonValue('udp')
  udp,
  @JsonValue('unix')
  unix;

  factory XrayNetwork.fromJson(Object? json) {
    if (json is String) {
      return switch (json.toLowerCase()) {
        'tcp' => XrayNetwork.tcp,
        'udp' => XrayNetwork.udp,
        'unix' => XrayNetwork.unix,
        _ => throw FormatException('unknown network: $json'),
      };
    }
    throw FormatException('invalid network: $json');
  }

  String toJson() => name;
}
