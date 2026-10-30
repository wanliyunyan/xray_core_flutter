## v0.11.0

- Synced typed config models and parity checks with local Xray-core
  `infra/conf` v26.10.29 (0afec660).
- Added XDrive S3 storage with typed `XDriveS3Config`, preserving omitted
  defaults and validating endpoints, regions, bucket/prefix names, addressing
  modes and credential structure for inbound and outbound streams.
- Aligned VLESS/Trojan transport security exemptions with Core's private,
  loopback and link-local unicast IP checks. Reserved/test, CGNAT, unspecified
  and multicast addresses now require transport security or VLESS encryption.
- Added an S3 example settings reference, editor regression coverage and
  migration notes for deprecated Freedom fragment/noises. Google Drive ring
  slots and geodata file handling remain Core runtime responsibilities.
- Align S3 URL host parsing with Go, including Unicode host characters,
  escaped hostnames, scoped IPv6 UTF-8 validation and port syntax. Reject
  percent-encoded non-ASCII zone bytes while preserving raw Unicode zones.
- Check active Geodata schedules for the new 100-asset limit, `.dat` file
  extensions and `@every` intervals of at least one minute. Add S3 effective
  transport, HTTP/3 and nested download-stream regression coverage.

## v0.10.0

- Disable example copying for validation errors while retaining the JSON preview
  and restoring copy after correction. Add a complete two-step XDrive template
  settings reference with all four storage operations.

- Synced typed config models and parity checks with Xray-core
  `infra/conf` v26.10.21.
- Added typed TCP/UDP `Filter` masks with blocked/allowed source IP rules.
  Validation checks IP/CIDR, GeoIP/external rule syntax and inversion; target
  asset checks remain Core's responsibility. Filtering takes effect on inbounds.
- Added XDrive XMUX and validation for conflicting concurrency/connection ranges.
- Added XDrive HTTP/3 checks for Google Drive UDP masks and brutal congestion.
  Raw two-step template options (`hrefPath`, `hrefMethod`) remain preserved.
- Added example controls for source IP filters, XDrive HTTP/3 and XMUX, including
  recoverable errors for malformed XMUX field input.
- Reject typed Filter settings attached to another mask type instead of silently
  exporting ineffective source rules; match Go's Unicode whitespace for IP rules.
- Preserve existing XMUX values and edits when switching example editor modes.
- Match Core's XMUX decimal range parsing, JSON int32 bounds and string-to-int32
  conversion; validate invalid typed XDrive XMUX JSON numbers before export.
- Share XMUX parsing with example fields and verify recovery from invalid input
  when changing editor modes. Add an XDrive HTTP/3 and XMUX usage example.
- Apply shared XMUX bounds and connection/concurrency conflict validation to
  XDrive, MASQUE and XHTTP, including nested streams. Respect XHTTP alias and
  raw extra precedence.

## v0.9.0

- Synced typed config models and parity checks with Xray-core
  `infra/conf` v26.10.17.
- Added Noise Lua scripts, XDNS DoH resolver options (`worker`, `tlsConfig`,
  and `quicConfig`), and MASQUE XMUX settings.
- Accepted the canonical `google-drive` XDrive service name while retaining
  compatibility with `Google Drive` input.
- Updated MASQUE validation and documentation for Xray 26.10.17 outbound mux support.
- Documented the Xray TUN `autoSystemDnsToGateway` support on Linux and FreeBSD.
- Added validation for Xray script conflicts, HTTPS resolver requirements, and
  MASQUE XMUX range conflicts.

## v0.8.0

- Synced typed config models and parity checks with Xray-core
  `infra/conf` v26.10.10.
- Added DNS nameserver IDs, DNS/routing Lua scripts, TLS `useSystemCA`, and
  MASQUE WARP transport settings.
- Updated XDNS JSON support to `names` and resolver `addrs`, including Core's
  default record types; legacy typed resolver constructors remain readable for
  source compatibility.
- Added 26.10.10 round-trip and validation regression coverage.

## v0.7.0

- Synced typed config models and loader parity checks with Xray-core
  `infra/conf` v26.9.30.
- Added MASQUE inbound/outbound settings, users, protocol constructors, and
  transport settings; added XDrive transport with all options and raw templates.
- Added TUN `autoSystemDnsToGateway` and `autoSystemWfpBlockLeak`.
- Breaking: replaced `Xdns` with `XDNS`, structured `XDNSDomain` entries and
  `XDNSResolver` entries with typed TCP/UDP settings; added `extraPoll`.
  Legacy string domains/resolvers must be migrated to the new object schema.
- Breaking: removed `WireGuardConfig.domainStrategy` and `UDPHop.sockopt`.
  UDPHop now uses stream socket options, supports outer `dialerProxy`, and
  accepts omitted/zero intervals (Core supplies its 30-second default).
- Validate MASQUE transport/TLS pairing, mux restrictions, addresses, users,
  paths and headers; validate XDrive services, TUN leak option names, XDNS
  resolvers/extraPoll and Noise `exp` expressions. Platform-specific TUN
  prerequisites remain Core checks on the target device.
- Reject invalid XDNS domain limits, record types, EDNS0 and insufficient payload
  capacity; require domains on both sides and resolvers on clients. Preserve
  Core's zero defaults and integer conversions without rewriting JSON.
- Reject normalized MASQUE hosts that Core cannot build, missing XDrive service
  settings, and REALITY on unsupported transports (including XDrive).
- Keep MASQUE outbound transport separate from non-MASQUE inbounds in the
  example; expose and retain MASQUE inbound TLS certificates. XDrive selections
  now use a compatible security layer instead of retaining REALITY.
- Updated the visual example for MASQUE, XDrive, structured XDNS and TUN options;
  regenerated Freezed models and added config and form regression coverage.
