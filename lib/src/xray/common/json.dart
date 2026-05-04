Map<String, dynamic> withoutNulls(Map<String, dynamic> json) {
  json.removeWhere((_, value) => value == null);
  return json;
}

Map<String, dynamic> asJsonMap(Object? json, String name) {
  if (json is Map<String, dynamic>) {
    return json;
  }
  if (json is Map) {
    return json.map((key, value) => MapEntry('$key', value));
  }
  throw FormatException('invalid $name: $json');
}

List<T> asJsonList<T>(Object? json, T Function(Object? item) parse) {
  if (json == null) {
    return const [];
  }
  if (json is List) {
    return json.map(parse).toList();
  }
  throw FormatException('invalid list: $json');
}
