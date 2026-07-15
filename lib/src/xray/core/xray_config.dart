part of 'config.dart';

@freezed
abstract class XrayConfig with _$XrayConfig {
  const factory XrayConfig({
    Map<String, dynamic>? transport,
    Map<String, String>? env,
    LogConfig? log,
    RouterConfig? routing,
    DNSConfig? dns,
    List<InboundDetourConfig>? inbounds,
    List<OutboundDetourConfig>? outbounds,
    PolicyConfig? policy,
    APIConfig? api,
    MetricsConfig? metrics,
    StatsConfig? stats,
    ReverseConfig? reverse,
    @JsonKey(name: 'fakeDns') FakeDNSConfig? fakeDns,
    ObservatoryConfig? observatory,
    BurstObservatoryConfig? burstObservatory,
    VersionConfig? version,
    GeodataConfig? geodata,
  }) = _XrayConfig;

  factory XrayConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'xray config');
    return XrayConfig(
      transport: map['transport'] == null
          ? null
          : asJsonMap(map['transport'], 'transport'),
      env: (map['env'] as Map?)?.cast<String, String>(),
      log: map['log'] == null ? null : LogConfig.fromJson(map['log']),
      routing:
          map['routing'] == null ? null : RouterConfig.fromJson(map['routing']),
      dns: map['dns'] == null ? null : DNSConfig.fromJson(map['dns']),
      inbounds: map['inbounds'] == null
          ? null
          : asJsonList(map['inbounds'], InboundDetourConfig.fromJson),
      outbounds: map['outbounds'] == null
          ? null
          : asJsonList(map['outbounds'], OutboundDetourConfig.fromJson),
      policy:
          map['policy'] == null ? null : PolicyConfig.fromJson(map['policy']),
      api: map['api'] == null ? null : APIConfig.fromJson(map['api']),
      metrics: map['metrics'] == null
          ? null
          : MetricsConfig.fromJson(map['metrics']),
      stats: map['stats'] == null ? null : StatsConfig.fromJson(map['stats']),
      reverse: map['reverse'] == null
          ? null
          : ReverseConfig.fromJson(map['reverse']),
      fakeDns: map['fakeDns'] == null
          ? null
          : FakeDNSConfig.fromJson(map['fakeDns']),
      observatory: map['observatory'] == null
          ? null
          : ObservatoryConfig.fromJson(map['observatory']),
      burstObservatory: map['burstObservatory'] == null
          ? null
          : BurstObservatoryConfig.fromJson(map['burstObservatory']),
      version: map['version'] == null
          ? null
          : VersionConfig.fromJson(map['version']),
      geodata: map['geodata'] == null
          ? null
          : GeodataConfig.fromJson(map['geodata']),
    );
  }

  const XrayConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
        'transport': transport,
        'env': env,
        'log': log?.toJson(),
        'routing': routing?.toJson(),
        'dns': dns?.toJson(),
        'inbounds': inbounds?.map((item) => item.toJson()).toList(),
        'outbounds': outbounds?.map((item) => item.toJson()).toList(),
        'policy': policy?.toJson(),
        'api': api?.toJson(),
        'metrics': metrics?.toJson(),
        'stats': stats?.toJson(),
        'reverse': reverse?.toJson(),
        'fakeDns': fakeDns?.toJson(),
        'observatory': observatory?.toJson(),
        'burstObservatory': burstObservatory?.toJson(),
        'version': version?.toJson(),
        'geodata': geodata?.toJson(),
      });
}
