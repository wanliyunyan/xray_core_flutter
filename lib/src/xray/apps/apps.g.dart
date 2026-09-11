// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element

part of 'apps.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GeodataAssetConfig _$GeodataAssetConfigFromJson(Map<String, dynamic> json) =>
    _GeodataAssetConfig(
      url: json['url'] as String,
      file: json['file'] as String,
    );

const _$GeodataAssetConfigFieldMap = <String, String>{
  'url': 'url',
  'file': 'file',
};

Map<String, dynamic> _$GeodataAssetConfigToJson(_GeodataAssetConfig instance) =>
    <String, dynamic>{'url': instance.url, 'file': instance.file};

_MetricsConfig _$MetricsConfigFromJson(Map<String, dynamic> json) =>
    _MetricsConfig(
      tag: json['tag'] as String?,
      listen: json['listen'] as String?,
    );

const _$MetricsConfigFieldMap = <String, String>{
  'tag': 'tag',
  'listen': 'listen',
};

Map<String, dynamic> _$MetricsConfigToJson(_MetricsConfig instance) =>
    <String, dynamic>{'tag': ?instance.tag, 'listen': ?instance.listen};

_Policy _$PolicyFromJson(Map<String, dynamic> json) => _Policy(
  handshake: nullableIntFromJson(json['handshake']),
  connectionIdle: nullableIntFromJson(json['connIdle']),
  uplinkOnly: nullableIntFromJson(json['uplinkOnly']),
  downlinkOnly: nullableIntFromJson(json['downlinkOnly']),
  statsUserUplink: json['statsUserUplink'] as bool?,
  statsUserDownlink: json['statsUserDownlink'] as bool?,
  statsUserOnline: json['statsUserOnline'] as bool?,
  bufferSize: nullableIntFromJson(json['bufferSize']),
);

const _$PolicyFieldMap = <String, String>{
  'handshake': 'handshake',
  'connectionIdle': 'connIdle',
  'uplinkOnly': 'uplinkOnly',
  'downlinkOnly': 'downlinkOnly',
  'statsUserUplink': 'statsUserUplink',
  'statsUserDownlink': 'statsUserDownlink',
  'statsUserOnline': 'statsUserOnline',
  'bufferSize': 'bufferSize',
};

Map<String, dynamic> _$PolicyToJson(_Policy instance) => <String, dynamic>{
  'handshake': ?instance.handshake,
  'connIdle': ?instance.connectionIdle,
  'uplinkOnly': ?instance.uplinkOnly,
  'downlinkOnly': ?instance.downlinkOnly,
  'statsUserUplink': ?instance.statsUserUplink,
  'statsUserDownlink': ?instance.statsUserDownlink,
  'statsUserOnline': ?instance.statsUserOnline,
  'bufferSize': ?instance.bufferSize,
};

_SystemPolicy _$SystemPolicyFromJson(Map<String, dynamic> json) =>
    _SystemPolicy(
      statsInboundUplink: json['statsInboundUplink'] as bool?,
      statsInboundDownlink: json['statsInboundDownlink'] as bool?,
      statsOutboundUplink: json['statsOutboundUplink'] as bool?,
      statsOutboundDownlink: json['statsOutboundDownlink'] as bool?,
    );

const _$SystemPolicyFieldMap = <String, String>{
  'statsInboundUplink': 'statsInboundUplink',
  'statsInboundDownlink': 'statsInboundDownlink',
  'statsOutboundUplink': 'statsOutboundUplink',
  'statsOutboundDownlink': 'statsOutboundDownlink',
};

Map<String, dynamic> _$SystemPolicyToJson(_SystemPolicy instance) =>
    <String, dynamic>{
      'statsInboundUplink': ?instance.statsInboundUplink,
      'statsInboundDownlink': ?instance.statsInboundDownlink,
      'statsOutboundUplink': ?instance.statsOutboundUplink,
      'statsOutboundDownlink': ?instance.statsOutboundDownlink,
    };

_VersionConfig _$VersionConfigFromJson(Map<String, dynamic> json) =>
    _VersionConfig(
      minVersion: json['min'] as String?,
      maxVersion: json['max'] as String?,
    );

const _$VersionConfigFieldMap = <String, String>{
  'minVersion': 'min',
  'maxVersion': 'max',
};

Map<String, dynamic> _$VersionConfigToJson(_VersionConfig instance) =>
    <String, dynamic>{'min': ?instance.minVersion, 'max': ?instance.maxVersion};
