part of 'protocol_settings.dart';

@freezed
abstract class VLessOutboundConfig
    with _$VLessOutboundConfig
    implements XrayOutboundSettings {
  const factory VLessOutboundConfig({
    XrayAddress? address,
    int? port,
    int? level,
    String? email,
    @JsonKey(name: 'id') String? id,
    String? flow,
    String? seed,
    String? encryption,
    VLessReverseConfig? reverse,
    int? testpre,
    List<int>? testseed,
    @JsonKey(name: 'vnext') List<VLessOutboundVnext>? vnext,
  }) = _VLessOutboundConfig;

  factory VLessOutboundConfig.single({
    required XrayAddress address,
    required int port,
    int? level,
    String? email,
    required String id,
    String? flow,
    String? seed,
    required String encryption,
    VLessReverseConfig? reverse,
    int? testpre,
    List<int>? testseed,
  }) => VLessOutboundConfig(
    address: address,
    port: port,
    level: level,
    email: email,
    id: id,
    flow: flow,
    seed: seed,
    encryption: encryption,
    reverse: reverse,
    testpre: testpre,
    testseed: testseed,
  );

  factory VLessOutboundConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'vless outbound');
    return VLessOutboundConfig(
      address: map['address'] == null
          ? null
          : XrayAddress.fromJson(map['address']),
      port: map['port'] as int?,
      level: map['level'] as int?,
      email: map['email'] as String?,
      id: map['id'] as String?,
      flow: map['flow'] as String?,
      seed: map['seed'] as String?,
      encryption: map['encryption'] as String?,
      reverse: map['reverse'] == null
          ? null
          : VLessReverseConfig.fromJson(map['reverse']),
      testpre: map['testpre'] as int?,
      testseed: (map['testseed'] as List?)?.cast<int>(),
      vnext: map['vnext'] == null
          ? null
          : asJsonList(map['vnext'], VLessOutboundVnext.fromJson),
    );
  }

  const VLessOutboundConfig._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
    'address': address?.toJson(),
    'port': port,
    'level': level,
    'email': email,
    'id': id,
    'flow': flow,
    'seed': seed,
    'encryption': encryption,
    'reverse': reverse?.toJson(),
    'testpre': testpre,
    'testseed': testseed,
    'vnext': vnext?.map((item) => item.toJson()).toList(),
  });
}
