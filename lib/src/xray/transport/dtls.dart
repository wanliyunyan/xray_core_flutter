part of 'transport.dart';

class Dtls implements FinalMaskSettings {
  const Dtls();

  factory Dtls.fromJson(Object? json) {
    asJsonMap(json, 'dtls settings');
    return const Dtls();
  }

  @override
  Map<String, dynamic> toJson() => {};
}
