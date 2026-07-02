part of 'protocol_settings.dart';

@freezed
abstract class FreedomConfig
    with _$FreedomConfig
    implements XrayOutboundSettings {
  const factory FreedomConfig({
    XrayTargetStrategy? targetStrategy,
    XrayTargetStrategy? domainStrategy,
    String? redirect,
    int? userLevel,
    Fragment? fragment,
    Noise? noise,
    List<Noise>? noises,
    int? proxyProtocol,
    XrayStringList? ipsBlocked,
    List<FreedomFinalRuleConfig>? finalRules,
  }) = _FreedomConfig;

  factory FreedomConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'freedom outbound');
    return FreedomConfig(
      targetStrategy: map['targetStrategy'] == null
          ? null
          : XrayTargetStrategyJson.fromJson(map['targetStrategy']),
      domainStrategy: map['domainStrategy'] == null
          ? null
          : XrayTargetStrategyJson.fromJson(map['domainStrategy']),
      redirect: map['redirect'] as String?,
      userLevel: map['userLevel'] as int?,
      fragment:
          map['fragment'] == null ? null : Fragment.fromJson(map['fragment']),
      noise: map['noise'] == null ? null : Noise.fromJson(map['noise']),
      noises: map['noises'] == null
          ? null
          : asJsonList(map['noises'], Noise.fromJson),
      proxyProtocol: map['proxyProtocol'] as int?,
      ipsBlocked: map['ipsBlocked'] == null
          ? null
          : XrayStringList.fromJson(map['ipsBlocked']),
      finalRules: map['finalRules'] == null
          ? null
          : asJsonList(map['finalRules'], FreedomFinalRuleConfig.fromJson),
    );
  }

  const FreedomConfig._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
        'targetStrategy': targetStrategy?.toJson(),
        'domainStrategy': domainStrategy?.toJson(),
        'redirect': redirect,
        'userLevel': userLevel,
        'fragment': fragment?.toJson(),
        'noise': noise?.toJson(),
        'noises': noises?.map((item) => item.toJson()).toList(),
        'proxyProtocol': proxyProtocol,
        'ipsBlocked': ipsBlocked?.toJson(),
        'finalRules': finalRules?.map((item) => item.toJson()).toList(),
      });
}
