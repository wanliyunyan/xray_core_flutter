part of 'transport.dart';

class Wechat implements FinalMaskSettings {
  const Wechat();

  factory Wechat.fromJson(Object? json) {
    asJsonMap(json, 'wechat settings');
    return const Wechat();
  }

  @override
  Map<String, dynamic> toJson() => {};
}
