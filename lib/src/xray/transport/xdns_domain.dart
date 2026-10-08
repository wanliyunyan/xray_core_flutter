part of 'transport.dart';

@freezed
abstract class XDNSDomain with _$XDNSDomain {
  const factory XDNSDomain({
    String? name,
    int? lenLimit,
    int? labelLimit,
    List<int>? types,
    int? edns0,
  }) = _XDNSDomain;

  factory XDNSDomain.fromJson(Object? json) {
    final map = asJsonMap(json, 'XDNSDomain');
    return XDNSDomain(
      name: map['name'] as String?,
      lenLimit: map['lenLimit'] as int?,
      labelLimit: map['labelLimit'] as int?,
      types: (map['types'] as List?)?.cast<int>(),
      edns0: map['edns0'] as int?,
    );
  }

  const XDNSDomain._();

  Map<String, dynamic> toJson() => withoutNulls({
    'name': name,
    'lenLimit': lenLimit,
    'labelLimit': labelLimit,
    'types': types,
    'edns0': edns0,
  });
}
