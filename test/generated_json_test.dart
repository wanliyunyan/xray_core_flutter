import 'package:flutter_test/flutter_test.dart';
import 'package:xray_core_flutter/xray_core_flutter.dart';

void main() {
  final cases =
      <
        ({
          String name,
          dynamic Function(Object?) parse,
          Map<String, dynamic> json,
        })
      >[
        (
          name: 'MetricsConfig',
          parse: MetricsConfig.fromJson,
          json: {'tag': '', 'listen': '127.0.0.1:9090'},
        ),
        (
          name: 'VersionConfig',
          parse: VersionConfig.fromJson,
          json: {'min': '26.9.9', 'max': '27.1.1'},
        ),
        (
          name: 'SystemPolicy',
          parse: SystemPolicy.fromJson,
          json: {
            'statsInboundUplink': false,
            'statsInboundDownlink': true,
            'statsOutboundUplink': false,
            'statsOutboundDownlink': true,
          },
        ),
        (
          name: 'Policy',
          parse: Policy.fromJson,
          json: {
            'handshake': 0,
            'connIdle': 10,
            'uplinkOnly': 2,
            'downlinkOnly': 3,
            'statsUserUplink': false,
            'statsUserDownlink': true,
            'statsUserOnline': false,
            'bufferSize': -1,
          },
        ),
        (
          name: 'GeodataAssetConfig',
          parse: GeodataAssetConfig.fromJson,
          json: {
            'url': 'https://example.com/geosite.dat',
            'file': 'geosite.dat',
          },
        ),
        (
          name: 'PortMapping',
          parse: PortMapping.fromJson,
          json: {'enabled': false, 'timeout': 0, 'lifetime': 60},
        ),
        (
          name: 'Masquerade',
          parse: Masquerade.fromJson,
          json: {
            'type': 'proxy',
            'dir': '',
            'url': 'https://example.com',
            'rewriteHost': false,
            'xForwarded': true,
            'insecure': false,
            'content': '',
            'headers': {'X-Test': 'ok'},
            'statusCode': 200,
          },
        ),
        (
          name: 'CustomSockoptConfig',
          parse: CustomSockoptConfig.fromJson,
          json: {
            'system': 'linux',
            'network': 'tcp',
            'level': '1',
            'opt': '2',
            'value': '0',
            'type': 'int',
          },
        ),
      ];
  for (final item in cases) {
    test(
      '${item.name} generated JSON preserves fields, aliases and falsy values',
      () {
        final model = item.parse({...item.json, 'unknownFutureField': true});
        expect(model.toJson(), item.json);
        expect(item.parse(model.toJson()).toJson(), item.json);
      },
    );
    test('${item.name} preserves input map validation', () {
      expect(() => item.parse(null), throwsFormatException);
      expect(() => item.parse([]), throwsFormatException);
      expect(
        item.parse(Map<Object?, Object?>.from(item.json)).toJson(),
        item.json,
      );
    });
  }

  test(
    'generated serializers omit absent and explicit null optional fields',
    () {
      for (final item in cases.where(
        (item) => item.name != 'GeodataAssetConfig',
      )) {
        expect(item.parse({}).toJson(), isEmpty, reason: item.name);
        expect(
          item.parse({for (final key in item.json.keys) key: null}).toJson(),
          isEmpty,
          reason: item.name,
        );
      }
      expect(
        () => GeodataAssetConfig.fromJson({'url': 'url'}),
        throwsA(isA<TypeError>()),
      );
    },
  );

  test(
    'integer parsing remains strict instead of truncating fractional values',
    () {
      expect(
        () => Policy.fromJson({'connIdle': 1.5}),
        throwsA(isA<TypeError>()),
      );
      expect(
        () => PortMapping.fromJson({'timeout': 5.5}),
        throwsA(isA<TypeError>()),
      );
      expect(
        () => Masquerade.fromJson({'statusCode': 200.5}),
        throwsA(isA<TypeError>()),
      );
    },
  );

  test(
    'generated copyWith and convenience factories preserve JSON behavior',
    () {
      expect(
        MetricsConfig.tag('a', listen: 'b').copyWith(listen: null).toJson(),
        {'tag': 'a'},
      );
      expect(MetricsConfig.listen('b').toJson(), {'listen': 'b'});
      expect(
        const VersionConfig(minVersion: 'a').copyWith(maxVersion: 'b').toJson(),
        {'min': 'a', 'max': 'b'},
      );
    },
  );
}
