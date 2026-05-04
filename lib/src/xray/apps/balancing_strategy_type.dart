part of 'apps.dart';

enum BalancingStrategyType {
  random,
  leastping,
  roundrobin,
  leastload;

  factory BalancingStrategyType.fromJson(Object? json) {
    if (json is String) {
      return switch (json.toLowerCase()) {
        'random' => BalancingStrategyType.random,
        'leastping' => BalancingStrategyType.leastping,
        'roundrobin' => BalancingStrategyType.roundrobin,
        'leastload' => BalancingStrategyType.leastload,
        _ => throw FormatException('unknown balancing strategy: $json'),
      };
    }
    throw FormatException('invalid balancing strategy: $json');
  }

  String toJson() => name;
}
