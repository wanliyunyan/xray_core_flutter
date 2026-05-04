part of 'apps.dart';

enum RouterDomainStrategy {
  @JsonValue('AsIs')
  asIs,
  @JsonValue('IPIfNonMatch')
  ipIfNonMatch,
  @JsonValue('IPOnDemand')
  ipOnDemand;

  factory RouterDomainStrategy.fromJson(Object? json) {
    if (json is String) {
      return switch (json.toLowerCase()) {
        'asis' => RouterDomainStrategy.asIs,
        'ipifnonmatch' => RouterDomainStrategy.ipIfNonMatch,
        'ipondemand' => RouterDomainStrategy.ipOnDemand,
        _ => throw FormatException('unknown router domain strategy: $json'),
      };
    }
    throw FormatException('invalid router domain strategy: $json');
  }

  String toJson() => switch (this) {
    RouterDomainStrategy.asIs => 'AsIs',
    RouterDomainStrategy.ipIfNonMatch => 'IPIfNonMatch',
    RouterDomainStrategy.ipOnDemand => 'IPOnDemand',
  };
}
