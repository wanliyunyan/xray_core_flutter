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

当前 Dart 配置模型已对照 Xray-core `infra/conf` v26.9.30。仓库内的 parity
checker 会核对 Go JSON tag、结构字段、Dart 额外 key 和 config creator loader
ID：

```sh
dart run tool/check_xray_conf_parity.dart ../Xray-core/infra/conf
```

`validate()` 会检查 IP 监听的端口，以及公网 VLESS/Trojan 出站的传输安全要求，
私有地址范围按 v26.9.30 Core 的内置规则判断。TUN 和 Unix socket 监听不要求端口。
普通域名不能用作监听地址（`localhost` 除外）。VLESS 入站用户的 `reverse.tag`
可用于 `dialerProxy`、路由出站及负载均衡回退引用；`clients` 优先于 `users`。
VLESS 简化出站的 `settings.reverse.tag` 可用于路由 `inboundTag`。
`reverse.sniffing` 仅支持出站配置，入站用户配置中不能包含该字段。
`env:` 地址由目标设备上的 Core 解析，本包不会据此判断端口或公网安全要求；
原始协议 settings 仍遵循 `allowRawSettings` 选项。校验通过不代表已执行 Core
的全部配置构建及运行时检查。

## v26.9.30 新配置

新增 MASQUE 入站/出站（`MasqueServerConfig` / `MasqueClientConfig`）、
`MasqueConfig` 传输和 `XDriveConfig` 传输。MASQUE 使用
`TransportProtocol.masque` 和 TLS，不支持出站 mux。XDrive 的 `service`
支持 `local`、`Google Drive`、`template`，默认参数仍由 Core 提供。
MASQUE 入站 `address` 必须是可用的主机 CIDR，并保留客户端可分配地址；
不接受网络地址、IPv4 广播地址、IPv4 映射的 IPv6 地址和过小的网段。
TUN 新增 `autoSystemDnsToGateway`（Linux）和 `autoSystemWfpBlockLeak`
（Windows，`dns` / `misconfigtun`）；平台相关前置条件由目标设备 Core 检查。
XDrive 不支持 REALITY；可使用 TLS。XDNS 两端都需要 `domains`，客户端还需要
`resolvers`；本包会检查记录类型、长度限制、EDNS0 和最小有效载荷容量。
Noise finalmask 可以用 `NoiseItem(type: 'exp', packet: '<b 01><r 8><t>')`。
XICMP 必须位于 `finalmask.udp` 数组最后一项（最外层），入站和出站均适用；
UDPHop 也需要此位置，但只支持出站，因此不能与 XICMP 放在同一条 mask 链上。

## 从旧版升级

升级到 0.7.0 时：

- 删除 `WireGuardConfig.domainStrategy`。
- 将 `UDPHop.sockopt` 移到外层 `StreamConfig.sockopt`；现在支持外层
  `dialerProxy`。省略 `interval` 或设为 0 时，Core 使用 30 秒默认值。
- 将 `Xdns` 改为 `XDNS`，`domains` / `resolvers` 改用对象数组，
  不再支持旧的 `domain` 和字符串数组格式。例如：

```dart
const XDNS(
  domains: [XDNSDomain(name: 'tunnel.example.com', types: [16])],
  resolvers: [
    XDNSResolver(type: 'udp', settings: XDNSResolverUDP(addr: '1.1.1.1:53')),
  ],
  extraPoll: 1,
);
```


根级 `reverse.bridges/portals` 已被 Core 移除。导入时仍保留这些字段，
但 `validate()` 会报错；请迁移到 VLESS Reverse Proxy。

从旧版升级：`ProxyConfig` 已移除，链式代理请使用
`StreamConfig(sockopt: SocketConfig(dialerProxy: 'upstream'))`。
旧 JSON 中的 `proxySettings` 会保留为原始字典，但 `validate()` 会提示迁移。
Hysteria 的拥塞和带宽参数请配置在 `FinalMask.quicParams`；UDP 跳跃改为：

```dart
FinalMask(udp: [
  Mask(
    type: 'udphop',
    settings: UDPHop(
      mode: 'intervalremote',
      remotePorts: XrayPortList.fromJson('20000-20010'),
      interval: XrayInt32Range.fromJson('5-10'),
    ),
  ),
]);
```

## 开发检查

```sh
flutter pub get
flutter analyze
flutter test
dart pub publish --dry-run
```
