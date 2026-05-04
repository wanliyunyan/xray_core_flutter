part of 'protocol_settings.dart';

abstract interface class XrayProtocolSettings {
  Map<String, dynamic> toJson();
}

abstract interface class XrayInboundSettings implements XrayProtocolSettings {}

abstract interface class XrayOutboundSettings implements XrayProtocolSettings {}

class XrayRawInboundSettings implements XrayInboundSettings {
  const XrayRawInboundSettings(this.value);

  final Map<String, dynamic> value;

  @override
  Map<String, dynamic> toJson() => value;
}

class XrayRawOutboundSettings implements XrayOutboundSettings {
  const XrayRawOutboundSettings(this.value);

  final Map<String, dynamic> value;

  @override
  Map<String, dynamic> toJson() => value;
}
