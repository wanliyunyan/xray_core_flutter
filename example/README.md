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

The form tracks Xray v26.9.30, including MASQUE, XDrive, TUN DNS/leak options
and structured XDNS domains/resolvers. MASQUE and XDrive have JSON settings
editors so all upstream fields can be configured. XDNS arrays use objects such
as `{"name":"tunnel.example.com","types":[16]}` and
`{"type":"udp","settings":{"addr":"1.1.1.1:53"}}`.

The example generates configuration JSON; it does not bundle or run Xray Core.
Before using the exported configuration, replace the sample server addresses,
credentials and any required TLS certificates with your own values. The default
DNS and routing rules reference `geoip:private`, `geoip:cn`, `geosite:cn` and
`geosite:category-ads-all`. Provide `geoip.dat` and `geosite.dat` containing those
entries in the target Core's asset directory, or remove/replace those rules.
Dart validation does not check files or resources on the target device.
