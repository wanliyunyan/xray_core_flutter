part of 'transport.dart';

@freezed
abstract class SocketConfig with _$SocketConfig {
  const factory SocketConfig({
    int? mark,
    Object? tcpFastOpen,
    TProxyMode? tproxy,
    bool? acceptProxyProtocol,
    XrayTargetStrategy? domainStrategy,
    String? dialerProxy,
    int? tcpKeepAliveInterval,
    int? tcpKeepAliveIdle,
    String? tcpCongestion,
    int? tcpWindowClamp,
    int? tcpMaxSeg,
    bool? penetrate,
    int? tcpUserTimeout,
    bool? v6only,
    @JsonKey(name: 'interface') String? interfaceName,
    bool? tcpMptcp,
    List<CustomSockoptConfig>? customSockopt,
    AddressPortStrategy? addressPortStrategy,
    HappyEyeballsConfig? happyEyeballs,
    List<String>? trustedXForwardedFor,
  }) = _SocketConfig;

  factory SocketConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'sockopt');
    return SocketConfig(
      mark: map['mark'] as int?,
      tcpFastOpen: map['tcpFastOpen'],
      tproxy: map['tproxy'] == null ? null : TProxyMode.fromJson(map['tproxy']),
      acceptProxyProtocol: map['acceptProxyProtocol'] as bool?,
      domainStrategy: map['domainStrategy'] == null
          ? null
          : XrayTargetStrategyJson.fromJson(map['domainStrategy']),
      dialerProxy: map['dialerProxy'] as String?,
      tcpKeepAliveInterval: map['tcpKeepAliveInterval'] as int?,
      tcpKeepAliveIdle: map['tcpKeepAliveIdle'] as int?,
      tcpCongestion: map['tcpCongestion'] as String?,
      tcpWindowClamp: map['tcpWindowClamp'] as int?,
      tcpMaxSeg: map['tcpMaxSeg'] as int?,
      penetrate: map['penetrate'] as bool?,
      tcpUserTimeout: map['tcpUserTimeout'] as int?,
      v6only: map['v6only'] as bool?,
      interfaceName: map['interface'] as String?,
      tcpMptcp: map['tcpMptcp'] as bool?,
      customSockopt: map['customSockopt'] == null
          ? null
          : asJsonList(map['customSockopt'], CustomSockoptConfig.fromJson),
      addressPortStrategy: map['addressPortStrategy'] == null
          ? null
          : AddressPortStrategy.fromJson(map['addressPortStrategy']),
      happyEyeballs: map['happyEyeballs'] == null
          ? null
          : HappyEyeballsConfig.fromJson(map['happyEyeballs']),
      trustedXForwardedFor: (map['trustedXForwardedFor'] as List?)
          ?.cast<String>(),
    );
  }

  const SocketConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'mark': mark,
    'tcpFastOpen': tcpFastOpen,
    'tproxy': tproxy?.toJson(),
    'acceptProxyProtocol': acceptProxyProtocol,
    'domainStrategy': domainStrategy?.toJson(),
    'dialerProxy': dialerProxy,
    'tcpKeepAliveInterval': tcpKeepAliveInterval,
    'tcpKeepAliveIdle': tcpKeepAliveIdle,
    'tcpCongestion': tcpCongestion,
    'tcpWindowClamp': tcpWindowClamp,
    'tcpMaxSeg': tcpMaxSeg,
    'penetrate': penetrate,
    'tcpUserTimeout': tcpUserTimeout,
    'v6only': v6only,
    'interface': interfaceName,
    'tcpMptcp': tcpMptcp,
    'customSockopt': customSockopt?.map((item) => item.toJson()).toList(),
    'addressPortStrategy': addressPortStrategy?.toJson(),
    'happyEyeballs': happyEyeballs?.toJson(),
    'trustedXForwardedFor': trustedXForwardedFor,
  });
}
