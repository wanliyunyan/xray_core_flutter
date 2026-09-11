part of 'transport.dart';

@freezed
abstract class Realm with _$Realm implements FinalMaskSettings {
  const factory Realm({
    String? url,
    List<String>? stunServers,
    TLSConfig? tlsConfig,
    /// Core recognizes dual, v4 and v6 (case-insensitive).
    String? ipMode,
    PortMapping? portMapping,
  }) = _Realm;

  factory Realm.fromJson(Object? json) {
    final map = asJsonMap(json, 'realm mask');
    return Realm(
      url: map['url'] as String?,
      ipMode: map['ipMode'] as String?,
      portMapping: map['portMapping'] == null ? null : PortMapping.fromJson(map['portMapping']),
      stunServers: (map['stunServers'] as List?)?.cast<String>(),
      tlsConfig: map['tlsConfig'] == null
          ? null
          : TLSConfig.fromJson(map['tlsConfig']),
    );
  }

  const Realm._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
        'url': url,
        'ipMode': ipMode,
        'portMapping': portMapping?.toJson(),
        'stunServers': stunServers,
        'tlsConfig': tlsConfig?.toJson(),
      });
}
