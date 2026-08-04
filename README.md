# xray_core_flutter

[English](README.en.md)

`xray_core_flutter` 是用于创建、解析、校验和导出 Xray JSON 配置的
Flutter/Dart 包。它提供类型化的配置模型、枚举和常用协议构造方法。

## 安装

```sh
flutter pub add xray_core_flutter
```

## 使用

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

主要公共方法：

- `XrayConfig.fromJson(Object?)`：把已有 JSON 配置解析成类型化模型。
- `XrayConfig.toJson()`：导出 Xray 兼容的 JSON 字典。
- `XrayConfig.validate(...)`：返回 `List<XrayValidationIssue>`。
- `XrayConfig.assertValid(...)`：校验失败时抛出
  `XrayConfigValidationException`。

包的统一导入入口是：

```dart
import 'package:xray_core_flutter/xray_core_flutter.dart';
```

## 配置覆盖和校验

当前 Dart 配置模型已对照 Xray-core `infra/conf` v26.7.28。仓库内的 parity
checker 会核对 Go JSON tag、结构字段、Dart 额外 key 和 config creator loader
ID：

```sh
dart run tool/check_xray_conf_parity.dart ../Xray-core/infra/conf
```

## 开发检查

```sh
flutter pub get
flutter analyze
flutter test
dart pub publish --dry-run
```
