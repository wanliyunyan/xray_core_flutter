part of 'protocol_settings.dart';

@freezed
abstract class VLessInboundConfig
    with _$VLessInboundConfig
    implements XrayInboundSettings {
  const factory VLessInboundConfig({
    List<VLessUser>? users,
    List<VLessUser>? clients,
    required String decryption,
    List<VLessInboundFallback>? fallbacks,
    String? flow,
    List<int>? testseed,
  }) = _VLessInboundConfig;

  factory VLessInboundConfig.single({
    required VLessUser client,
    required String decryption,
    List<VLessInboundFallback>? fallbacks,
    String? flow,
    List<int>? testseed,
  }) =>
      VLessInboundConfig(
        clients: [client],
        decryption: decryption,
        fallbacks: fallbacks,
        flow: flow,
        testseed: testseed,
      );

  factory VLessInboundConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'vless inbound');
    return VLessInboundConfig(
      users: map['users'] == null
          ? null
          : asJsonList(map['users'], VLessUser.fromJson),
      clients: map['clients'] == null
          ? null
          : asJsonList(map['clients'], VLessUser.fromJson),
      decryption: map['decryption'] as String,
      fallbacks: map['fallbacks'] == null
          ? null
          : asJsonList(map['fallbacks'], VLessInboundFallback.fromJson),
      flow: map['flow'] as String?,
      testseed: (map['testseed'] as List?)?.cast<int>(),
    );
  }

  const VLessInboundConfig._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
        'users': users?.map((item) => item.toJson()).toList(),
        'clients': clients?.map((item) => item.toJson()).toList(),
        'decryption': decryption,
        'fallbacks': fallbacks?.map((item) => item.toJson()).toList(),
        'flow': flow,
        'testseed': testseed,
      });
}
