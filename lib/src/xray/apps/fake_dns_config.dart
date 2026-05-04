part of 'apps.dart';

sealed class FakeDNSConfig {
  const FakeDNSConfig();

  const factory FakeDNSConfig.pool(FakeDNSPoolElementConfig pool) =
      SingleFakeDNSConfig;

  const factory FakeDNSConfig.pools(List<FakeDNSPoolElementConfig> pools) =
      MultiFakeDNSConfig;

  factory FakeDNSConfig.fromJson(Object? json) {
    if (json is List) {
      return FakeDNSConfig.pools(
        json.map(FakeDNSPoolElementConfig.fromJson).toList(),
      );
    }
    return FakeDNSConfig.pool(FakeDNSPoolElementConfig.fromJson(json));
  }

  Object toJson();
}

class SingleFakeDNSConfig extends FakeDNSConfig {
  const SingleFakeDNSConfig(this.pool);

  final FakeDNSPoolElementConfig pool;

  @override
  Object toJson() => pool.toJson();
}

class MultiFakeDNSConfig extends FakeDNSConfig {
  const MultiFakeDNSConfig(this.pools);

  final List<FakeDNSPoolElementConfig> pools;

  @override
  Object toJson() => pools.map((item) => item.toJson()).toList();
}
