part of 'transport.dart';

@freezed
abstract class Salamander with _$Salamander implements FinalMaskSettings {
  const factory Salamander({String? password}) = _Salamander;

  factory Salamander.fromJson(Object? json) {
    final map = asJsonMap(json, 'salamander mask');
    return Salamander(password: map['password'] as String?);
  }

  const Salamander._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({'password': password});
}
