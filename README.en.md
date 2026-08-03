# xray_core_flutter

[中文](README.md)

`xray_core_flutter` is an Xray SDK project for both Flutter apps and native platform integrations. It can be used directly by Flutter projects to create, validate, and export Xray-compatible JSON configs with strongly typed Dart models, and it can also package native SDK artifacts for Android, iOS, macOS, Linux, and Windows.

> Note: the Flutter/Dart layer can already create Xray configs directly. The native layer currently provides five-platform SDK/FFI packaging plus sample ABI/version APIs. To start, stop, or control Xray Core inside an app, the real native Xray Core runtime still needs to be integrated.

## Supported Platforms

| Platform | Support | Artifact |
| --- | --- | --- |
| Android | Flutter FFI plugin and AAR packaging support | `XrayCoreSDK-android.aar` |
| iOS | Flutter FFI plugin and XCFramework packaging support | `XrayCoreSDK-iOS.xcframework.zip` |
| macOS | Flutter FFI plugin and XCFramework packaging support | `XrayCoreSDK-macOS.xcframework.zip` |
| Linux | Flutter FFI plugin and shared-library packaging support | `XrayCoreSDK-linux-x64.tar.gz` |
| Windows | Flutter FFI plugin and DLL packaging support | `XrayCoreSDK-windows-x64.zip` |

The native FFI scaffold currently exposes a small ABI/version surface through `package:xray_core_flutter/xray_native.dart`. The actual Xray Core runtime still needs to be linked by the host app or a later native integration layer.

## Usage Overview

This project supports two integration paths:

1. Direct Flutter dependency: use `package:xray_core_flutter/xray_config.dart` to create, validate, and export Xray JSON configs.
2. Native platform SDK integration: use this repository to package Android AAR, iOS/macOS XCFramework, Linux shared object, and Windows DLL artifacts, then integrate them into host projects.

## Xray Config Coverage and Parity

The current Dart config models are aligned with Xray-core `infra/conf` v26.7.28:

- Covers the JSON fields parsed by Xray-core config structs and keeps exported JSON field names Xray-compatible.
- Covers every loader-style creatable config entry, including inbounds, outbounds, blackhole responses, TCP headers, routing strategies, and TCP/UDP finalmask.
- Provides typed wrappers for union configs where Go uses `json.RawMessage`, while keeping raw escape hatches for new or experimental Xray fields.
- Includes a parity checker that validates JSON tags, per-struct field shape, unexpected Dart keys, and config creator loader IDs, so Xray-core updates do not silently drop fields or creatable config types.

Run the parity check:

```sh
dart run tool/check_xray_conf_parity.dart ../Xray-core/infra/conf
```

## Flutter Integration

Add the package to a Flutter project:

```sh
flutter pub add xray_core_flutter
```

Or use the Git repository version:

```yaml
dependencies:
  xray_core_flutter:
    git:
      url: https://github.com/wanliyunyan/xray_core_flutter.git
```

Then fetch dependencies:

```sh
flutter pub get
```

## Flutter Config Model Usage

Public config entrypoint:

```dart
import 'package:xray_core_flutter/xray_config.dart';
```

Build an Xray JSON config:

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

Validate configs before using them in user-facing flows:

```dart
final issues = config.validate();
if (issues.isNotEmpty) {
  throw XrayConfigValidationException(issues);
}

config.assertValid();
```

Native FFI API entrypoint:

```dart
import 'package:xray_core_flutter/xray_native.dart';
```

## Common API Examples

### Create an inbound

```dart
final inbound = InboundDetourConfig.socks(
  tag: 'socks-in',
  listen: const XrayAddress('127.0.0.1'),
  port: XrayPortList.single(10808),
  settings: const SocksServerConfig(
    authMethod: SocksAuthMethod.noauth,
    udp: true,
  ),
);
```

### Create outbounds

```dart
final outbound = OutboundDetourConfig.vless(
  tag: 'proxy',
  settings: VLessOutboundConfig.single(
    address: const XrayAddress('example.com'),
    port: 443,
    id: '00000000-0000-0000-0000-000000000000',
    encryption: 'none',
  ),
);

final direct = OutboundDetourConfig.direct(tag: 'direct');
```

