part of 'transport.dart';

@freezed
abstract class Realm with _$Realm implements FinalMaskSettings {
  const factory Realm({
    String? url,
    List<String>? stunServers,
    TLSConfig? tlsConfig,
  }) = _Realm;

  factory Realm.fromJson(Object? json) {
    final map = asJsonMap(json, 'realm mask');
    return Realm(
      url: map['url'] as String?,
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
        'stunServers': stunServers,
        'tlsConfig': tlsConfig?.toJson(),
      });
}
