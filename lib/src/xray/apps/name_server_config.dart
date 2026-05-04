part of 'apps.dart';

@freezed
abstract class NameServerConfig with _$NameServerConfig {
  const factory NameServerConfig({
    required XrayAddress address,
    XrayAddress? clientIp,
    int? port,
    bool? skipFallback,
    XrayStringList? domains,
    XrayStringList? expectedIPs,
    XrayStringList? expectIPs,
    DnsQueryStrategy? queryStrategy,
    String? tag,
    int? timeoutMs,
    bool? disableCache,
    bool? serveStale,
    int? serveExpiredTTL,
    bool? finalQuery,
    XrayStringList? unexpectedIPs,
    bool? simplified,
  }) = _NameServerConfig;

  const NameServerConfig._();

  factory NameServerConfig.fromJson(Object? json) {
    if (json is String) {
      return NameServerConfig.simple(json);
    }
    final map = asJsonMap(json, 'name server');
    return NameServerConfig(
      address: XrayAddress.fromJson(map['address']),
      clientIp: map['clientIp'] == null
          ? null
          : XrayAddress.fromJson(map['clientIp']),
      port: map['port'] as int?,
      skipFallback: map['skipFallback'] as bool?,
      domains: map['domains'] == null
          ? null
          : XrayStringList.fromJson(map['domains']),
      expectedIPs: map['expectedIPs'] == null
          ? null
          : XrayStringList.fromJson(map['expectedIPs']),
      expectIPs: map['expectIPs'] == null
          ? null
          : XrayStringList.fromJson(map['expectIPs']),
      queryStrategy: map['queryStrategy'] == null
          ? null
          : DnsQueryStrategy.fromJson(map['queryStrategy']),
      tag: map['tag'] as String?,
      timeoutMs: map['timeoutMs'] as int?,
      disableCache: map['disableCache'] as bool?,
      serveStale: map['serveStale'] as bool?,
      serveExpiredTTL: map['serveExpiredTTL'] as int?,
      finalQuery: map['finalQuery'] as bool?,
      unexpectedIPs: map['unexpectedIPs'] == null
          ? null
          : XrayStringList.fromJson(map['unexpectedIPs']),
    );
  }

  factory NameServerConfig.simple(String address) =>
      NameServerConfig(address: XrayAddress(address), simplified: true);

  Object toJson() {
    if (simplified == true) {
      return address.toJson();
    }
    return withoutNulls({
      'address': address.toJson(),
      'clientIp': clientIp?.toJson(),
      'port': port,
      'skipFallback': skipFallback,
      'domains': domains?.toJson(),
      'expectedIPs': expectedIPs?.toJson(),
      'expectIPs': expectIPs?.toJson(),
      'queryStrategy': queryStrategy?.toJson(),
      'tag': tag,
      'timeoutMs': timeoutMs,
      'disableCache': disableCache,
      'serveStale': serveStale,
      'serveExpiredTTL': serveExpiredTTL,
      'finalQuery': finalQuery,
      'unexpectedIPs': unexpectedIPs?.toJson(),
    });
  }
}
