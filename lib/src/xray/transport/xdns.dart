part of 'transport.dart';

@freezed
abstract class Xdns with _$Xdns implements FinalMaskSettings {
  const factory Xdns({
    Object? domain,
    List<String>? domains,
    List<String>? resolvers,
  }) = _Xdns;

  factory Xdns.fromJson(Object? json) {
    final map = asJsonMap(json, 'xdns mask');
    return Xdns(
      domain: map['domain'],
      domains: (map['domains'] as List?)?.cast<String>(),
      resolvers: (map['resolvers'] as List?)?.cast<String>(),
    );
  }

  const Xdns._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
    'domain': domain,
    'domains': domains,
    'resolvers': resolvers,
  });
}
