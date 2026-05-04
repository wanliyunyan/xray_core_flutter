part of 'apps.dart';

@freezed
abstract class DNSConfig with _$DNSConfig {
  const factory DNSConfig({
    List<NameServerConfig>? servers,
    HostsWrapper? hosts,
    XrayAddress? clientIp,
    String? tag,
    DnsQueryStrategy? queryStrategy,
    bool? disableCache,
    bool? serveStale,
    int? serveExpiredTTL,
    bool? disableFallback,
    bool? disableFallbackIfMatch,
    bool? enableParallelQuery,
    bool? useSystemHosts,
  }) = _DNSConfig;

  factory DNSConfig.withServers(
    List<NameServerConfig> servers, {
    HostsWrapper? hosts,
    XrayAddress? clientIp,
    String? tag,
    DnsQueryStrategy? queryStrategy,
    bool? disableCache,
    bool? serveStale,
    int? serveExpiredTTL,
    bool? disableFallback,
    bool? disableFallbackIfMatch,
    bool? enableParallelQuery,
    bool? useSystemHosts,
  }) => DNSConfig(
    servers: servers,
    hosts: hosts,
    clientIp: clientIp,
    tag: tag,
    queryStrategy: queryStrategy,
    disableCache: disableCache,
    serveStale: serveStale,
    serveExpiredTTL: serveExpiredTTL,
    disableFallback: disableFallback,
    disableFallbackIfMatch: disableFallbackIfMatch,
    enableParallelQuery: enableParallelQuery,
    useSystemHosts: useSystemHosts,
  );

  factory DNSConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'dns');
    return DNSConfig(
      servers: map['servers'] == null
          ? null
          : asJsonList(map['servers'], NameServerConfig.fromJson),
      hosts: map['hosts'] == null ? null : HostsWrapper.fromJson(map['hosts']),
      clientIp: map['clientIp'] == null
          ? null
          : XrayAddress.fromJson(map['clientIp']),
      tag: map['tag'] as String?,
      queryStrategy: map['queryStrategy'] == null
          ? null
          : DnsQueryStrategy.fromJson(map['queryStrategy']),
      disableCache: map['disableCache'] as bool?,
      serveStale: map['serveStale'] as bool?,
      serveExpiredTTL: map['serveExpiredTTL'] as int?,
      disableFallback: map['disableFallback'] as bool?,
      disableFallbackIfMatch: map['disableFallbackIfMatch'] as bool?,
      enableParallelQuery: map['enableParallelQuery'] as bool?,
      useSystemHosts: map['useSystemHosts'] as bool?,
    );
  }

  const DNSConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'servers': servers?.map((item) => item.toJson()).toList(),
    'hosts': hosts?.toJson(),
    'clientIp': clientIp?.toJson(),
    'tag': tag,
    'queryStrategy': queryStrategy?.toJson(),
    'disableCache': disableCache,
    'serveStale': serveStale,
    'serveExpiredTTL': serveExpiredTTL,
    'disableFallback': disableFallback,
    'disableFallbackIfMatch': disableFallbackIfMatch,
    'enableParallelQuery': enableParallelQuery,
    'useSystemHosts': useSystemHosts,
  });
}
