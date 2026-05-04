part of 'transport.dart';

enum ECHForceQuery {
  none,
  half,
  full;

  factory ECHForceQuery.fromJson(Object? json) {
    if (json is String) {
      return switch (json.toLowerCase()) {
        'none' => ECHForceQuery.none,
        'half' => ECHForceQuery.half,
        'full' => ECHForceQuery.full,
        _ => throw FormatException('unknown echForceQuery: $json'),
      };
    }
    throw FormatException('invalid echForceQuery: $json');
  }

  String toJson() => name;
}
