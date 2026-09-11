part of 'transport.dart';

@freezed
abstract class UDPHop with _$UDPHop implements FinalMaskSettings {
  const factory UDPHop({
    SocketConfig? sockopt,
    String? mode,
    XrayPortList? remotePorts,
    List<String>? remoteIPs,
    XrayInt32Range? interval,
  }) = _UDPHop;

  factory UDPHop.fromJson(Object? json) {
    final map = asJsonMap(json, 'udp hop');
    return UDPHop(
      sockopt:
          map['sockopt'] == null ? null : SocketConfig.fromJson(map['sockopt']),
      mode: map['mode'] as String?,
      remotePorts: map['remotePorts'] == null
          ? null
          : XrayPortList.fromJson(map['remotePorts']),
      remoteIPs: (map['remoteIPs'] as List?)?.cast<String>(),
      interval: map['interval'] == null
          ? null
          : XrayInt32Range.fromJson(map['interval']),
    );
  }

  const UDPHop._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
        'sockopt': sockopt?.toJson(),
        'mode': mode,
        'remotePorts': remotePorts?.toJson(),
        'remoteIPs': remoteIPs,
        'interval': interval?.toJson(),
      });
}
