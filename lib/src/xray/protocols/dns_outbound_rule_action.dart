part of 'protocol_settings.dart';

enum DNSOutboundRuleAction {
  direct,
  drop,
  @JsonValue('return')
  returnResponse,
  reject,
  hijack;

  factory DNSOutboundRuleAction.fromJson(Object? json) {
    if (json is String) {
      return switch (json.toLowerCase()) {
        'direct' => DNSOutboundRuleAction.direct,
        'drop' => DNSOutboundRuleAction.drop,
        'return' => DNSOutboundRuleAction.returnResponse,
        'reject' => DNSOutboundRuleAction.reject,
        'hijack' => DNSOutboundRuleAction.hijack,
        _ => throw FormatException('unknown dns outbound rule action: $json'),
      };
    }
    throw FormatException('invalid dns outbound rule action: $json');
  }

  String toJson() => switch (this) {
        DNSOutboundRuleAction.returnResponse => 'return',
        DNSOutboundRuleAction.reject => 'return',
        _ => name,
      };
}
