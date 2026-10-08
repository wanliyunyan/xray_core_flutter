part of 'transport.dart';

@freezed
abstract class XDNSResolverUDP
    with _$XDNSResolverUDP
    implements XDNSResolverSettings {
  const factory XDNSResolverUDP({String? addr}) = _XDNSResolverUDP;

  factory XDNSResolverUDP.fromJson(Object? json) {
    final map = asJsonMap(json, 'XDNSResolverUDP');
    return XDNSResolverUDP(addr: map['addr'] as String?);
  }

  const XDNSResolverUDP._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({'addr': addr});
}
