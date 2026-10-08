part of 'transport.dart';

@freezed
abstract class MasqueConfig with _$MasqueConfig {
  const factory MasqueConfig({
    String? host,
    String? path,
    String? user,
    String? pass,
    Map<String, String>? headers,
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
    );
  }

  const MasqueConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'host': host,
    'path': path,
    'user': user,
    'pass': pass,
    'headers': headers,
  });
}
