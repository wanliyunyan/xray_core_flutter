part of 'common.dart';

@freezed
abstract class XrayPortRange with _$XrayPortRange {
  const factory XrayPortRange({
    required int from,
    required int to,
    String? raw,
  }) = _XrayPortRange;

  factory XrayPortRange.single(int port) => XrayPortRange(from: port, to: port);

  factory XrayPortRange.raw(String raw) =>
      XrayPortRange(from: 0, to: 0, raw: raw);

  factory XrayPortRange.env(String name) => XrayPortRange.raw('env:$name');

  factory XrayPortRange.fromJson(Object? json) {
    if (json is int) {
      return XrayPortRange.single(json);
    }
    if (json is String) {
      if (json.startsWith('env:')) {
        return XrayPortRange.raw(json);
      }
      final parts = json.split('-');
      if (parts.length == 1) {
        final port = int.parse(parts.first);
        return XrayPortRange.single(port);
      }
      if (parts.length == 2) {
        final from = int.parse(parts[0]);
        final to = int.parse(parts[1]);
        if (from > to) {
          throw FormatException('invalid port range $from -> $to');
        }
        return XrayPortRange(from: from, to: to);
      }
    }
    throw FormatException('invalid port range: $json');
  }

  const XrayPortRange._();

  Object toJson() => raw ?? (from == to ? from : '$from-$to');
}
