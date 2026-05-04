part of 'protocol_settings.dart';

@freezed
abstract class DNSOutboundRuleConfig with _$DNSOutboundRuleConfig {
  const factory DNSOutboundRuleConfig({
    required DNSOutboundRuleAction action,
    XrayPortList? qtype,
    XrayStringList? domain,
  }) = _DNSOutboundRuleConfig;

  factory DNSOutboundRuleConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'dns outbound rule');
    return DNSOutboundRuleConfig(
      action: DNSOutboundRuleAction.fromJson(map['action']),
      qtype: map['qtype'] == null ? null : XrayPortList.fromJson(map['qtype']),
      domain: map['domain'] == null
          ? null
          : XrayStringList.fromJson(map['domain']),
    );
  }

  const DNSOutboundRuleConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'action': action.toJson(),
    'qtype': qtype?.toJson(),
    'domain': domain?.toJson(),
  });
}
