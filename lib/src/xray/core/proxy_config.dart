part of 'config.dart';

@freezed
abstract class ProxyConfig with _$ProxyConfig {
  const factory ProxyConfig({required String tag, bool? transportLayer}) =
      _ProxyConfig;

  factory ProxyConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'proxySettings');
    return ProxyConfig(
      tag: map['tag'] as String,
      transportLayer: map['transportLayer'] as bool?,
    );
  }

  const ProxyConfig._();

  Map<String, dynamic> toJson() =>
      withoutNulls({'tag': tag, 'transportLayer': transportLayer});
}
