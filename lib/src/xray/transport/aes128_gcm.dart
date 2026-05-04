part of 'transport.dart';

@freezed
abstract class Aes128Gcm with _$Aes128Gcm implements FinalMaskSettings {
  const factory Aes128Gcm({String? password}) = _Aes128Gcm;

  factory Aes128Gcm.fromJson(Object? json) {
    final map = asJsonMap(json, 'aes128gcm mask');
    return Aes128Gcm(password: map['password'] as String?);
  }

  const Aes128Gcm._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({'password': password});
}
