part of 'apps.dart';

@freezed
abstract class SystemPolicy with _$SystemPolicy {
  const factory SystemPolicy({
    bool? statsInboundUplink,
    bool? statsInboundDownlink,
    bool? statsOutboundUplink,
    bool? statsOutboundDownlink,
  }) = _SystemPolicy;

  factory SystemPolicy.fromJson(Object? json) {
    final map = asJsonMap(json, 'system policy');
    return SystemPolicy(
      statsInboundUplink: map['statsInboundUplink'] as bool?,
      statsInboundDownlink: map['statsInboundDownlink'] as bool?,
      statsOutboundUplink: map['statsOutboundUplink'] as bool?,
      statsOutboundDownlink: map['statsOutboundDownlink'] as bool?,
    );
  }

  const SystemPolicy._();

  Map<String, dynamic> toJson() => withoutNulls({
    'statsInboundUplink': statsInboundUplink,
    'statsInboundDownlink': statsInboundDownlink,
    'statsOutboundUplink': statsOutboundUplink,
    'statsOutboundDownlink': statsOutboundDownlink,
  });
}
