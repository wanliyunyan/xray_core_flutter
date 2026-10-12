part of 'transport.dart';

@freezed
abstract class MasqueWarpConfig with _$MasqueWarpConfig {
  const factory MasqueWarpConfig({
    String? privateKey,
    String? publicKey,
    List<String>? address,
  }) = _MasqueWarpConfig;

  factory MasqueWarpConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'MasqueWarpConfig');
    return MasqueWarpConfig(
      privateKey: map['privateKey'] as String?,
      publicKey: map['publicKey'] as String?,
      address: (map['address'] as List?)?.cast<String>(),
    );
  }

  const MasqueWarpConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'privateKey': privateKey,
    'publicKey': publicKey,
    'address': address,
  });
}

@freezed
abstract class MasqueConfig with _$MasqueConfig {
  const factory MasqueConfig({
    String? host,
    String? path,
    String? user,
    String? pass,
    Map<String, String>? headers,
    MasqueWarpConfig? warp,
  }) = _MasqueConfig;

  factory MasqueConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'MasqueConfig');
    return MasqueConfig(
      host: map['host'] as String?,
      path: map['path'] as String?,
      user: map['user'] as String?,
      pass: map['pass'] as String?,
      headers: map['headers'] == null
          ? null
          : asJsonMap(map['headers'], 'headers').cast<String, String>(),
      warp: map['warp'] == null ? null : MasqueWarpConfig.fromJson(map['warp']),
    );
  }

  const MasqueConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'host': host,
    'path': path,
    'user': user,
    'pass': pass,
    'headers': headers,
    'warp': warp?.toJson(),
  });
}
