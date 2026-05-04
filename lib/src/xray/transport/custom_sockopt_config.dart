part of 'transport.dart';

@freezed
abstract class CustomSockoptConfig with _$CustomSockoptConfig {
  const factory CustomSockoptConfig({
    @JsonKey(name: 'system') String? system,
    String? network,
    String? level,
    String? opt,
    String? value,
    String? type,
  }) = _CustomSockoptConfig;

  factory CustomSockoptConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'customSockopt');
    return CustomSockoptConfig(
      system: map['system'] as String?,
      network: map['network'] as String?,
      level: map['level'] as String?,
      opt: map['opt'] as String?,
      value: map['value'] as String?,
      type: map['type'] as String?,
    );
  }

  const CustomSockoptConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'system': system,
    'network': network,
    'level': level,
    'opt': opt,
    'value': value,
    'type': type,
  });
}
