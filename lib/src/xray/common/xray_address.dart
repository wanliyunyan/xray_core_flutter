part of 'common.dart';

class XrayAddress {
  const XrayAddress(this.value);

  factory XrayAddress.fromJson(Object? json) {
    if (json is String) {
      return XrayAddress(json);
    }
    throw FormatException('invalid address: $json');
  }

  final String value;

  Object toJson() => value;
}
