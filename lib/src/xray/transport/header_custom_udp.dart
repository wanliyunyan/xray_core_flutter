part of 'transport.dart';

@freezed
abstract class HeaderCustomUDP
    with _$HeaderCustomUDP
    implements FinalMaskSettings {
  const factory HeaderCustomUDP({
    String? mode,
    @JsonKey(name: 'client') List<UDPItem>? client,
    @JsonKey(name: 'server') List<UDPItem>? server,
  }) = _HeaderCustomUDP;

  factory HeaderCustomUDP.fromJson(Object? json) {
    final map = asJsonMap(json, 'header-custom udp');
    return HeaderCustomUDP(
      mode: map['mode'] as String?,
      client: map['client'] == null
          ? null
          : asJsonList(map['client'], UDPItem.fromJson),
      server: map['server'] == null
          ? null
          : asJsonList(map['server'], UDPItem.fromJson),
    );
  }

  const HeaderCustomUDP._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
    'mode': mode,
    'client': client?.map((item) => item.toJson()).toList(),
    'server': server?.map((item) => item.toJson()).toList(),
  });
}
