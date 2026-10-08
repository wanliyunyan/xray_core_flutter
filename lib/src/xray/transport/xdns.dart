part of 'transport.dart';

@freezed
abstract class XDNS with _$XDNS implements FinalMaskSettings {
  const factory XDNS({
    List<XDNSDomain>? domains,
    List<XDNSResolver>? resolvers,
    int? extraPoll,
  }) = _XDNS;

  factory XDNS.fromJson(Object? json) {
    final map = asJsonMap(json, 'XDNS');
    return XDNS(
      domains: map['domains'] == null
          ? null
          : asJsonList(map['domains'], XDNSDomain.fromJson),
      resolvers: map['resolvers'] == null
          ? null
          : asJsonList(map['resolvers'], XDNSResolver.fromJson),
      extraPoll: map['extraPoll'] as int?,
    );
  }

  const XDNS._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
    'domains': domains?.map((item) => item.toJson()).toList(),
    'resolvers': resolvers?.map((item) => item.toJson()).toList(),
    'extraPoll': extraPoll,
  });
}
