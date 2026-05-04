# xray_core_flutter

Typed Dart models for generating Xray JSON configs in Flutter apps.

This module does not reimplement the Xray proxy core. It mirrors the Go config
schema under `Xray-core/infra/conf` so iOS and Android apps can build configs
with strongly typed entities and then pass JSON to Xray.

## Design rules

- Keep Dart model names and JSON field names close to the Go config structs.
- Use `freezed` for data models where it fits.
- Only fields that Xray requires during config build are marked `required`.
- Do not add Dart defaults for fields where Xray already owns defaults.
- Preserve Xray-compatible union JSON shapes with typed wrappers and raw escape
  hatches where Go uses loader-style `json.RawMessage`.
- Prefer enums for stable protocol, strategy, network, security, and service
  values.

## Current coverage

- Common: address, ports, string/network lists, int ranges, durations, users,
  sniffing, target strategies.
- Core: top-level config, inbound/outbound detours, log, mux, proxy settings.
- Protocols: vless, vmess, trojan, shadowsocks, socks, http, freedom,
  blackhole, dns outbound, dokodemo-door, loopback, wireguard, hysteria, tun.
- Transport: tcp/raw, websocket/ws, grpc, httpupgrade, splithttp/xhttp, kcp,
  hysteria, tls, reality, socket options, finalmask.
- Apps: dns, routing, policy, api, metrics, stats, reverse, observatory,
  burstObservatory, fakeDns, version, geodata.

## Example

```dart
final config = XrayConfig(
  inbounds: [
    InboundDetourConfig.socks(
      tag: 'socks-in',
      listen: const XrayAddress('127.0.0.1'),
      port: XrayPortList.single(10808),
      settings: const SocksServerConfig(
        authMethod: SocksAuthMethod.noauth,
        udp: true,
      ),
    ),
  ],
  outbounds: [
    OutboundDetourConfig.vless(
      tag: 'proxy',
      settings: VLessOutboundConfig.single(
        address: const XrayAddress('example.com'),
        port: 443,
        id: '00000000-0000-0000-0000-000000000000',
        encryption: 'none',
        flow: 'xtls-rprx-vision',
      ),
      streamSettings: StreamConfig.reality(
        realitySettings: REALITYConfig.client(
          serverName: 'example.com',
          publicKey: 'public-key',
          shortId: 'abcd',
          fingerprint: 'chrome',
        ),
      ),
    ),
  ],
);

final json = config.toJson();
```

## Validation

Use `validate()` before passing JSON to Xray when building user-facing SDK
flows. It checks common mistakes such as duplicate tags, routing references to
missing outbounds or balancers, mismatched protocol/settings pairs, and missing
settings for protocols that require them.

```dart
final issues = config.validate();
if (issues.isNotEmpty) {
  throw XrayConfigValidationException(issues);
}

config.assertValid();
```

## SDK packaging

This module is a configuration helper SDK. It does not bundle or call
`LibXray.xcframework`, `libXray.aar`, or any native Xray runtime. Host apps can
use these Dart models to create and validate JSON, then pass that JSON to their
own Xray runtime integration.

Build Android AAR artifacts:

```sh
flutter build aar
```

Build iOS framework artifacts:

```sh
flutter build ios-framework
```

The generated helper artifacts expose the Flutter module. The host app remains
responsible for calling the native Xray core with `config.toJson()` output.

Flutter modules can generate Android AARs and iOS frameworks. Desktop native
artifacts such as Windows DLLs, Linux shared objects, or macOS frameworks require
a separate native/FFI layer because this package currently contains Dart config
models only.

## File map

The public entrypoint is `package:xray_core_flutter/xray_config.dart`.

- Go `common.go` maps to `lib/src/xray/common`.
- Go `xray.go`, `log.go`, and core detours map to `lib/src/xray/core`.
- Go protocol files such as `vless.go`, `vmess.go`, `trojan.go`,
  `shadowsocks.go`, `socks.go`, `http.go`, `freedom.go`, `blackhole.go`,
  `wireguard.go`, `hysteria.go`, `tun.go`, and `dns_proxy.go` map to
  `lib/src/xray/protocols`.
- Go `transport_internet.go` and `transport_authenticators.go` map to
  `lib/src/xray/transport`.
- Go app config files such as `dns.go`, `router.go`, `policy.go`, `api.go`,
  `metrics.go`, `observatory.go`, `fakedns.go`, `geodata.go`, and
  `version.go` map to `lib/src/xray/apps`.

## Helper constructors

Raw constructors stay close to Go structs for compatibility. Helper constructors
are provided for common app workflows without changing the emitted JSON shape:

- Detours: `InboundDetourConfig.socks(...)`,
  `OutboundDetourConfig.vless(...)`, `OutboundDetourConfig.direct(...)`.
- Single-server outbounds: `VLessOutboundConfig.single(...)`,
  `VMessOutboundConfig.single(...)`, `TrojanClientConfig.single(...)`,
  `ShadowsocksClientConfig.single(...)`, `SocksClientConfig.single(...)`,
  `HTTPClientConfig.single(...)`.
- Single-user inbounds: `VLessInboundConfig.single(...)`,
  `VMessInboundConfig.single(...)`, `TrojanServerConfig.single(...)`,
  `ShadowsocksServerConfig.single(...)`.
- Transport helpers: `StreamConfig.reality(...)`, `StreamConfig.tls(...)`,
  `REALITYConfig.client(...)`, `REALITYConfig.server(...)`.
- App helpers: `DNSConfig.withServers(...)`, `RouterRule.toOutbound(...)`,
  `RouterRule.toBalancer(...)`, `MetricsConfig.tag(...)`,
  `MetricsConfig.listen(...)`.

## Maintenance flow

When Xray updates `infra/conf`, compare Go structs and JSON tags against the
Dart files in `lib/src/xray`. Keep one public model per file where practical.

First run the parity check against the updated Go source:

```sh
dart run tool/check_xray_conf_parity.dart /path/to/Xray-core/infra/conf
```

Then regenerate and verify the helper SDK:

```sh
dart run build_runner build
flutter analyze
flutter test
```

You can also run the end-to-end model example:

```sh
dart run example/build_config.dart
```