### Configure TLS or REALITY transport

```dart
final tlsStream = StreamConfig.tls(
  tlsSettings: const TLSConfig(serverName: 'example.com'),
);

final realityStream = StreamConfig.reality(
  realitySettings: REALITYConfig.client(
    serverName: 'example.com',
    publicKey: 'public-key',
    shortId: 'abcd',
    fingerprint: 'chrome',
  ),
);
```

### Configure DNS, routing, and metrics

```dart
final dns = DNSConfig.withServers([
  NameServerConfig.simple('1.1.1.1'),
  NameServerConfig.simple('8.8.8.8'),
]);

final routing = RouterConfig(
  ruleList: [
    RouterRule.toOutbound(
      outboundTag: 'proxy',
      domain: const XrayStringList(['geosite:geolocation-!cn']),
    ),
    RouterRule.toOutbound(
      outboundTag: 'direct',
      ip: const XrayStringList(['geoip:private', 'geoip:cn']),
    ),
  ],
);

final metrics = MetricsConfig.listen('127.0.0.1:11111');
```

## Platform Integration

### Android

After adding the package to a Flutter app, the Android platform is registered through the Flutter FFI plugin. The app can build config JSON in Dart and pass it to the host Android Xray runtime.

To integrate the native AAR separately:

1. Put `XrayCoreSDK-android.aar` into the host Android project's `app/libs/`.
2. Add this to `app/build.gradle`:

```gradle
dependencies {
    implementation files('libs/XrayCoreSDK-android.aar')
}
```

3. Link or load the actual Xray Core runtime in the host Android project.

### iOS

After adding the package to a Flutter app, the iOS platform is registered through the Flutter FFI plugin. The app can build config JSON in Dart and pass it to the host iOS Xray runtime.

To integrate the iOS XCFramework separately:

1. Unzip `XrayCoreSDK-iOS.xcframework.zip`.
2. Add `XrayCoreSDK.xcframework` to the Xcode project's Frameworks.
3. Import it in Swift:

```swift
import XrayCoreSDK
```

4. Link the actual Xray Core iOS runtime in the host app.

### macOS

After adding the package to a Flutter macOS app, the macOS platform is registered through the Flutter FFI plugin.

To integrate the macOS XCFramework separately:

1. Unzip `XrayCoreSDK-macOS.xcframework.zip`.
2. Add `XrayCoreSDK.xcframework` to Xcode's Frameworks and Libraries.
3. Import it in Swift:

```swift
import XrayCoreSDK
```

4. Ensure the runtime search path includes the framework or dylib location, then link the actual Xray Core macOS runtime.

### Linux

After adding the package to a Flutter Linux app, the Linux platform is registered through the Flutter FFI plugin.

To integrate the Linux shared library separately:

1. Extract `XrayCoreSDK-linux-x64.tar.gz`.
2. Put `libXrayCoreSDK.so` somewhere the host app can load it.
3. Provide `include/XrayCoreSDK` to your C/C++ compiler.
4. Configure the runtime library path, for example:

```sh
export LD_LIBRARY_PATH=/path/to/lib:$LD_LIBRARY_PATH
```

5. Load the actual Xray Core Linux runtime in the host app.

### Windows

After adding the package to a Flutter Windows app, the Windows platform is registered through the Flutter FFI plugin.

To integrate the Windows DLL separately:

1. Extract `XrayCoreSDK-windows-x64.zip`.
2. Put `XrayCoreSDK.dll` next to the `.exe`, or put it in a directory available from `PATH`.
3. Link `XrayCoreSDK.lib` from C/C++ projects and include `include/XrayCoreSDK`.
4. Load the actual Xray Core Windows runtime in the host app.

## Native SDK Packaging Commands

Install Flutter dependencies first:

```sh
flutter pub get
```

### Android AAR

Requires Android SDK, NDK, JDK 17, and Gradle.

