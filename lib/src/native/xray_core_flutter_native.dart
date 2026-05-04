import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';

typedef _AbiVersionNative = Int32 Function();
typedef _AbiVersionDart = int Function();

typedef _VersionNative = Pointer<Utf8> Function();
typedef _VersionDart = Pointer<Utf8> Function();

final class XrayCoreFlutterNative {
  XrayCoreFlutterNative._();

  static final DynamicLibrary _library = _open();

  static int abiVersion() {
    final fn = _library.lookupFunction<_AbiVersionNative, _AbiVersionDart>(
      'xray_core_flutter_abi_version',
    );
    return fn();
  }

  static String version() {
    final fn = _library.lookupFunction<_VersionNative, _VersionDart>(
      'xray_core_flutter_version',
    );
    return fn().toDartString();
  }

  static DynamicLibrary _open() {
    if (Platform.isAndroid || Platform.isLinux) {
      return DynamicLibrary.open('libxray_core_flutter.so');
    }
    if (Platform.isWindows) {
      return DynamicLibrary.open('xray_core_flutter.dll');
    }
    if (Platform.isMacOS || Platform.isIOS) {
      return DynamicLibrary.process();
    }
    throw UnsupportedError(
      'xray_core_flutter native library is not available on this platform.',
    );
  }
}
