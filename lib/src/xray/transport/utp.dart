part of 'transport.dart';

class Utp implements FinalMaskSettings {
  const Utp();

  factory Utp.fromJson(Object? json) {
    asJsonMap(json, 'utp settings');
    return const Utp();
  }

  @override
  Map<String, dynamic> toJson() => {};
}
