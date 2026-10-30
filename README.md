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

当前 Dart 配置模型已对照 Xray-core `infra/conf` v26.10.29。仓库内的 parity
checker 会核对 Go JSON tag、结构字段、Dart 额外 key 和 config creator loader
ID：

```sh
dart run tool/check_xray_conf_parity.dart ../Xray-core/infra/conf
```

`validate()` 会检查 IP 监听的端口，以及公网 VLESS/Trojan 出站的传输安全要求，
IP 豁免范围按 v26.10.29 Core 的 `IsPrivate`、`IsLoopback` 和 `IsLinkLocalUnicast` 判断，私有域名规则保持一致。TUN 和 Unix socket 监听不要求端口。
普通域名不能用作监听地址（`localhost` 除外）。VLESS 入站用户的 `reverse.tag`
可用于 `dialerProxy`、路由出站及负载均衡回退引用；`clients` 优先于 `users`。
VLESS 简化出站的 `settings.reverse.tag` 可用于路由 `inboundTag`。
`reverse.sniffing` 仅支持出站配置，入站用户配置中不能包含该字段。
`env:` 地址由目标设备上的 Core 解析，本包不会据此判断端口或公网安全要求；
原始协议 settings 仍遵循 `allowRawSettings` 选项。校验通过不代表已执行 Core
的全部配置构建及运行时检查。

## v26.10.29 新配置

XDrive 新增 `service: 's3'` 和类型化 `XDriveS3Config`：

```dart
const drive = XDriveConfig(
  service: 's3',
  remoteFolder: 'xray/sessions',
  secrets: ['YOUR_ACCESS_KEY_ID', 'YOUR_SECRET_ACCESS_KEY'],
  s3: XDriveS3Config(
    endpoint: 'https://s3.example.com',
    region: 'us-east-1',
    bucket: 'xray-bucket',
    pathStyle: true,
  ),
);
```

`secrets` 可添加第三项 SessionToken。省略 `region` 时 Core 使用 `us-east-1`，
省略 `pathStyle` 时使用 `true`；Dart 保留省略状态，不写入默认值。
`pathStyle: false` 需要 DNS 端点和兼容 DNS 的 bucket 名称。
`remoteFolder` 是非空相对前缀，可带一个结尾 `/`；端点不能包含凭据、查询参数或片段。
示例的 XDrive JSON 编辑器可直接使用 [S3 配置参考](example/configs/xdrive_s3_settings.json)。

迁移到 v0.11.0 时，注意未启用 TLS/REALITY 或 VLESS 加密的 VLESS/Trojan 出站，
不再豁免 CGNAT、文档/测试网段、未指定地址和组播地址；请为这些目标启用加密。
Freedom 的 `fragment` 和 `noises` 仍可序列化，Core 已弃用它们，建议迁移到
`streamSettings.finalmask.tcp` 的 `fragment` 和 `streamSettings.finalmask.udp` 的 `noise`。
Geodata 启用调度时最多支持 100 个资产，文件扩展名必须为 `.dat`（不区分大小写），
`@every` 间隔至少 1 分钟；Dart 会提前检查这些限制。资产路径、文件存在性、时区
及完整 cron 语法仍由目标设备 Core 检查，每次资产下载上限为 256 MiB。
Google Drive 的环形槽位传输由 Core 实现，没有新增 JSON 配置字段。

## v26.10.21 新配置

TCP/UDP finalmask 新增 `Filter`，通过 `blockedSourceIPs` / `allowedSourceIPs`
配置来源 IP 规则，支持 IP、CIDR、`geoip:cn`、`ext-ip:file.dat:cn` 和 `!` 反选。
过滤仅在入站生效，出站不执行过滤；黑名单优先，非空白名单只允许匹配来源。
空列表不限制来源。GeoIP 数据文件及国家代码由目标设备 Core 检查。

```dart
const FinalMask(tcp: [
  Mask(type: 'filter', settings: Filter(
    blockedSourceIPs: ['192.0.2.0/24'],
    allowedSourceIPs: ['10.0.0.0/8'],
  )),
]);
```

XDrive 新增 `xmux: XmuxConfig(...)`，`maxConnections` 与 `maxConcurrency`
的范围上限不能同时大于 0。使用 TLS 且 ALPN 精确为 `['h3']` 时启用 HTTP/3；
此时 Google Drive 的 UDP mask 只支持 `noise`，所有 XDrive 服务均不能使用
`brutal` / `force-brutal` 拥塞控制。默认连接数等参数由 Core 提供。
`template` 保持原始 JSON，支持两步操作的 `hrefPath` 和 `hrefMethod`。
示例表单提供 Filter、XDrive HTTP/3 和 XMUX 控件。校验报错时会保留
JSON 预览并禁用复制，修正后恢复。完整的两步模板 settings 示例见
[示例文件](example/configs/xdrive_template_settings.json)，需替换存储服务端点。

