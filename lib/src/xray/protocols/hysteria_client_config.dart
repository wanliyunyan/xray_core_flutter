part of 'protocol_settings.dart';

@freezed
abstract class HysteriaClientConfig
    with _$HysteriaClientConfig
    implements XrayOutboundSettings {
  const factory HysteriaClientConfig({
    required int version,
    required XrayAddress address,
    required int port,
  }) = _HysteriaClientConfig;

  factory HysteriaClientConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'hysteria outbound');
    return HysteriaClientConfig(
      version: map['version'] as int,
      address: XrayAddress.fromJson(map['address']),
      port: map['port'] as int,
    );
  }

  const HysteriaClientConfig._();

  @override
  Map<String, dynamic> toJson() => {
    'version': version,
    'address': address.toJson(),
    'port': port,
  };
}
