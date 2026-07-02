part of 'transport.dart';

@freezed
abstract class Salamander with _$Salamander implements FinalMaskSettings {
  const factory Salamander({
    String? password,
    XrayInt32Range? packetSize,
  }) = _Salamander;

  factory Salamander.fromJson(Object? json) {
    final map = asJsonMap(json, 'salamander mask');
    return Salamander(
      password: map['password'] as String?,
      packetSize: map['packetSize'] == null
          ? null
          : XrayInt32Range.fromJson(map['packetSize']),
    );
  }

  const Salamander._();

  @override
  Map<String, dynamic> toJson() =>
      withoutNulls({'password': password, 'packetSize': packetSize?.toJson()});
}
