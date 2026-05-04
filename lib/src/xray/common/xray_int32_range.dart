part of 'common.dart';

@freezed
abstract class XrayInt32Range with _$XrayInt32Range {
  const factory XrayInt32Range({required int left, required int right}) =
      _XrayInt32Range;

  factory XrayInt32Range.single(int value) =>
      XrayInt32Range(left: value, right: value);

  factory XrayInt32Range.fromJson(Object? json) {
    if (json is int) {
      return XrayInt32Range.single(json);
    }
    if (json is String) {
      if (json.isEmpty) {
        return XrayInt32Range.single(0);
      }
      final dash = json.indexOf('-', json.startsWith('-') ? 1 : 0);
      if (dash < 0) {
        return XrayInt32Range.single(int.parse(json));
      }
      return XrayInt32Range(
        left: int.parse(json.substring(0, dash)),
        right: int.parse(json.substring(dash + 1)),
      );
    }
    throw FormatException('invalid integer range: $json');
  }

  const XrayInt32Range._();

  int get from => left <= right ? left : right;

  int get to => left <= right ? right : left;

  Object toJson() => left == right ? left : '$left-$right';
}
