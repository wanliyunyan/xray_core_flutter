part of 'transport.dart';

class RawFinalMaskSettings implements FinalMaskSettings {
  const RawFinalMaskSettings(this.value);

  factory RawFinalMaskSettings.fromJson(Object? json, String label) =>
      RawFinalMaskSettings(asJsonMap(json, label));

  final Map<String, dynamic> value;

  @override
  Map<String, dynamic> toJson() => value;
}
