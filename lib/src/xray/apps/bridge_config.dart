part of 'apps.dart';

@freezed
abstract class BridgeConfig with _$BridgeConfig {
  const factory BridgeConfig({String? tag, String? domain}) = _BridgeConfig;

  factory BridgeConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'bridge');
    return BridgeConfig(
      tag: map['tag'] as String?,
      domain: map['domain'] as String?,
    );
  }

  const BridgeConfig._();

  Map<String, dynamic> toJson() => withoutNulls({'tag': tag, 'domain': domain});
}
