part of 'transport.dart';

@freezed
abstract class UdpHop with _$UdpHop {
  const factory UdpHop({XrayPortList? ports, XrayInt32Range? interval}) =
      _UdpHop;

  factory UdpHop.fromJson(Object? json) {
    final map = asJsonMap(json, 'udp hop');
    return UdpHop(
      ports: map['ports'] == null ? null : XrayPortList.fromJson(map['ports']),
      interval: map['interval'] == null
          ? null
          : XrayInt32Range.fromJson(map['interval']),
    );
  }

  const UdpHop._();

  Map<String, dynamic> toJson() =>
      withoutNulls({'ports': ports?.toJson(), 'interval': interval?.toJson()});
}
