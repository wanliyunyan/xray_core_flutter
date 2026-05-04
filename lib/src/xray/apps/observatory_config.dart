part of 'apps.dart';

@freezed
abstract class ObservatoryConfig with _$ObservatoryConfig {
  const factory ObservatoryConfig({
    List<String>? subjectSelector,
    String? probeURL,
    XrayDuration? probeInterval,
    bool? enableConcurrency,
  }) = _ObservatoryConfig;

  factory ObservatoryConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'observatory');
    return ObservatoryConfig(
      subjectSelector: (map['subjectSelector'] as List?)?.cast<String>(),
      probeURL: map['probeURL'] as String?,
      probeInterval: map['probeInterval'] == null
          ? null
          : XrayDuration.fromJson(map['probeInterval']),
      enableConcurrency: map['enableConcurrency'] as bool?,
    );
  }

  const ObservatoryConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'subjectSelector': subjectSelector,
    'probeURL': probeURL,
    'probeInterval': probeInterval?.toJson(),
    'enableConcurrency': enableConcurrency,
  });
}
