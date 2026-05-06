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
