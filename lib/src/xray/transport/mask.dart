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
    'header-dns' => Dns.fromJson(json),
    'header-dtls' => Dtls.fromJson(json),
    'header-srtp' => Srtp.fromJson(json),
    'header-utp' => Utp.fromJson(json),
    'header-wechat' => Wechat.fromJson(json),
    'header-wireguard' => Wireguard.fromJson(json),
    'mkcp-original' => Original.fromJson(json),
    'mkcp-aes128gcm' => Aes128Gcm.fromJson(json),
    'salamander' => Salamander.fromJson(json),
    'sudoku' => Sudoku.fromJson(json),
    'xdns' => Xdns.fromJson(json),
    'xicmp' => Xicmp.fromJson(json),
    _ => RawFinalMaskSettings.fromJson(json, '$type settings'),
  };
}
