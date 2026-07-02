part of 'protocol_settings.dart';

@freezed
abstract class DNSOutboundRuleConfig with _$DNSOutboundRuleConfig {
  const factory DNSOutboundRuleConfig({
    required DNSOutboundRuleAction action,
    XrayPortList? qType,
    XrayStringList? domain,
    int? rCode,
  }) = _DNSOutboundRuleConfig;

  factory DNSOutboundRuleConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'dns outbound rule');
    return DNSOutboundRuleConfig(
      action: DNSOutboundRuleAction.fromJson(map['action']),
      qType: map['qType'] == null ? null : XrayPortList.fromJson(map['qType']),
      domain:
          map['domain'] == null ? null : XrayStringList.fromJson(map['domain']),
      rCode: map['rCode'] as int?,
    );
  }

  const DNSOutboundRuleConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
        'action': action.toJson(),
        'qType': qType?.toJson(),
        'domain': domain?.toJson(),
        'rCode': rCode,
      });
}
