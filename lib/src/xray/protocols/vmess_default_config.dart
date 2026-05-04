part of 'protocol_settings.dart';

@freezed
abstract class VMessDefaultConfig with _$VMessDefaultConfig {
  const factory VMessDefaultConfig({int? level}) = _VMessDefaultConfig;

  factory VMessDefaultConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'vmess default');
    return VMessDefaultConfig(level: map['level'] as int?);
  }

  const VMessDefaultConfig._();

  Map<String, dynamic> toJson() => withoutNulls({'level': level});
}
