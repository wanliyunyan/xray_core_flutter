import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';

typedef _AbiVersionNative = Int32 Function();
typedef _AbiVersionDart = int Function();

typedef _VersionNative = Pointer<Utf8> Function();
typedef _VersionDart = Pointer<Utf8> Function();

final class XrayCoreSDK {
  XrayCoreSDK._();

  static final DynamicLibrary _library = _open();

  static int abiVersion() {
    final fn = _library.lookupFunction<_AbiVersionNative, _AbiVersionDart>(
      'xray_core_sdk_abi_version',
    );
    return fn();
  }

  static String version() {
    final fn = _library.lookupFunction<_VersionNative, _VersionDart>(
      'xray_core_sdk_version',
    );
    return fn().toDartString();
  }

  static DynamicLibrary _open() {
    if (Platform.isAndroid || Platform.isLinux) {
      return DynamicLibrary.open('libXrayCoreSDK.so');
    }
    if (Platform.isWindows) {
      return DynamicLibrary.open('XrayCoreSDK.dll');
    }
    if (Platform.isMacOS || Platform.isIOS) {
      return DynamicLibrary.process();
    }
    throw UnsupportedError(
      'XrayCoreSDK native library is not available on this platform.',
    );
  }
}
