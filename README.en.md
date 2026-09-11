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

The Dart models currently track Xray-core `infra/conf` v26.9.9. The parity
checker compares Go JSON tags, struct fields, unexpected Dart keys, and config
creator loader IDs:

```sh
dart run tool/check_xray_conf_parity.dart ../Xray-core/infra/conf
```

`validate()` checks ports for IP listeners and transport security for public
VLESS/Trojan targets, using Core v26.9.9's built-in private address rules. TUN
and Unix socket listeners do not require ports. Core resolves `env:` addresses
on the target device; this package defers their port and public-target checks.
Raw protocol settings still follow `allowRawSettings`. Successful validation
does not replace all Core build and runtime checks.

Domain listeners other than `localhost` are rejected. VLESS inbound users'
`reverse.tag` values can be referenced by `dialerProxy`, routing outbounds, and
balancer fallbacks; `clients` takes precedence over `users`.
Simplified VLESS outbounds' `settings.reverse.tag` values can be referenced by
routing `inboundTag`. Reverse sniffing is supported only on outbounds; inbound
users' reverse configs must omit `sniffing`.
Root-level `reverse.bridges/portals` is retained on import but rejected by
validation because Core removed legacy reverse. Migrate to VLESS Reverse Proxy.

When upgrading, replace `ProxyConfig` with
`StreamConfig(sockopt: SocketConfig(dialerProxy: 'upstream'))`.
Legacy `proxySettings` JSON is retained as a raw map but rejected by validation.
Move Hysteria congestion and bandwidth options to `FinalMask.quicParams`.
Replace `UdpHop` with `Mask(type: 'udphop', settings: UDPHop(...))` inside
`FinalMask.udp`, using `mode`, `remotePorts`, and `interval`.

## Development Checks

```sh
flutter pub get
flutter analyze
flutter test
dart pub publish --dry-run
```
