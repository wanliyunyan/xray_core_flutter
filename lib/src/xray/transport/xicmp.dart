part of 'transport.dart';

@freezed
abstract class Xicmp with _$Xicmp implements FinalMaskSettings {
  const factory Xicmp({
    bool? dgram,
    List<String>? ips,
  }) = _Xicmp;

  factory Xicmp.fromJson(Object? json) {
    final map = asJsonMap(json, 'xicmp mask');
    return Xicmp(
      dgram: map['dgram'] as bool?,
      ips: (map['ips'] as List?)?.cast<String>(),
    );
  }

  const Xicmp._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
        'dgram': dgram,
        'ips': ips,
      });
}
