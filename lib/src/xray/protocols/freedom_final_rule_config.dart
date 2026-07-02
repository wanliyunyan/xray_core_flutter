part of 'protocol_settings.dart';

@freezed
abstract class FreedomFinalRuleConfig with _$FreedomFinalRuleConfig {
  const factory FreedomFinalRuleConfig({
    String? action,
    XrayNetworkList? network,
    XrayPortList? port,
    XrayStringList? ip,
    XrayInt32Range? blockDelay,
  }) = _FreedomFinalRuleConfig;

  factory FreedomFinalRuleConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'freedom final rule');
    return FreedomFinalRuleConfig(
      action: map['action'] as String?,
      network: map['network'] == null
          ? null
          : XrayNetworkList.fromJson(map['network']),
      port: map['port'] == null ? null : XrayPortList.fromJson(map['port']),
      ip: map['ip'] == null ? null : XrayStringList.fromJson(map['ip']),
      blockDelay: map['blockDelay'] == null
          ? null
          : XrayInt32Range.fromJson(map['blockDelay']),
    );
  }

  const FreedomFinalRuleConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
        'action': action,
        'network': network?.toJson(),
        'port': port?.toJson(),
        'ip': ip?.toJson(),
        'blockDelay': blockDelay?.toJson(),
      });
}
