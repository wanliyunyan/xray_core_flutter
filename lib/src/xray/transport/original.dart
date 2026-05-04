part of 'transport.dart';

class Original implements FinalMaskSettings {
  const Original();

  factory Original.fromJson(Object? json) {
    asJsonMap(json, 'original settings');
    return const Original();
  }

  @override
  Map<String, dynamic> toJson() => {};
}
