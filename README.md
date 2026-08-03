# xray_core_flutter

[English](README.en.md)

`xray_core_flutter` 是一个同时服务 Flutter 项目和原生平台集成的 Xray SDK 工程。它既可以被 Flutter 项目直接引用，用强类型 Dart 模型创建、校验和导出 Xray 兼容的 JSON 配置；也可以打包出 Android、iOS、macOS、Linux、Windows 五个平台对应的原生 SDK 产物。

> 说明：当前 Flutter/Dart 层已经可以直接创建 Xray 配置；原生层目前提供五平台 SDK/FFI 打包能力和 ABI/version 示例接口。若需要在 App 内直接启动、停止或控制 Xray Core，还需要继续接入真实的 Xray Core 原生运行时。

## 支持平台

| 平台 | 支持内容 | 产物 |
| --- | --- | --- |
| Android | Flutter FFI 插件、AAR 打包支持 | `XrayCoreSDK-android.aar` |
| iOS | Flutter FFI 插件、XCFramework 打包支持 | `XrayCoreSDK-iOS.xcframework.zip` |
| macOS | Flutter FFI 插件、XCFramework 打包支持 | `XrayCoreSDK-macOS.xcframework.zip` |
| Linux | Flutter FFI 插件、动态库打包支持 | `XrayCoreSDK-linux-x64.tar.gz` |
| Windows | Flutter FFI 插件、DLL 打包支持 | `XrayCoreSDK-windows-x64.zip` |

原生 FFI 脚手架目前通过 `package:xray_core_flutter/xray_native.dart` 暴露 ABI/version 级别接口；真正的 Xray Core 运行时需要在宿主 App 或后续原生集成中链接。

## 使用方式概览

本项目提供两类使用方式：

1. Flutter 项目直接引用：通过 `package:xray_core_flutter/xray_config.dart` 创建、校验并导出 Xray JSON 配置。
2. 原生平台 SDK 集成：通过本仓库打包 Android AAR、iOS/macOS XCFramework、Linux shared object、Windows DLL，并在宿主工程中接入对应产物。

## Xray 配置覆盖和对照

当前 Dart 配置模型已对照 Xray-core `infra/conf` v26.7.28：

- 覆盖 Xray-core 配置结构中可解析的 JSON 字段，导出的 JSON 字段名保持 Xray 兼容。
- 覆盖所有 loader-style 可创建配置入口，包括入站、出站、blackhole response、TCP header、routing strategy、TCP/UDP finalmask。
- 对 Go 使用 `json.RawMessage` 的 union 配置提供类型化封装，并保留 raw escape hatch，方便跟进 Xray 新增实验字段。
- 仓库内置 parity check，会校验 JSON tag、结构字段、额外 Dart key，以及 config creator loader ID，避免 Xray-core 更新后漏字段或漏类型。

运行对照检查：

```sh
dart run tool/check_xray_conf_parity.dart ../Xray-core/infra/conf
```

## Flutter 项目接入

在 Flutter 项目中添加依赖：

```sh
flutter pub add xray_core_flutter
```

如果使用 Git 仓库版本：

```yaml
dependencies:
  xray_core_flutter:
    git:
      url: https://github.com/wanliyunyan/xray_core_flutter.git
```

然后获取依赖：

```sh
flutter pub get
```

## Flutter 配置模型使用

公共配置入口：

```dart
import 'package:xray_core_flutter/xray_config.dart';
```

构建一个 Xray JSON 配置：

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

生成给用户使用的配置前，建议先校验：

```dart
final issues = config.validate();
if (issues.isNotEmpty) {
  throw XrayConfigValidationException(issues);
}

config.assertValid();
```

原生 FFI 接口入口：

```dart
import 'package:xray_core_flutter/xray_native.dart';
```

## 常用 API 示例

### 创建入站配置

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

### 创建出站配置

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

### 配置 TLS 或 REALITY 传输

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

### 配置 DNS、路由和指标

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

## 平台接入说明

### Android

Flutter App 添加依赖后，Android 平台会通过 Flutter FFI 插件注册。应用可在 Dart 层生成配置 JSON，并交由宿主 Android Xray 运行时使用。

如需单独集成原生 AAR：

1. 将 `XrayCoreSDK-android.aar` 放入宿主 Android 项目的 `app/libs/`。
2. 在 `app/build.gradle` 中添加：

```gradle
dependencies {
    implementation files('libs/XrayCoreSDK-android.aar')
}
```

3. 在宿主 Android 项目中链接或加载实际的 Xray Core 运行时。

### iOS

Flutter App 添加依赖后，iOS 平台会通过 Flutter FFI 插件注册。应用可在 Dart 层生成配置 JSON，并交由宿主 iOS Xray 运行时使用。

如需单独集成 iOS XCFramework：

1. 解压 `XrayCoreSDK-iOS.xcframework.zip`。
2. 将 `XrayCoreSDK.xcframework` 加入 Xcode 项目的 Frameworks。
3. 在 Swift 中导入：

```swift
import XrayCoreSDK
```

4. 在宿主 App 中链接实际的 Xray Core iOS 运行时。

### macOS

Flutter macOS App 添加依赖后，macOS 平台会通过 Flutter FFI 插件注册。

如需单独集成 macOS XCFramework：

1. 解压 `XrayCoreSDK-macOS.xcframework.zip`。
2. 将 `XrayCoreSDK.xcframework` 加入 Xcode 的 Frameworks and Libraries。
3. 在 Swift 中导入：

```swift
import XrayCoreSDK
```

