part of 'apps.dart';

abstract interface class XrayStrategySettings {
  Map<String, dynamic> toJson();
}

class XrayRawStrategySettings implements XrayStrategySettings {
  const XrayRawStrategySettings(this.value);

  final Map<String, dynamic> value;

  @override
  Map<String, dynamic> toJson() => value;
}
