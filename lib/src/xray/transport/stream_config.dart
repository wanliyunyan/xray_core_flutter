part of 'transport.dart';

@freezed
abstract class StreamConfig with _$StreamConfig {
  const factory StreamConfig({
    XrayAddress? address,
    int? port,
    TransportProtocol? network,
    SecurityProtocol? security,
    FinalMask? finalmask,
    TCPConfig? rawSettings,
    TCPConfig? tcpSettings,
    SplitHTTPConfig? xhttpSettings,
    KCPConfig? kcpSettings,
    WebSocketConfig? wsSettings,
    HttpUpgradeConfig? httpupgradeSettings,
    SplitHTTPConfig? splithttpSettings,
    GRPCConfig? grpcSettings,
    HysteriaConfig? hysteriaSettings,
    TLSConfig? tlsSettings,
    REALITYConfig? realitySettings,
    SocketConfig? sockopt,
  }) = _StreamConfig;

  factory StreamConfig.reality({
    TransportProtocol network = TransportProtocol.tcp,
    required REALITYConfig realitySettings,
    TCPConfig? rawSettings,
    TCPConfig? tcpSettings,
    SplitHTTPConfig? xhttpSettings,
    SplitHTTPConfig? splithttpSettings,
    GRPCConfig? grpcSettings,
    SocketConfig? sockopt,
  }) => StreamConfig(
    network: network,
    security: SecurityProtocol.reality,
    realitySettings: realitySettings,
    rawSettings: rawSettings,
    tcpSettings: tcpSettings,
    xhttpSettings: xhttpSettings,
    splithttpSettings: splithttpSettings,
    grpcSettings: grpcSettings,
    sockopt: sockopt,
  );

  factory StreamConfig.tls({
    TransportProtocol? network,
    TLSConfig? tlsSettings,
    TCPConfig? rawSettings,
    TCPConfig? tcpSettings,
    SplitHTTPConfig? xhttpSettings,
    KCPConfig? kcpSettings,
    WebSocketConfig? wsSettings,
    HttpUpgradeConfig? httpupgradeSettings,
    SplitHTTPConfig? splithttpSettings,
    GRPCConfig? grpcSettings,
    HysteriaConfig? hysteriaSettings,
    SocketConfig? sockopt,
  }) => StreamConfig(
    network: network,
    security: SecurityProtocol.tls,
    rawSettings: rawSettings,
    tcpSettings: tcpSettings,
    xhttpSettings: xhttpSettings,
    kcpSettings: kcpSettings,
    wsSettings: wsSettings,
    httpupgradeSettings: httpupgradeSettings,
    splithttpSettings: splithttpSettings,
    grpcSettings: grpcSettings,
    hysteriaSettings: hysteriaSettings,
    tlsSettings: tlsSettings,
    sockopt: sockopt,
  );

  factory StreamConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'streamSettings');
    return StreamConfig(
      address: map['address'] == null
          ? null
          : XrayAddress.fromJson(map['address']),
      port: map['port'] as int?,
      network: map['network'] == null
          ? null
          : TransportProtocol.fromJson(map['network']),
      security: map['security'] == null
          ? null
          : SecurityProtocol.fromJson(map['security']),
      finalmask: map['finalmask'] == null
          ? null
          : FinalMask.fromJson(map['finalmask']),
      realitySettings: map['realitySettings'] == null
          ? null
          : REALITYConfig.fromJson(map['realitySettings']),
      tcpSettings: map['tcpSettings'] == null
          ? null
          : TCPConfig.fromJson(map['tcpSettings']),
      rawSettings: map['rawSettings'] == null
          ? null
          : TCPConfig.fromJson(map['rawSettings']),
      wsSettings: map['wsSettings'] == null
          ? null
          : WebSocketConfig.fromJson(map['wsSettings']),
      httpupgradeSettings: map['httpupgradeSettings'] == null
          ? null
          : HttpUpgradeConfig.fromJson(map['httpupgradeSettings']),
      splithttpSettings: map['splithttpSettings'] == null
          ? null
          : SplitHTTPConfig.fromJson(map['splithttpSettings']),
      xhttpSettings: map['xhttpSettings'] == null
          ? null
          : SplitHTTPConfig.fromJson(map['xhttpSettings']),
      grpcSettings: map['grpcSettings'] == null
          ? null
          : GRPCConfig.fromJson(map['grpcSettings']),
      kcpSettings: map['kcpSettings'] == null
          ? null
          : KCPConfig.fromJson(map['kcpSettings']),
      hysteriaSettings: map['hysteriaSettings'] == null
          ? null
          : HysteriaConfig.fromJson(map['hysteriaSettings']),
      tlsSettings: map['tlsSettings'] == null
          ? null
          : TLSConfig.fromJson(map['tlsSettings']),
      sockopt: map['sockopt'] == null
          ? null
          : SocketConfig.fromJson(map['sockopt']),
    );
  }

  const StreamConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'address': address?.toJson(),
    'port': port,
    'network': network?.toJson(),
    'security': security?.toJson(),
    'finalmask': finalmask?.toJson(),
    'rawSettings': rawSettings?.toJson(),
    'tcpSettings': tcpSettings?.toJson(),
    'xhttpSettings': xhttpSettings?.toJson(),
    'kcpSettings': kcpSettings?.toJson(),
    'wsSettings': wsSettings?.toJson(),
    'httpupgradeSettings': httpupgradeSettings?.toJson(),
    'splithttpSettings': splithttpSettings?.toJson(),
    'grpcSettings': grpcSettings?.toJson(),
    'hysteriaSettings': hysteriaSettings?.toJson(),
    'tlsSettings': tlsSettings?.toJson(),
    'realitySettings': realitySettings?.toJson(),
    'sockopt': sockopt?.toJson(),
  });
}
