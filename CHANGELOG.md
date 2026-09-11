## 0.6.0

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

## 0.5.0

- Focused the public package on Flutter/Dart config models, JSON conversion,
  and validation.
- Synced the typed Dart config models with Xray-core `infra/conf` v26.7.28.
- Replaced XMC finalmask usernames with signed profile metadata and added the TUN device description field.
- Added the canonical `package:xray_core_flutter/xray_core_flutter.dart`
  library entrypoint.

## 0.3.1

- Synced the typed Dart config models with Xray-core `infra/conf` v26.7.11.
- Added coverage for the new root `env`, stream `method`, SplitHTTP session ID, Loopback sniffing, WireGuard peer metadata, Fragment multi-range, and XMC finalmask fields.
- Removed fields no longer present in Xray-core `infra/conf` v26.7.11, including Shadowsocks UoT options, WireGuard workers, and removed TLS ECH force query / peer-name-list options.

## 0.3.0

- Synced the typed Dart config models with Xray-core `infra/conf` v26.6.1.
- Added coverage for newly exposed protocol, transport, app, finalmask, and helper config fields.
- Expanded Go parity checks to validate JSON tags, per-struct JSON shape, unexpected Dart keys, and config creator loader IDs.
- Added broader realistic config round-trip and contract tests for Xray-compatible JSON output.
- Updated the example into a visual Xray config builder app.

## 0.1.0

- Initial open source release.
- Added strongly typed Dart models for Xray `infra/conf` JSON configuration.
- Added helper constructors for common inbound, outbound, transport, DNS, and routing workflows.
- Added validation helpers for common SDK configuration mistakes.
- Added Go config parity checks and realistic configuration round-trip tests.
