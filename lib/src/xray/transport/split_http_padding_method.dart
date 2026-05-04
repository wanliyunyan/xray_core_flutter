part of 'transport.dart';

enum SplitHTTPPaddingMethod {
  @JsonValue('repeat-x')
  repeatX,
  tokenish;

  factory SplitHTTPPaddingMethod.fromJson(Object? json) {
    if (json is String) {
      return switch (json.toLowerCase()) {
        'repeat-x' => SplitHTTPPaddingMethod.repeatX,
        'tokenish' => SplitHTTPPaddingMethod.tokenish,
        _ => throw FormatException('unknown padding method: $json'),
      };
    }
    throw FormatException('invalid padding method: $json');
  }

  String toJson() => switch (this) {
    SplitHTTPPaddingMethod.repeatX => 'repeat-x',
    SplitHTTPPaddingMethod.tokenish => 'tokenish',
  };
}
