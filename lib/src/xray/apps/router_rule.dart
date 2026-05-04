part of 'apps.dart';

@freezed
abstract class RouterRule with _$RouterRule {
  const factory RouterRule({
    String? ruleTag,
    String? outboundTag,
    String? balancerTag,
    XrayStringList? domain,
    XrayStringList? domains,
    XrayStringList? ip,
    XrayPortList? port,
    XrayNetworkList? network,
    XrayStringList? sourceIP,
    XrayStringList? source,
    XrayPortList? sourcePort,
    XrayStringList? user,
    XrayPortList? vlessRoute,
    XrayStringList? inboundTag,
    @JsonKey(name: 'protocol') XrayStringList? protocols,
    @JsonKey(name: 'attrs') Map<String, String>? attributes,
    XrayStringList? localIP,
    XrayPortList? localPort,
    XrayStringList? process,
    WebhookRuleConfig? webhook,
  }) = _RouterRule;

  factory RouterRule.toOutbound({
    String? ruleTag,
    required String outboundTag,
    XrayStringList? domain,
    XrayStringList? domains,
    XrayStringList? ip,
    XrayPortList? port,
    XrayNetworkList? network,
    XrayStringList? sourceIP,
    XrayStringList? source,
    XrayPortList? sourcePort,
    XrayStringList? user,
    XrayPortList? vlessRoute,
    XrayStringList? inboundTag,
    XrayStringList? protocols,
    Map<String, String>? attributes,
    XrayStringList? localIP,
    XrayPortList? localPort,
    XrayStringList? process,
    WebhookRuleConfig? webhook,
  }) => RouterRule(
    ruleTag: ruleTag,
    outboundTag: outboundTag,
    domain: domain,
    domains: domains,
    ip: ip,
    port: port,
    network: network,
    sourceIP: sourceIP,
    source: source,
    sourcePort: sourcePort,
    user: user,
    vlessRoute: vlessRoute,
    inboundTag: inboundTag,
    protocols: protocols,
    attributes: attributes,
    localIP: localIP,
    localPort: localPort,
    process: process,
    webhook: webhook,
  );

  factory RouterRule.toBalancer({
    String? ruleTag,
    required String balancerTag,
    XrayStringList? domain,
    XrayStringList? domains,
    XrayStringList? ip,
    XrayPortList? port,
    XrayNetworkList? network,
    XrayStringList? sourceIP,
    XrayStringList? source,
    XrayPortList? sourcePort,
    XrayStringList? user,
    XrayPortList? vlessRoute,
    XrayStringList? inboundTag,
    XrayStringList? protocols,
    Map<String, String>? attributes,
    XrayStringList? localIP,
    XrayPortList? localPort,
    XrayStringList? process,
    WebhookRuleConfig? webhook,
  }) => RouterRule(
    ruleTag: ruleTag,
    balancerTag: balancerTag,
    domain: domain,
    domains: domains,
    ip: ip,
    port: port,
    network: network,
    sourceIP: sourceIP,
    source: source,
    sourcePort: sourcePort,
    user: user,
    vlessRoute: vlessRoute,
    inboundTag: inboundTag,
    protocols: protocols,
    attributes: attributes,
    localIP: localIP,
    localPort: localPort,
    process: process,
    webhook: webhook,
  );

  factory RouterRule.fromJson(Object? json) {
    final map = asJsonMap(json, 'router rule');
    return RouterRule(
      ruleTag: map['ruleTag'] as String?,
      outboundTag: map['outboundTag'] as String?,
      balancerTag: map['balancerTag'] as String?,
      domain: map['domain'] == null
          ? null
          : XrayStringList.fromJson(map['domain']),
      domains: map['domains'] == null
          ? null
          : XrayStringList.fromJson(map['domains']),
      ip: map['ip'] == null ? null : XrayStringList.fromJson(map['ip']),
      port: map['port'] == null ? null : XrayPortList.fromJson(map['port']),
      network: map['network'] == null
          ? null
          : XrayNetworkList.fromJson(map['network']),
      sourceIP: map['sourceIP'] == null
          ? null
          : XrayStringList.fromJson(map['sourceIP']),
      source: map['source'] == null
          ? null
          : XrayStringList.fromJson(map['source']),
      sourcePort: map['sourcePort'] == null
          ? null
          : XrayPortList.fromJson(map['sourcePort']),
      user: map['user'] == null ? null : XrayStringList.fromJson(map['user']),
      vlessRoute: map['vlessRoute'] == null
          ? null
          : XrayPortList.fromJson(map['vlessRoute']),
      inboundTag: map['inboundTag'] == null
          ? null
          : XrayStringList.fromJson(map['inboundTag']),
      protocols: map['protocol'] == null
          ? null
          : XrayStringList.fromJson(map['protocol']),
      attributes: (map['attrs'] as Map?)?.cast<String, String>(),
      localIP: map['localIP'] == null
          ? null
          : XrayStringList.fromJson(map['localIP']),
      localPort: map['localPort'] == null
          ? null
          : XrayPortList.fromJson(map['localPort']),
      process: map['process'] == null
          ? null
          : XrayStringList.fromJson(map['process']),
      webhook: map['webhook'] == null
          ? null
          : WebhookRuleConfig.fromJson(map['webhook']),
    );
  }

  const RouterRule._();

  Map<String, dynamic> toJson() => withoutNulls({
    'ruleTag': ruleTag,
    'outboundTag': outboundTag,
    'balancerTag': balancerTag,
    'domain': domain?.toJson(),
    'domains': domains?.toJson(),
    'ip': ip?.toJson(),
    'port': port?.toJson(),
    'network': network?.toJson(),
    'sourceIP': sourceIP?.toJson(),
    'source': source?.toJson(),
    'sourcePort': sourcePort?.toJson(),
    'user': user?.toJson(),
    'vlessRoute': vlessRoute?.toJson(),
    'inboundTag': inboundTag?.toJson(),
    'protocol': protocols?.toJson(),
    'attrs': attributes,
    'localIP': localIP?.toJson(),
    'localPort': localPort?.toJson(),
    'process': process?.toJson(),
    'webhook': webhook?.toJson(),
  });
}
