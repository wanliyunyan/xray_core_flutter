part of 'transport.dart';

@freezed
abstract class XDNSResolverTCP
    with _$XDNSResolverTCP
    implements XDNSResolverSettings {
  const factory XDNSResolverTCP({String? addr}) = _XDNSResolverTCP;

  factory XDNSResolverTCP.fromJson(Object? json) {
    final map = asJsonMap(json, 'XDNSResolverTCP');
    return XDNSResolverTCP(addr: map['addr'] as String?);
  }

  const XDNSResolverTCP._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({'addr': addr});
}
