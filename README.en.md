# xray_core_flutter

[中文](README.md)

`xray_core_flutter` is a Flutter/Dart package for creating, parsing, validating,
and exporting Xray JSON configuration. It provides typed config models, enums,
and convenience constructors for common protocols.

## Installation

```sh
flutter pub add xray_core_flutter
```

## Usage

```dart
import 'package:xray_core_flutter/xray_core_flutter.dart';

final config = XrayConfig(
  inbounds: [
    InboundDetourConfig.socks(
      tag: 'socks-in',
      listen: const XrayAddress('127.0.0.1'),
      port: XrayPortList.single(10808),
      settings: const SocksServerConfig(udp: true),
    ),
  ],
  outbounds: [
    OutboundDetourConfig.direct(
      tag: 'direct',
      settings: const FreedomConfig(),
    ),
  ],
);

final json = config.toJson();
final issues = config.validate();
config.assertValid();
```

Public methods:

- `XrayConfig.fromJson(Object?)` parses existing JSON into typed models.
- `XrayConfig.toJson()` exports an Xray-compatible JSON dictionary.
- `XrayConfig.validate(...)` returns `List<XrayValidationIssue>`.
- `XrayConfig.assertValid(...)` throws `XrayConfigValidationException` when
  validation fails.

Use the package's canonical import:

```dart
import 'package:xray_core_flutter/xray_core_flutter.dart';
```

## Config Parity

The Dart models currently track Xray-core `infra/conf` v26.7.28. The parity
checker compares Go JSON tags, struct fields, unexpected Dart keys, and config
creator loader IDs:

```sh
dart run tool/check_xray_conf_parity.dart ../Xray-core/infra/conf
```

## Development Checks

```sh
flutter pub get
flutter analyze
flutter test
dart pub publish --dry-run
```
