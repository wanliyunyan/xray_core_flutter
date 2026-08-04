# Contributing

Thank you for helping keep `xray_core_flutter` aligned with Xray.

## Scope

The package focuses on typed Dart/Flutter models for creating, validating,
importing, and exporting Xray JSON configs.

## Updating For Xray Changes

When Xray updates `infra/conf`:

1. Compare the Go structs and JSON tags against `lib/src/xray`.
2. Keep Dart class names, field names, JSON names, and module layout close to
   the Go source where practical.
3. Use `freezed` for model classes where it fits.
4. Use enums for stable string values.
5. Keep Xray-owned defaults out of Dart models.
6. Keep raw escape hatches for Go `json.RawMessage` or loader-style unions.

Run the parity check:

```sh
dart run tool/check_xray_conf_parity.dart ../Xray-core/infra/conf
```

Then verify:

```sh
dart run build_runner build
flutter analyze
flutter test
```

## Release Checklist

1. Update `CHANGELOG.md`.
2. Bump `version` in `pubspec.yaml`.
3. Run `flutter analyze`.
4. Run `flutter test`.
5. Run the Xray config parity check.
6. Run `dart pub publish --dry-run`.
