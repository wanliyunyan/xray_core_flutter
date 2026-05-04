part of 'common.dart';

class XrayNetworkList {
  const XrayNetworkList(this.values);

  const XrayNetworkList.tcp() : values = const [XrayNetwork.tcp];

  const XrayNetworkList.udp() : values = const [XrayNetwork.udp];

  const XrayNetworkList.tcpAndUdp()
    : values = const [XrayNetwork.tcp, XrayNetwork.udp];

  factory XrayNetworkList.fromJson(Object? json) {
    if (json is String) {
      return XrayNetworkList(_parseNetworks(json.split(',')));
    }
    if (json is List<dynamic>) {
      return XrayNetworkList(_parseNetworks(json.cast<String>()));
    }
    throw FormatException('unknown format of a network list: $json');
  }

  final List<XrayNetwork> values;

  Object toJson() => values.map((value) => value.name).toList();

  static List<XrayNetwork> _parseNetworks(Iterable<String> values) {
    return values.map(XrayNetwork.fromJson).toList();
  }
}
