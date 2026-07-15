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

## 0.2.3

- Renamed native SDK artifacts and import/module surface to `XrayCoreSDK`.

## 0.2.2

- Fixed GitHub Release asset upload matching so iOS and macOS XCFramework archives are attached separately.

## 0.2.1

- Added native FFI plugin scaffolding for Android, iOS, macOS, Linux, and Windows.
- Added a small C ABI surface for verifying native library loading.
- Added a Dart native helper entrypoint at `package:xray_core_flutter/xray_native.dart`.
- Added native SDK build commands and GitHub Actions packaging for Android, Apple, Linux, and Windows artifacts.

## 0.1.1

- Removed the default Flutter counter demo widget and test from the SDK package.
- Kept a minimal module entrypoint for Android AAR and iOS framework builds.
- Clarified SDK packaging notes for native platform artifacts.

## 0.1.0

- Initial open source release.
- Added strongly typed Dart models for Xray `infra/conf` JSON configuration.
- Added helper constructors for common inbound, outbound, transport, DNS, and routing workflows.
- Added validation helpers for common SDK configuration mistakes.
- Added Go config parity checks and realistic configuration round-trip tests.
