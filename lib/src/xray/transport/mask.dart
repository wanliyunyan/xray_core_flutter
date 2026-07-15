part of 'transport.dart';

@freezed
abstract class Mask with _$Mask {
  const factory Mask({required String type, FinalMaskSettings? settings}) =
      _Mask;

  factory Mask.fromJson(Object? json, {bool udp = false}) {
    final map = asJsonMap(json, 'mask');
    final type = map['type'] as String;
    final settingsJson = map['settings'];
    return Mask(
      type: type,
      settings: settingsJson == null
          ? null
          : _parseFinalMaskSettings(type, settingsJson, udp: udp),
    );
  }

  const Mask._();

  Map<String, dynamic> toJson() =>
      withoutNulls({'type': type, 'settings': settings?.toJson()});
}

FinalMaskSettings _parseFinalMaskSettings(
  String type,
  Object? json, {
  required bool udp,
}) {
  return switch (type.toLowerCase()) {
    'header-custom' =>
      udp ? HeaderCustomUDP.fromJson(json) : HeaderCustomTCP.fromJson(json),
    'fragment' => FragmentMask.fromJson(json),
    'noise' => NoiseMask.fromJson(json),
    'mkcp-legacy' => MkcpLegacy.fromJson(json),
    'salamander' => Salamander.fromJson(json),
    'sudoku' => Sudoku.fromJson(json),
    'xmc' => XMC.fromJson(json),
    'xdns' => Xdns.fromJson(json),
    'xicmp' => Xicmp.fromJson(json),
    'realm' => Realm.fromJson(json),
    _ => RawFinalMaskSettings.fromJson(json, '$type settings'),
  };
}
