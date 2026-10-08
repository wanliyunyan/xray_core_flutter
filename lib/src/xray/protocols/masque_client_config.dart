part of 'protocol_settings.dart';

@freezed
abstract class MasqueClientConfig
    with _$MasqueClientConfig
    implements XrayOutboundSettings {
  const factory MasqueClientConfig({
    XrayAddress? address,
    int? port,
    List<String>? remoteDNS,
  }) = _MasqueClientConfig;

  factory MasqueClientConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'MasqueClientConfig');
    return MasqueClientConfig(
      address: map['address'] == null
          ? null
          : XrayAddress.fromJson(map['address']),
      port: map['port'] as int?,
      remoteDNS: (map['remoteDNS'] as List?)?.cast<String>(),
    );
  }

  const MasqueClientConfig._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
    'address': address?.toJson(),
    'port': port,
    'remoteDNS': remoteDNS,
  });
}
