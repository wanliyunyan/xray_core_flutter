part of 'transport.dart';

class Wireguard implements FinalMaskSettings {
  const Wireguard();

  factory Wireguard.fromJson(Object? json) {
    asJsonMap(json, 'wireguard settings');
    return const Wireguard();
  }

  @override
  Map<String, dynamic> toJson() => {};
}