```sh
cd android
./gradlew assembleRelease
```

Output:

```text
android/build/outputs/aar/
```

### iOS XCFramework

Requires macOS with Xcode.

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

Zip the release artifact:

```sh
ditto -c -k --sequesterRsrc --keepParent \
  build/native/ios/XrayCoreSDK.xcframework \
  build/native/ios/XrayCoreSDK-iOS.xcframework.zip
```

### macOS XCFramework

Requires macOS with Xcode.

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

Zip the release artifact:

```sh
ditto -c -k --sequesterRsrc --keepParent \
  build/native/macos/XrayCoreSDK.xcframework \
  build/native/macos/XrayCoreSDK-macOS.xcframework.zip
```

### Linux shared object

Requires Linux, CMake, and a C compiler.

```sh
cmake -S src -B build/native/linux -DCMAKE_BUILD_TYPE=Release
cmake --build build/native/linux --config Release
```

Package the release artifact:

```sh
mkdir -p dist/linux/include
cp build/native/linux/libXrayCoreSDK.so dist/linux/
cp -R src/include/XrayCoreSDK dist/linux/include/
tar -czf XrayCoreSDK-linux-x64.tar.gz -C dist linux
```

### Windows DLL

Requires Windows, CMake, and Visual Studio 2022 Build Tools.

```powershell
cmake -S src -B build/native/windows -G "Visual Studio 17 2022" -A x64
cmake --build build/native/windows --config Release
```

Package the release artifact:

```powershell
New-Item -ItemType Directory -Force dist/windows/include | Out-Null
Copy-Item build/native/windows/Release/XrayCoreSDK.dll dist/windows/
Copy-Item build/native/windows/Release/XrayCoreSDK.lib dist/windows/
Copy-Item -Recurse src/include/XrayCoreSDK dist/windows/include/
Compress-Archive -Path dist/windows -DestinationPath XrayCoreSDK-windows-x64.zip
```

## GitHub Release Artifacts

When a `v*` tag is pushed, `.github/workflows/build-native.yml` builds and uploads:

- `XrayCoreSDK-android.aar`
- `XrayCoreSDK-iOS.xcframework.zip`
- `XrayCoreSDK-macOS.xcframework.zip`
- `XrayCoreSDK-linux-x64.tar.gz`
- `XrayCoreSDK-windows-x64.zip`

## Current Coverage

- Common: address, ports, string/network lists, int ranges, durations, users, sniffing, target strategies.
- Core: top-level config, inbound/outbound detours, log, mux, proxy settings, and all inbound/outbound protocol loader IDs.
- Protocols: vless, vmess, trojan, shadowsocks, socks, http, freedom, blackhole, dns outbound, dokodemo-door, loopback, wireguard, hysteria, tun.
- Transport: tcp/raw, websocket/ws, grpc, httpupgrade, splithttp/xhttp, kcp, hysteria, tls, reality, socket options, finalmask, TCP header, QUIC params.
- Apps: dns, routing, policy, api, metrics, stats, reverse, observatory, burstObservatory, fakeDns, version, geodata, balancing strategies.

## Design Rules

- Keep Dart model names and JSON field names close to the Go config structs under `Xray-core/infra/conf`.
- Use `freezed` for data models where it fits.
- Only fields that Xray requires during config build are marked `required`.
- Do not add Dart defaults for fields where Xray already owns defaults.
- Preserve Xray-compatible union JSON shapes with typed wrappers and raw escape hatches where Go uses loader-style `json.RawMessage`.
- Prefer enums for stable protocol, strategy, network, security, and service values.

## Maintenance Flow

When Xray updates `infra/conf`, compare Go structs and JSON tags, then sync the Dart models under `lib/src/xray`.

Run the parity check:

```sh
dart run tool/check_xray_conf_parity.dart ../Xray-core/infra/conf
```

Regenerate and verify:

```sh
dart run build_runner build
dart analyze
flutter test
```

Run the visual example app from a repository checkout:

```sh
cd example
flutter run -d macos
```
