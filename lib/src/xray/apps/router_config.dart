part of 'apps.dart';

@freezed
abstract class RouterConfig with _$RouterConfig {
  const factory RouterConfig({
    @JsonKey(name: 'rules') List<RouterRule>? ruleList,
    RouterDomainStrategy? domainStrategy,
    List<BalancingRule>? balancers,
  }) = _RouterConfig;

  factory RouterConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'routing');
    return RouterConfig(
      ruleList: map['rules'] == null
          ? null
          : asJsonList(map['rules'], RouterRule.fromJson),
      domainStrategy: map['domainStrategy'] == null
          ? null
          : RouterDomainStrategy.fromJson(map['domainStrategy']),
      balancers: map['balancers'] == null
          ? null
          : asJsonList(map['balancers'], BalancingRule.fromJson),
    );
  }

  const RouterConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'rules': ruleList?.map((item) => item.toJson()).toList(),
    'domainStrategy': domainStrategy?.toJson(),
    'balancers': balancers?.map((item) => item.toJson()).toList(),
  });
}
