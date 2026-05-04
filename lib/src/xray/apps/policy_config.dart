part of 'apps.dart';

@freezed
abstract class PolicyConfig with _$PolicyConfig {
  const factory PolicyConfig({Map<int, Policy>? levels, SystemPolicy? system}) =
      _PolicyConfig;

  factory PolicyConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'policy config');
    final levels = map['levels'] == null
        ? null
        : asJsonMap(map['levels'], 'policy levels').map(
            (key, value) => MapEntry(int.parse(key), Policy.fromJson(value)),
          );
    return PolicyConfig(
      levels: levels,
      system: map['system'] == null
          ? null
          : SystemPolicy.fromJson(map['system']),
    );
  }

  const PolicyConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'levels': levels?.map((key, value) => MapEntry('$key', value.toJson())),
    'system': system?.toJson(),
  });
}
