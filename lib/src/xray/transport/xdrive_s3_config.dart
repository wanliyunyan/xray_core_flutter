part of 'transport.dart';

@freezed
abstract class XDriveS3Config with _$XDriveS3Config {
  const factory XDriveS3Config({
    String? endpoint,
    String? region,
    String? bucket,
    bool? pathStyle,
  }) = _XDriveS3Config;

  factory XDriveS3Config.fromJson(Object? json) {
    final map = asJsonMap(json, 'XDriveS3Config');
    return XDriveS3Config(
      endpoint: map['endpoint'] as String?,
      region: map['region'] as String?,
      bucket: map['bucket'] as String?,
      pathStyle: map['pathStyle'] as bool?,
    );
  }

  const XDriveS3Config._();

  Map<String, dynamic> toJson() => withoutNulls({
    'endpoint': endpoint,
    'region': region,
    'bucket': bucket,
    'pathStyle': pathStyle,
  });
}
