part of 'transport.dart';

@freezed
abstract class Dns with _$Dns implements FinalMaskSettings {
  const factory Dns({String? domain}) = _Dns;

  factory Dns.fromJson(Object? json) {
    final map = asJsonMap(json, 'dns header');
    return Dns(domain: map['domain'] as String?);
  }

  const Dns._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({'domain': domain});
}
