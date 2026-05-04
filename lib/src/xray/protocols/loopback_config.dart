part of 'protocol_settings.dart';

@freezed
abstract class LoopbackConfig
    with _$LoopbackConfig
    implements XrayOutboundSettings {
  const factory LoopbackConfig({String? inboundTag}) = _LoopbackConfig;

  factory LoopbackConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'loopback outbound');
    return LoopbackConfig(inboundTag: map['inboundTag'] as String?);
  }

  const LoopbackConfig._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({'inboundTag': inboundTag});
}
