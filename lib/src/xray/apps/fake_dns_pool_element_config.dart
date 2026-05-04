part of 'apps.dart';

@freezed
abstract class FakeDNSPoolElementConfig with _$FakeDNSPoolElementConfig {
  const factory FakeDNSPoolElementConfig({
    required String ipPool,
    @JsonKey(name: 'poolSize') int? lruSize,
  }) = _FakeDNSPoolElementConfig;

  factory FakeDNSPoolElementConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'fakeDns pool');
    return FakeDNSPoolElementConfig(
      ipPool: map['ipPool'] as String,
      lruSize: map['poolSize'] as int?,
    );
  }

  const FakeDNSPoolElementConfig._();

  Map<String, dynamic> toJson() =>
      withoutNulls({'ipPool': ipPool, 'poolSize': lruSize});
}
