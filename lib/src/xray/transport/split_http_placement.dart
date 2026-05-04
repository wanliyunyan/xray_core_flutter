part of 'transport.dart';

enum SplitHTTPPlacement {
  auto,
  body,
  path,
  cookie,
  header,
  query,
  queryInHeader;

  factory SplitHTTPPlacement.fromJson(Object? json) {
    if (json is String) {
      return switch (json) {
        'auto' => SplitHTTPPlacement.auto,
        'body' => SplitHTTPPlacement.body,
        'path' => SplitHTTPPlacement.path,
        'cookie' => SplitHTTPPlacement.cookie,
        'header' => SplitHTTPPlacement.header,
        'query' => SplitHTTPPlacement.query,
        'queryInHeader' => SplitHTTPPlacement.queryInHeader,
        _ => throw FormatException('unknown splithttp placement: $json'),
      };
    }
    throw FormatException('invalid splithttp placement: $json');
  }

  String toJson() => name;
}
