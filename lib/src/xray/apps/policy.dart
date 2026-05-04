part of 'apps.dart';

@freezed
abstract class Policy with _$Policy {
  const factory Policy({
    int? handshake,
    @JsonKey(name: 'connIdle') int? connectionIdle,
    int? uplinkOnly,
    int? downlinkOnly,
    bool? statsUserUplink,
    bool? statsUserDownlink,
    bool? statsUserOnline,
    int? bufferSize,
  }) = _Policy;

  factory Policy.fromJson(Object? json) {
    final map = asJsonMap(json, 'policy');
    return Policy(
      handshake: map['handshake'] as int?,
      connectionIdle: map['connIdle'] as int?,
      uplinkOnly: map['uplinkOnly'] as int?,
      downlinkOnly: map['downlinkOnly'] as int?,
      statsUserUplink: map['statsUserUplink'] as bool?,
      statsUserDownlink: map['statsUserDownlink'] as bool?,
      statsUserOnline: map['statsUserOnline'] as bool?,
      bufferSize: map['bufferSize'] as int?,
    );
  }

  const Policy._();

  Map<String, dynamic> toJson() => withoutNulls({
    'handshake': handshake,
    'connIdle': connectionIdle,
    'uplinkOnly': uplinkOnly,
    'downlinkOnly': downlinkOnly,
    'statsUserUplink': statsUserUplink,
    'statsUserDownlink': statsUserDownlink,
    'statsUserOnline': statsUserOnline,
    'bufferSize': bufferSize,
  });
}
