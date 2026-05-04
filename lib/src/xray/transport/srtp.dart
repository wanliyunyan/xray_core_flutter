part of 'transport.dart';

class Srtp implements FinalMaskSettings {
  const Srtp();

  factory Srtp.fromJson(Object? json) {
    asJsonMap(json, 'srtp settings');
    return const Srtp();
  }

  @override
  Map<String, dynamic> toJson() => {};
}
