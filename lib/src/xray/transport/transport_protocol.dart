part of 'transport.dart';

enum TransportProtocol {
  @JsonValue('tcp')
  tcp,
  @JsonValue('raw')
  raw,
  @JsonValue('websocket')
  websocket,
  @JsonValue('ws')
  ws,
  @JsonValue('grpc')
  grpc,
  @JsonValue('httpupgrade')
  httpupgrade,
  @JsonValue('splithttp')
  splithttp,
  @JsonValue('xhttp')
  xhttp,
  @JsonValue('mkcp')
  mkcp,
  @JsonValue('kcp')
  kcp,
  @JsonValue('h2')
  h2,
  @JsonValue('h3')
  h3,
  @JsonValue('http')
  http,
  @JsonValue('quic')
  quic,
  @JsonValue('hysteria')
  hysteria;

  factory TransportProtocol.fromJson(Object? json) {
    if (json is String) {
      return switch (json.toLowerCase()) {
        'tcp' => TransportProtocol.tcp,
        'raw' => TransportProtocol.raw,
        'websocket' => TransportProtocol.websocket,
        'ws' => TransportProtocol.ws,
        'grpc' => TransportProtocol.grpc,
        'httpupgrade' => TransportProtocol.httpupgrade,
        'splithttp' => TransportProtocol.splithttp,
        'xhttp' => TransportProtocol.xhttp,
        'mkcp' => TransportProtocol.mkcp,
        'kcp' => TransportProtocol.kcp,
        'h2' => TransportProtocol.h2,
        'h3' => TransportProtocol.h3,
        'http' => TransportProtocol.http,
        'quic' => TransportProtocol.quic,
        'hysteria' => TransportProtocol.hysteria,
        _ => throw FormatException('unknown transport protocol: $json'),
      };
    }
    throw FormatException('invalid transport protocol: $json');
  }

  String toJson() => switch (this) {
        TransportProtocol.tcp => 'tcp',
        TransportProtocol.raw => 'raw',
        TransportProtocol.websocket => 'websocket',
        TransportProtocol.ws => 'ws',
        TransportProtocol.grpc => 'grpc',
        TransportProtocol.httpupgrade => 'httpupgrade',
        TransportProtocol.splithttp => 'splithttp',
        TransportProtocol.xhttp => 'xhttp',
        TransportProtocol.mkcp => 'mkcp',
        TransportProtocol.kcp => 'kcp',
        TransportProtocol.h2 => 'h2',
        TransportProtocol.h3 => 'h3',
        TransportProtocol.http => 'http',
        TransportProtocol.quic => 'quic',
        TransportProtocol.hysteria => 'hysteria',
      };
}
