part of 'transport.dart';

@freezed
abstract class Xicmp with _$Xicmp implements FinalMaskSettings {
  const factory Xicmp({String? listenIp, int? id}) = _Xicmp;

  factory Xicmp.fromJson(Object? json) {
    final map = asJsonMap(json, 'xicmp mask');
    return Xicmp(listenIp: map['listenIp'] as String?, id: map['id'] as int?);
  }

  const Xicmp._();

  @override
  Map<String, dynamic> toJson() =>
      withoutNulls({'listenIp': listenIp, 'id': id});
}
