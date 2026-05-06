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

This package is a configuration helper SDK. It does not bundle or call
`LibXray.xcframework`, `libXray.aar`, or any native Xray runtime. Host apps can
use these Dart models to create and validate JSON, then pass that JSON to their
own Xray runtime integration.

The package includes a native FFI scaffold for Android, iOS, macOS, Linux, and
Windows. The scaffold currently exports a small ABI/version surface through
`package:xray_core_flutter/xray_native.dart`; the actual Xray Core runtime still
needs to be linked in a later native integration step.

Apple clients import the native SDK as:

```swift
import XrayCoreSDK
```

### Native artifact builds

Install Flutter dependencies first:

```sh
flutter pub get
```

Android AAR:

```sh
cd android
./gradlew assembleRelease
```

iOS XCFramework:

```sh
mkdir -p build/native/ios/iphoneos build/native/ios/iphonesimulator

xcrun clang -c src/xray_core_flutter.c \
  -I src/include \
  -isysroot "$(xcrun --sdk iphoneos --show-sdk-path)" \
  -arch arm64 \
  -miphoneos-version-min=12.0 \
  -o build/native/ios/iphoneos/XrayCoreSDK.o

xcrun libtool -static \
  -o build/native/ios/iphoneos/libXrayCoreSDK.a \
  build/native/ios/iphoneos/XrayCoreSDK.o

xcrun clang -c src/xray_core_flutter.c \
  -I src/include \
  -isysroot "$(xcrun --sdk iphonesimulator --show-sdk-path)" \
  -arch arm64 \
  -mios-simulator-version-min=12.0 \
  -o build/native/ios/iphonesimulator/XrayCoreSDK_arm64.o

xcrun clang -c src/xray_core_flutter.c \
  -I src/include \
  -isysroot "$(xcrun --sdk iphonesimulator --show-sdk-path)" \
  -arch x86_64 \
  -mios-simulator-version-min=12.0 \
  -o build/native/ios/iphonesimulator/XrayCoreSDK_x86_64.o

xcrun libtool -static \
  -o build/native/ios/iphonesimulator/libXrayCoreSDK.a \
  build/native/ios/iphonesimulator/XrayCoreSDK_arm64.o \
  build/native/ios/iphonesimulator/XrayCoreSDK_x86_64.o

xcodebuild -create-xcframework \
  -library build/native/ios/iphoneos/libXrayCoreSDK.a \
  -headers src/include \
  -library build/native/ios/iphonesimulator/libXrayCoreSDK.a \
  -headers src/include \
  -output build/native/ios/XrayCoreSDK.xcframework
```

macOS XCFramework:

```sh
mkdir -p build/native/macos

xcrun clang -dynamiclib src/xray_core_flutter.c \
  -I src/include \
  -arch arm64 -arch x86_64 \
  -mmacosx-version-min=10.14 \
  -install_name @rpath/libXrayCoreSDK.dylib \
  -o build/native/macos/libXrayCoreSDK.dylib

xcodebuild -create-xcframework \
  -library build/native/macos/libXrayCoreSDK.dylib \
  -headers src/include \
  -output build/native/macos/XrayCoreSDK.xcframework
```

Linux shared object:

```sh
cmake -S src -B build/native/linux -DCMAKE_BUILD_TYPE=Release
cmake --build build/native/linux --config Release
```

Windows DLL:

```sh
cmake -S src -B build/native/windows -G "Visual Studio 17 2022" -A x64
cmake --build build/native/windows --config Release
```

Platform builds must run on matching toolchains: iOS and macOS on macOS with
Xcode, Windows on Windows with Visual Studio Build Tools, Linux on Linux with
CMake and a C compiler, and Android with the Android SDK/NDK plus Gradle.

GitHub Releases use these public artifact names:

- `XrayCoreSDK-android.aar`
- `XrayCoreSDK-iOS.xcframework.zip`
- `XrayCoreSDK-macOS.xcframework.zip`
- `XrayCoreSDK-linux-x64.tar.gz`
- `XrayCoreSDK-windows-x64.zip`

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
