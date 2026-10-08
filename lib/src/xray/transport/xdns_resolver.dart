part of 'transport.dart';

@freezed
abstract class XDNSResolver with _$XDNSResolver {
  const factory XDNSResolver({String? type, XDNSResolverSettings? settings}) =
      _XDNSResolver;

  factory XDNSResolver.fromJson(Object? json) {
    final map = asJsonMap(json, 'XDNSResolver');
    return XDNSResolver(
      type: map['type'] as String?,
      settings: map['settings'] == null
          ? null
          : _parseXDNSResolverSettings(
              map['type'] as String? ?? '',
              map['settings'],
            ),
    );
  }

  const XDNSResolver._();

  Map<String, dynamic> toJson() =>
      withoutNulls({'type': type, 'settings': settings?.toJson()});
}

abstract interface class XDNSResolverSettings {
  Map<String, dynamic> toJson();
}

class RawXDNSResolverSettings implements XDNSResolverSettings {
  const RawXDNSResolverSettings(this.value);
  final Map<String, dynamic> value;
  @override
  Map<String, dynamic> toJson() => value;
}

XDNSResolverSettings _parseXDNSResolverSettings(String type, Object? json) {
  return switch (type.toLowerCase()) {
    'tcp' => XDNSResolverTCP.fromJson(json),
    'udp' => XDNSResolverUDP.fromJson(json),
    _ => RawXDNSResolverSettings(asJsonMap(json, '$type resolver')),
  };
}
