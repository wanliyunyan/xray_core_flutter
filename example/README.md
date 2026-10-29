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

The form tracks Xray v26.10.21, including MASQUE WARP, XDrive, TUN DNS/leak
options and structured XDNS domains/resolvers. MASQUE and XDrive have JSON
settings editors so all upstream fields can be configured. Dedicated controls
also expose XDrive HTTP/3, XMUX ranges and TCP/UDP source IP filters. HTTP/3
selects TLS with ALPN exactly `["h3"]`; XMUX field mode loads the current JSON
`xmux` values and writes edits back when returning to JSON mode, preserving other
XDrive settings, including template JSON.
Malformed XMUX field input shows an error and disables copying. XDNS arrays use
objects such as `{"names":["tunnel.example.com"]}` and
`{"addrs":["1.1.1.1:53"]}`.

The example generates configuration JSON; it does not bundle or run Xray Core.
Before using the exported configuration, replace the sample server addresses,
credentials and any required TLS certificates with your own values. The default
DNS and routing rules reference `geoip:private`, `geoip:cn`, `geosite:cn` and
`geosite:category-ads-all`. Provide `geoip.dat` and `geosite.dat` containing those
entries in the target Core's asset directory, or remove/replace those rules.
Dart validation does not check files or resources on the target device.

## Validation and template settings

Both copy buttons are disabled while parsing or validation reports errors. The
JSON preview remains visible for validation errors and updates after correction.
Successful validation still does not replace Core's target-device checks.

[`configs/xdrive_template_settings.json`](configs/xdrive_template_settings.json)
contains settings for the XDrive JSON editor, rather than a complete Xray config.
It includes `put`, `get`, `list` and `delete`, with two-step upload/download
operations and a capture group for listing object names. Replace the reserved
`storage.example` URLs and folder with the endpoints of your storage service.
The listing example expects XML `<d:href>NAME</d:href>` entries; adapt
`namesRegex` to your service's response and return names relative to the prefix.

The first upload/download request must return JSON such as
`{"href":"https://storage.example/presigned-object"}`. Core follows `hrefPath`
using `hrefMethod`; the returned URL is used literally, without first-step
authentication headers. Configure the first-step `auth` object for your service
if required. The example uses no authentication and is a schema reference.