```dart
const stream = StreamConfig(
  network: TransportProtocol.xdrive,
  security: SecurityProtocol.tls,
  tlsSettings: TLSConfig(alpn: XrayStringList(['h3'])),
  xdriveSettings: XDriveConfig(
    service: 'google-drive',
    remoteFolder: 'YOUR_FOLDER_ID',
    secrets: ['CLIENT_ID', 'CLIENT_SECRET', 'REFRESH_TOKEN'],
    xmux: XmuxConfig(
      maxConnections: XrayInt32Range(left: 1, right: 2),
      hKeepAlivePeriod: 30,
    ),
  ),
);
```

XDrive、MASQUE 和 XHTTP 共用 XMUX 数值及连接/并发冲突校验。
XHTTP 校验遵循 `xhttpSettings` 优先于 `splithttpSettings` 的规则；提供原始
`extra` 时，由 Core 检查其覆盖后的设置。
XMUX 的 JSON 数字必须位于 int32 范围；字符串范围按 Core 的十进制解析和
int32 转换处理。`hKeepAlivePeriod` 单位为秒，负数关闭 HTTP/2 保活探测，
0 使用 Core 默认行为；它不控制 HTTP 连接复用。HTTP/3 优先采用显式设置的
`finalmask.quicParams.keepAlivePeriod`。示例切换 XMUX 编辑模式会保留参数；
输入错误时需先修正。

## v26.10.17 新配置

DNS nameserver 支持 `id`，DNS 和 routing 支持 Lua `script`，TLS 支持
`useSystemCA`。MASQUE transport 支持 `warp`（`privateKey`、`publicKey` 和
IPv4/IPv6 `address`）。XDNS 的新 JSON 结构使用 `names` 数组和 `addrs` 数组，
省略 `types` 时由 Core 使用 A、CNAME、TXT 和 AAAA 默认值。

XDNS resolver 现在支持 DoH `https://` 地址、`worker`、`tlsConfig` 和
`quicConfig`；Noise finalmask 支持 Lua `script`；MASQUE transport 支持
`xmux`。XDrive 使用 `google-drive` 服务名（旧的 `Google Drive` 仍可读取）。

以下配置能力继续保留：

新增 MASQUE 入站/出站（`MasqueServerConfig` / `MasqueClientConfig`）、
`MasqueConfig` 传输和 `XDriveConfig` 传输。MASQUE 使用
`TransportProtocol.masque` 和 TLS，26.10.17 起支持出站 mux。XDrive 的 `service`
支持 `local`、`google-drive`（兼容旧的 `Google Drive`）、`template`、`s3`，默认参数仍由 Core 提供。
MASQUE 入站 `address` 必须是可用的主机 CIDR，并保留客户端可分配地址；
不接受网络地址、IPv4 广播地址、IPv4 映射的 IPv6 地址和过小的网段。
TUN 新增 `autoSystemDnsToGateway`（Linux、FreeBSD）和 `autoSystemWfpBlockLeak`
（Windows，`dns` / `misconfigtun`）；平台相关前置条件由目标设备 Core 检查。
XDrive 不支持 REALITY；可使用 TLS。XDNS 两端都需要 `domains`，客户端还需要
`resolvers`；本包会检查记录类型、长度限制、EDNS0 和最小有效载荷容量。
Noise finalmask 可以用 `NoiseItem(type: 'exp', packet: '<b 01><r 8><t>')`。
XICMP 必须位于 `finalmask.udp` 数组最后一项（最外层），入站和出站均适用；
UDPHop 也需要此位置，但只支持出站，因此不能与 XICMP 放在同一条 mask 链上。

## 从旧版升级

升级到 v0.7.0 时：

- 删除 `WireGuardConfig.domainStrategy`。
- 将 `UDPHop.sockopt` 移到外层 `StreamConfig.sockopt`；现在支持外层
  `dialerProxy`。省略 `interval` 或设为 0 时，Core 使用 30 秒默认值。
- 将 `Xdns` 改为 `XDNS`，`domains` / `resolvers` 改用对象数组，
  不再支持旧的 `domain` 和字符串数组格式。例如：

```dart
const XDNS(
  domains: [XDNSDomain(names: ['tunnel.example.com'], types: [16])],
  resolvers: [
    XDNSResolver(addrs: ['1.1.1.1:53']),
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
