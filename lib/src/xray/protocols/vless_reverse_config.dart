part of 'protocol_settings.dart';

@freezed
abstract class VLessReverseConfig with _$VLessReverseConfig {
  const factory VLessReverseConfig({
    required String tag,
    SniffingConfig? sniffing,
  }) = _VLessReverseConfig;

  factory VLessReverseConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'vless reverse');
    return VLessReverseConfig(
      tag: map['tag'] as String,
      sniffing: map['sniffing'] == null
          ? null
          : SniffingConfig.fromJson(map['sniffing']),
    );
  }

  const VLessReverseConfig._();

  Map<String, dynamic> toJson() =>
      withoutNulls({'tag': tag, 'sniffing': sniffing?.toJson()});
}
