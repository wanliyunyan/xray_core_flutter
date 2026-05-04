part of 'protocol_settings.dart';

class BlackholeConfig implements XrayOutboundSettings {
  const BlackholeConfig({this.response});

  factory BlackholeConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'blackhole outbound');
    return BlackholeConfig(
      response: map['response'] == null
          ? null
          : BlackholeResponse.fromJson(map['response']),
    );
  }

  final BlackholeResponse? response;

  @override
  Map<String, dynamic> toJson() =>
      withoutNulls({'response': response?.toJson()});
}
