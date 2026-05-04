part of 'common.dart';

class XrayStringList {
  const XrayStringList(this.values);

  factory XrayStringList.single(String value) => XrayStringList([value]);

  factory XrayStringList.fromJson(Object? json) {
    return switch (json) {
      final List<dynamic> list => XrayStringList(list.cast<String>()),
      final String value => XrayStringList(value.split(',')),
      _ => throw FormatException('unknown format of a string list: $json'),
    };
  }

  final List<String> values;

  Object toJson() => values;
}
