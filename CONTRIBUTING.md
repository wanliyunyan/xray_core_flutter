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

## JSON Code Generation

Simple models use Freezed with `json_serializable`. Put
`@JsonSerializable(includeIfNull: false, createFieldMap: true)` on their primary
factory and delegate `fromJson(Object?)` through `asJsonMap` to the generated
parser. Freezed forwards the annotation to its implementation class; keep the
local `invalid_annotation_target` suppression on that constructor annotation.
For nullable integer fields, use `@JsonKey(fromJson: nullableIntFromJson)` to
preserve strict integer parsing instead of truncating fractional JSON numbers.

Keep union-shaped Xray values and protocol dispatch in handwritten converters.
Regenerate and commit both `.freezed.dart` and `.g.dart` files. The parity tool
reads generated field maps using JSON names and rejects missing generated maps.
Do not edit these generated files directly.

The package requires Dart 3.9 or later, matching `json_annotation`'s minimum.
Running the currently selected Freezed 4 generator requires Dart 3.13 or later.

## Release Checklist

1. Update `CHANGELOG.md`.
2. Bump `version` in `pubspec.yaml`.
3. Run `flutter analyze`.
4. Run `flutter test`.
5. Run the Xray config parity check.
6. Run `dart pub publish --dry-run`.
