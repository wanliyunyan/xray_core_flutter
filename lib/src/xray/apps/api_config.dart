part of 'apps.dart';

@freezed
abstract class APIConfig with _$APIConfig {
  const factory APIConfig({
    required String tag,
    String? listen,
    List<ApiService>? services,
  }) = _APIConfig;

  factory APIConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'api');
    return APIConfig(
      tag: map['tag'] as String,
      listen: map['listen'] as String?,
      services: map['services'] == null
          ? null
          : asJsonList(map['services'], ApiService.fromJson),
    );
  }

  const APIConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'tag': tag,
    'listen': listen,
    'services': services?.map((item) => item.toJson()).toList(),
  });
}
