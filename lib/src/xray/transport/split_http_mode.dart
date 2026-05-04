part of 'transport.dart';

enum SplitHTTPMode {
  auto,
  @JsonValue('packet-up')
  packetUp,
  @JsonValue('stream-up')
  streamUp,
  @JsonValue('stream-one')
  streamOne;

  factory SplitHTTPMode.fromJson(Object? json) {
    if (json is String) {
      return switch (json.toLowerCase()) {
        'auto' => SplitHTTPMode.auto,
        'packet-up' => SplitHTTPMode.packetUp,
        'stream-up' => SplitHTTPMode.streamUp,
        'stream-one' => SplitHTTPMode.streamOne,
        _ => throw FormatException('unknown splithttp mode: $json'),
      };
    }
    throw FormatException('invalid splithttp mode: $json');
  }

  String toJson() => switch (this) {
    SplitHTTPMode.auto => 'auto',
    SplitHTTPMode.packetUp => 'packet-up',
    SplitHTTPMode.streamUp => 'stream-up',
    SplitHTTPMode.streamOne => 'stream-one',
  };
}
