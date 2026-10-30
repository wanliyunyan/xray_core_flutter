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

The Dart models currently track Xray-core `infra/conf` v26.10.29. The parity
checker compares Go JSON tags, struct fields, unexpected Dart keys, and config
creator loader IDs:

```sh
dart run tool/check_xray_conf_parity.dart ../Xray-core/infra/conf
```

`validate()` checks ports for IP listeners and transport security for public
VLESS/Trojan targets, using Core v26.10.29's private, loopback and link-local unicast IP rules. TUN
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

## v26.10.29 and Migration to v0.11.0

XDrive adds `service: 's3'` with typed `XDriveS3Config(endpoint:, region:,
bucket:, pathStyle:)`. Set `remoteFolder` to a nonempty relative prefix (one
trailing slash is allowed), and `secrets` to AccessKeyID, SecretAccessKey and an
optional SessionToken. Endpoints must be HTTP(S) URLs without credentials,
query or fragment. Omitted `region` and `pathStyle` retain Core's defaults of
`us-east-1` and `true` without adding them to exported JSON. Virtual-hosted
addressing (`pathStyle: false`) requires a DNS endpoint and compatible bucket.
See the [S3 settings reference](example/configs/xdrive_s3_settings.json), which
can be pasted into the example's XDrive JSON editor.

Unencrypted VLESS/Trojan outbounds no longer exempt CGNAT, documentation/test,
unspecified or multicast IP addresses. IP exemptions now follow Go's
`IsPrivate`, `IsLoopback` and `IsLinkLocalUnicast`; private domain rules are
unchanged. Enable TLS/REALITY or VLESS encryption for affected targets.
Freedom `fragment` and `noises` still serialize, but Core deprecates them in
favor of `streamSettings.finalmask.tcp` fragment and `finalmask.udp` noise.
Active Geodata schedules allow at most 100 assets, require `.dat` file
extensions (case insensitive), and require `@every` intervals of at least one
minute. Dart checks these limits; asset paths, file availability, timezones and
full cron syntax remain target-device checks. Core limits each asset download
to 256 MiB. Google Drive
ring slots are implemented by Core without new JSON fields.

## v26.10.21 and Migration to v0.10.0

TCP/UDP finalmask supports typed `Filter` settings with `blockedSourceIPs` and
`allowedSourceIPs`. Rules accept IPs, CIDRs, `geoip:cn`, `ext-ip:file.dat:cn`,
and `!` inversion. Filtering applies to inbounds; outbound filters are a no-op.
Blocked rules take precedence. A nonempty allowlist restricts sources to its
matches; empty lists impose no restriction. Core checks GeoIP assets and country
codes on the target device.

XDrive supports `xmux: XmuxConfig(...)`; the upper endpoints of `maxConnections`
and `maxConcurrency` cannot both be positive. TLS with ALPN exactly `['h3']`
enables HTTP/3. Google Drive then supports only `noise` UDP masks, and all XDrive
services reject `brutal` / `force-brutal` congestion. Core supplies defaults.
Raw `template` JSON preserves two-step `hrefPath` and `hrefMethod` options.
The example includes source filter, XDrive HTTP/3 and XMUX controls. Copying is disabled
while validation reports errors; the JSON preview remains visible for correction.
A complete two-step template settings schema is available in the
[example file](example/configs/xdrive_template_settings.json); replace its storage
service endpoints before use.

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

XDrive, MASQUE and XHTTP share XMUX bounds and connection/concurrency conflict
validation. XHTTP gives `xhttpSettings` precedence over `splithttpSettings`; raw
`extra` overrides remain Core checks.
XMUX JSON numbers must fit int32; decimal string ranges use Core's int32
conversion. `hKeepAlivePeriod` is in seconds: negative values disable HTTP/2
keepalive pings, and zero uses Core's defaults. This does not disable connection
reuse. HTTP/3 gives an explicit `finalmask.quicParams.keepAlivePeriod` precedence.
The example preserves settings when switching XMUX editor modes and retains
invalid input until corrected.

## v26.10.17 and Migration to v0.9.0

DNS nameservers support `id`; DNS and routing support Lua `script`; TLS supports
`useSystemCA`; and MASQUE transport supports `warp` keys and IPv4/IPv6
addresses. XDNS uses `names` and resolver `addrs`, with Core defaulting omitted
record types to A, CNAME, TXT and AAAA.

XDNS resolvers also support DoH `https://` destinations, `worker`, `tlsConfig`,
and `quicConfig`. Noise finalmask supports Lua `script`, MASQUE transport
supports `xmux`, and XDrive uses the `google-drive` service name (the legacy
`Google Drive` spelling remains readable).

## v26.9.30 and Migration to v0.7.0

MASQUE now has typed inbound/outbound settings (`MasqueServerConfig`,
`MasqueClientConfig`), users and `MasqueConfig` transport settings. Use
`TransportProtocol.masque` with TLS; outbound mux is supported in Xray 26.10.17.
MASQUE inbound `address` entries must be usable host CIDRs with addresses left
for clients. Subnet addresses, IPv4 broadcasts, IPv4-mapped IPv6 addresses and
pools too small to assign clients are rejected.
`XDriveConfig` supports `local`, `google-drive` (and legacy `Google Drive`), `s3` and
`template` services.
Core remains responsible for default values. XDrive cannot use REALITY; TLS is
supported. XDNS requires domains on both sides and resolvers on clients;
validation checks record types, length limits, EDNS0 and minimum payload capacity.

TUN adds `autoSystemDnsToGateway` (Linux and FreeBSD) and `autoSystemWfpBlockLeak`
(Windows: `dns` / `misconfigtun`). OS-specific prerequisites are checked by Core
on the target device. Noise masks accept expressions such as
`NoiseItem(type: 'exp', packet: '<b 01><r 8><t>')`.
XICMP must be the final entry in `finalmask.udp` (the outermost layer) on both
clients and servers. UDPHop also requires this position and is client-only,
so it cannot share a mask chain with XICMP.

Breaking migrations:

- Remove `WireGuardConfig.domainStrategy`.
- Move `UDPHop.sockopt` to `StreamConfig.sockopt`. Outer `dialerProxy` is now
  supported. Omitted/zero intervals use Core's 30-second default.
- Replace `Xdns` with `XDNS`. Replace string arrays with structured domains and
  resolvers; use the `names` and `addrs` fields for Xray 26.10.17 JSON:

```dart
const XDNS(
  domains: [XDNSDomain(names: ['tunnel.example.com'], types: [16])],
  resolvers: [
    XDNSResolver(addrs: ['1.1.1.1:53']),
  ],
  extraPoll: 1,
);
```

## Development Checks

```sh
flutter pub get
flutter analyze
flutter test
dart pub publish --dry-run
```
