part of 'transport.dart';

@freezed
abstract class TCPConfig with _$TCPConfig {
  const factory TCPConfig({
    TCPHeaderConfig? header,
    bool? acceptProxyProtocol,
  }) = _TCPConfig;

  factory TCPConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'tcp settings');
    return TCPConfig(
      header: map['header'] == null
          ? null
          : TCPHeaderConfig.fromJson(map['header']),
      acceptProxyProtocol: map['acceptProxyProtocol'] as bool?,
    );
  }

  const TCPConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'header': header?.toJson(),
    'acceptProxyProtocol': acceptProxyProtocol,
  });
}
