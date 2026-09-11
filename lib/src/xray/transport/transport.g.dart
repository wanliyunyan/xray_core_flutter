// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element

part of 'transport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomSockoptConfig _$CustomSockoptConfigFromJson(Map<String, dynamic> json) =>
    _CustomSockoptConfig(
      system: json['system'] as String?,
      network: json['network'] as String?,
      level: json['level'] as String?,
      opt: json['opt'] as String?,
      value: json['value'] as String?,
      type: json['type'] as String?,
    );

const _$CustomSockoptConfigFieldMap = <String, String>{
  'system': 'system',
  'network': 'network',
  'level': 'level',
  'opt': 'opt',
  'value': 'value',
  'type': 'type',
};

Map<String, dynamic> _$CustomSockoptConfigToJson(
  _CustomSockoptConfig instance,
) => <String, dynamic>{
  'system': ?instance.system,
  'network': ?instance.network,
  'level': ?instance.level,
  'opt': ?instance.opt,
  'value': ?instance.value,
  'type': ?instance.type,
};

_Masquerade _$MasqueradeFromJson(Map<String, dynamic> json) => _Masquerade(
  type: json['type'] as String?,
  dir: json['dir'] as String?,
  url: json['url'] as String?,
  rewriteHost: json['rewriteHost'] as bool?,
  xForwarded: json['xForwarded'] as bool?,
  insecure: json['insecure'] as bool?,
  content: json['content'] as String?,
  headers: (json['headers'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
  statusCode: nullableIntFromJson(json['statusCode']),
);

const _$MasqueradeFieldMap = <String, String>{
  'type': 'type',
  'dir': 'dir',
  'url': 'url',
  'rewriteHost': 'rewriteHost',
  'xForwarded': 'xForwarded',
  'insecure': 'insecure',
  'content': 'content',
  'headers': 'headers',
  'statusCode': 'statusCode',
};

Map<String, dynamic> _$MasqueradeToJson(_Masquerade instance) =>
    <String, dynamic>{
      'type': ?instance.type,
      'dir': ?instance.dir,
      'url': ?instance.url,
      'rewriteHost': ?instance.rewriteHost,
      'xForwarded': ?instance.xForwarded,
      'insecure': ?instance.insecure,
      'content': ?instance.content,
      'headers': ?instance.headers,
      'statusCode': ?instance.statusCode,
    };

_PortMapping _$PortMappingFromJson(Map<String, dynamic> json) => _PortMapping(
  enabled: json['enabled'] as bool?,
  timeout: nullableIntFromJson(json['timeout']),
  lifetime: nullableIntFromJson(json['lifetime']),
);

const _$PortMappingFieldMap = <String, String>{
  'enabled': 'enabled',
  'timeout': 'timeout',
  'lifetime': 'lifetime',
};

Map<String, dynamic> _$PortMappingToJson(_PortMapping instance) =>
    <String, dynamic>{
      'enabled': ?instance.enabled,
      'timeout': ?instance.timeout,
      'lifetime': ?instance.lifetime,
    };
