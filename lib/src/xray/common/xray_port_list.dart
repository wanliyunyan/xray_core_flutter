part of 'common.dart';

class XrayPortList {
  const XrayPortList(this.ranges);

  factory XrayPortList.single(int port) =>
      XrayPortList([XrayPortRange.single(port)]);

  factory XrayPortList.range(int from, int to) =>
      XrayPortList([XrayPortRange(from: from, to: to)]);

  factory XrayPortList.env(String name) =>
      XrayPortList([XrayPortRange.env(name)]);

  factory XrayPortList.fromJson(Object? json) {
    if (json is int) {
      return XrayPortList.single(json);
    }
    if (json is String) {
      final ranges = json
          .split(',')
          .map((item) => item.trim())
          .where((item) => item.isNotEmpty)
          .map(XrayPortRange.fromJson)
          .toList();
      return XrayPortList(ranges);
    }
    throw FormatException('invalid port: $json');
  }

  final List<XrayPortRange> ranges;

  Object toJson() {
    final value = ranges.map((range) => range.toJson()).join(',');
    return int.tryParse(value) ?? value;
  }
}