4. 确认运行时搜索路径包含 framework 或 dylib 所在目录，并链接实际的 Xray Core macOS 运行时。

### Linux

Flutter Linux App 添加依赖后，Linux 平台会通过 Flutter FFI 插件注册。

如需单独集成 Linux 动态库：

1. 解压 `XrayCoreSDK-linux-x64.tar.gz`。
2. 将 `libXrayCoreSDK.so` 放到宿主程序可加载的位置。
3. 将 `include/XrayCoreSDK` 提供给 C/C++ 编译器。
4. 运行时设置动态库路径，例如：

```sh
export LD_LIBRARY_PATH=/path/to/lib:$LD_LIBRARY_PATH
```

5. 在宿主程序中加载实际的 Xray Core Linux 运行时。

### Windows

Flutter Windows App 添加依赖后，Windows 平台会通过 Flutter FFI 插件注册。

如需单独集成 Windows DLL：

1. 解压 `XrayCoreSDK-windows-x64.zip`。
2. 将 `XrayCoreSDK.dll` 放到 `.exe` 同目录，或放到系统 `PATH` 可搜索的位置。
3. C/C++ 项目链接 `XrayCoreSDK.lib`，并包含 `include/XrayCoreSDK`。
4. 在宿主程序中加载实际的 Xray Core Windows 运行时。

## 原生 SDK 打包命令

先安装 Flutter 依赖：

```sh
flutter pub get
```

### Android AAR

需要 Android SDK、NDK、JDK 17 和 Gradle。

```sh
cd android
./gradlew assembleRelease
```

产物位置：

```text
android/build/outputs/aar/
```

### iOS XCFramework

需要在 macOS 上安装 Xcode。

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

压缩发布包：

```sh
ditto -c -k --sequesterRsrc --keepParent \
  build/native/ios/XrayCoreSDK.xcframework \
  build/native/ios/XrayCoreSDK-iOS.xcframework.zip
```

### macOS XCFramework

需要在 macOS 上安装 Xcode。

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

压缩发布包：

```sh
ditto -c -k --sequesterRsrc --keepParent \
  build/native/macos/XrayCoreSDK.xcframework \
  build/native/macos/XrayCoreSDK-macOS.xcframework.zip
```

### Linux shared object

需要 Linux、CMake 和 C 编译器。

```sh
cmake -S src -B build/native/linux -DCMAKE_BUILD_TYPE=Release
cmake --build build/native/linux --config Release
```

打包发布包：

```sh
mkdir -p dist/linux/include
cp build/native/linux/libXrayCoreSDK.so dist/linux/
cp -R src/include/XrayCoreSDK dist/linux/include/
tar -czf XrayCoreSDK-linux-x64.tar.gz -C dist linux
```

### Windows DLL

需要 Windows、CMake 和 Visual Studio 2022 Build Tools。

```powershell
cmake -S src -B build/native/windows -G "Visual Studio 17 2022" -A x64
cmake --build build/native/windows --config Release
```

打包发布包：

```powershell
New-Item -ItemType Directory -Force dist/windows/include | Out-Null
Copy-Item build/native/windows/Release/XrayCoreSDK.dll dist/windows/
Copy-Item build/native/windows/Release/XrayCoreSDK.lib dist/windows/
Copy-Item -Recurse src/include/XrayCoreSDK dist/windows/include/
Compress-Archive -Path dist/windows -DestinationPath XrayCoreSDK-windows-x64.zip
```

## GitHub Release 产物

打 `v*` 标签后，`.github/workflows/build-native.yml` 会构建并上传这些公开产物：

- `XrayCoreSDK-android.aar`
- `XrayCoreSDK-iOS.xcframework.zip`
- `XrayCoreSDK-macOS.xcframework.zip`
- `XrayCoreSDK-linux-x64.tar.gz`
- `XrayCoreSDK-windows-x64.zip`

## 当前模型覆盖

- Common：address、ports、string/network lists、int ranges、durations、users、sniffing、target strategies。
- Core：top-level config、inbound/outbound detours、log、mux、proxy settings，以及所有入站/出站 protocol loader ID。
- Protocols：vless、vmess、trojan、shadowsocks、socks、http、freedom、blackhole、dns outbound、dokodemo-door、loopback、wireguard、hysteria、tun。
- Transport：tcp/raw、websocket/ws、grpc、httpupgrade、splithttp/xhttp、kcp、hysteria、tls、reality、socket options、finalmask、TCP header、QUIC params。
- Apps：dns、routing、policy、api、metrics、stats、reverse、observatory、burstObservatory、fakeDns、version、geodata、balancing strategies。

## 设计规则

- Dart 模型名和 JSON 字段名尽量贴近 `Xray-core/infra/conf` 中的 Go config struct。
- 适合数据模型的地方使用 `freezed`。
- 只有 Xray 构建配置时真正必需的字段才标记为 `required`。
- Xray 已经拥有默认值的字段，不在 Dart 侧额外添加默认值。
- 保留 Xray 兼容的 union JSON 结构，并在 Go 使用 loader-style `json.RawMessage` 的位置提供 raw escape hatch。
- 对稳定的 protocol、strategy、network、security、service 值优先使用 enum。

## 维护流程

当 Xray 更新 `infra/conf` 后，先对比 Go struct 和 JSON tag，再同步 `lib/src/xray` 下的 Dart 模型。

运行 parity check：

```sh
dart run tool/check_xray_conf_parity.dart ../Xray-core/infra/conf
```

重新生成并检查：

```sh
dart run build_runner build
dart analyze
flutter test
```

在仓库源码中运行可视化示例 App：

```sh
cd example
flutter run -d macos
```
