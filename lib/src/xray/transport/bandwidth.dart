part of 'transport.dart';

class Bandwidth {
  const Bandwidth(this.value);

  factory Bandwidth.fromJson(Object? json) {
    if (json is String) {
      return Bandwidth(json);
    }
    throw FormatException('invalid bandwidth: $json');
  }

  final String value;

  Object toJson() => value;
}
