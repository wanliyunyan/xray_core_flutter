# Examples

## Visual Config Builder

```sh
cd example
flutter run -d macos
```

In Android Studio or IntelliJ, open `example/lib/main.dart` and run it with the
macOS device selected. This opens a visual Xray config builder with selectable
protocols, transport options, module checkboxes, and generated JSON on the
right.

The app groups controls by config area. Users can tick modules, choose inbound
and outbound protocols, choose transport/security options, enter detailed
values, and compose the generated JSON in real time.

If `flutter run -d macos` builds successfully and then waits forever on a Flutter
master/dev toolchain, launch the app without the debug attach step:

```sh
cd example
./run_macos_app.sh
```