- Show recoverable errors for malformed or incorrectly typed MASQUE, XDrive
  and XDNS JSON inputs in the example, disabling copy until corrected.
- Reject forbidden ASCII characters in MASQUE hosts and keep opaque XDrive
  template JSON outside numeric option validation.
- Check XDNS client resolver address syntax and ports; match Go whitespace and
  hex-prefix handling in Noise expressions. Reject known finalmask types on
  the wrong transport and remove the example's unsupported UDP fragment option.
- Validate MASQUE address pools against Core initialization requirements:
  reject subnet/broadcast addresses, mapped IPv6 and pools without client
  addresses. Match Go host/port syntax without Dart URI normalization.
- Require XICMP to be the last UDP mask on both clients and servers, including
  nested download streams; keep it last when exporting example form selections.

## v0.6.0

- Respect XHTTP `sockopt.penetrate` when validating download streams. Reject
  UDPHop wrapping a stream with `sockopt.dialerProxy`, while allowing proxy
  options inside UDPHop's own settings.

- Recognize VLESS reverse outbounds' dynamic inbound tags in routing. Reject
  sniffing on inbound users' reverse configs and export it only for reverse
  outbounds in the example.

- Preserve socket options for HTTP, SOCKS and WireGuard proxy chains in the
  example. Validate nested XHTTP download streams and UDPHop dialer proxy
  references, respecting XHTTP alias and raw extra precedence.

- Recognize VLESS inbound users' reverse tags in dialer proxy, routing and
  balancer references, respecting `clients` precedence over `users`.
- Reject removed root-level `reverse` configs and unsupported domain listeners;
  preserve environment references and socket paths for target-device checks.
- Remove the example's legacy reverse controls and expose routing `localOS`,
  WireGuard `remoteDNS`, Masquerade `xForwarded`, the four new QUIC flags, and
  custom Blackhole responses in the form.
- Validate required IP listener ports with TUN and Unix socket exceptions.
- Validate public VLESS/Trojan transport security for simplified and full JSON
  settings using Core v26.9.9's private IP/domain rules; defer environment
  addresses to Core on the target device.

- Added `json_serializable` and migrated eight simple models to generated JSON
  conversion, preserving omitted nulls, JSON aliases and strict integer parsing.
- Parity checks now read generated JSON field maps while retaining handwritten
  conversion for union-shaped and protocol-dependent settings.
- Corrected the SDK minimum to Dart 3.9 to match the existing json_annotation
  dependency and support generated serialization syntax.

- Synced typed config models with Xray-core `infra/conf` v26.9.9.
- Added routing `localOS`, WireGuard `remoteDNS`, Realm `ipMode` and typed
  `portMapping`, Masquerade `xForwarded`, and the new QUIC flags.
- Added typed `BlackholeResponse.custom` with base64 `customResponseData`.
- Breaking: replaced `UdpHop` with the finalmask `UDPHop` model. Use
  `Mask(type: 'udphop', settings: UDPHop(...))` in `FinalMask.udp`, with
  `mode`, `remotePorts`, `remoteIPs`, `interval`, and optional `sockopt`.
- Breaking: removed `QuicParamsConfig.udpHop` and the retired Hysteria
  `congestion`, `up`, `down`, and `udpHop` fields. Configure congestion and
  bandwidth under `FinalMask.quicParams` and hopping under `FinalMask.udp`.
- Breaking: removed `ProxyConfig`; `proxySettings` is now a raw JSON map for
  importing legacy configs and is rejected by validation. Migrate proxy chains
  to `streamSettings.sockopt.dialerProxy`.
- Validate dialer proxy references and reject freedom `addressPortStrategy`.
- Handle empty dialer proxy tags and case-insensitive freedom protocol names.
- Validate custom blackhole Base64 and UDP hop modes, IP/CIDR values and
  intervals for inbound and outbound streams.
- Reject UDP hop masks in TCP, mismatched typed settings, and interval
  endpoints outside the supported 5 to 2147483647 second range.
- Include Realm's external `PortMapping` struct in parity checks and test
  missing models, missing fields and unavailable source files.
- Removed retired controls from the example; use its socket options and
  finalmask editors for the supported configuration paths.

## v0.5.0

- Focused the public package on Flutter/Dart config models, JSON conversion,
  and validation.
- Synced the typed Dart config models with Xray-core `infra/conf` v26.7.28.
- Replaced XMC finalmask usernames with signed profile metadata and added the TUN device description field.
- Added the canonical `package:xray_core_flutter/xray_core_flutter.dart`
  library entrypoint.

## v0.3.1

- Synced the typed Dart config models with Xray-core `infra/conf` v26.7.11.
- Added coverage for the new root `env`, stream `method`, SplitHTTP session ID, Loopback sniffing, WireGuard peer metadata, Fragment multi-range, and XMC finalmask fields.
- Removed fields no longer present in Xray-core `infra/conf` v26.7.11, including Shadowsocks UoT options, WireGuard workers, and removed TLS ECH force query / peer-name-list options.

## v0.3.0

- Synced the typed Dart config models with Xray-core `infra/conf` v26.6.1.
- Added coverage for newly exposed protocol, transport, app, finalmask, and helper config fields.
- Expanded Go parity checks to validate JSON tags, per-struct JSON shape, unexpected Dart keys, and config creator loader IDs.
- Added broader realistic config round-trip and contract tests for Xray-compatible JSON output.
- Updated the example into a visual Xray config builder app.

## v0.1.0

- Initial open source release.
- Added strongly typed Dart models for Xray `infra/conf` JSON configuration.
- Added helper constructors for common inbound, outbound, transport, DNS, and routing workflows.
- Added validation helpers for common SDK configuration mistakes.
- Added Go config parity checks and realistic configuration round-trip tests.
