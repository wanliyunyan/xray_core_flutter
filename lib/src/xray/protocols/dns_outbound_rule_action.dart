part of 'protocol_settings.dart';

enum DNSOutboundRuleAction {
  direct,
  drop,
  reject,
  hijack;

  factory DNSOutboundRuleAction.fromJson(Object? json) {
    if (json is String) {
      return switch (json.toLowerCase()) {
        'direct' => DNSOutboundRuleAction.direct,
        'drop' => DNSOutboundRuleAction.drop,
        'reject' => DNSOutboundRuleAction.reject,
        'hijack' => DNSOutboundRuleAction.hijack,
        _ => throw FormatException('unknown dns outbound rule action: $json'),
      };
    }
    throw FormatException('invalid dns outbound rule action: $json');
  }

  String toJson() => name;
}
