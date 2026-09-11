part of 'protocol_settings.dart';

sealed class BlackholeResponse {
  const BlackholeResponse();

  const factory BlackholeResponse.none() = NoneResponse;

  const factory BlackholeResponse.http() = HttpResponse;

  const factory BlackholeResponse.custom(String customResponseData) = ResponseConfig.custom;

  factory BlackholeResponse.fromJson(Object? json) {
    final map = asJsonMap(json, 'blackhole response');
    return switch ((map['type'] as String?)?.toLowerCase()) {
      null || '' || 'none' => const BlackholeResponse.none(),
      'http' => const BlackholeResponse.http(),
      'custom' => ResponseConfig.fromJson(map),
      _ => RawBlackholeResponse(map),
    };
  }

  Map<String, dynamic> toJson();
}

/// Blackhole response configuration. Custom response data is base64 encoded.
class ResponseConfig extends BlackholeResponse {
  const ResponseConfig({this.type, this.customResponseData});

  const ResponseConfig.custom(String data)
      : type = 'custom', customResponseData = data;

  factory ResponseConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'blackhole response');
    return ResponseConfig(
      type: map['type'] as String?,
      customResponseData: map['customResponseData'] as String?,
    );
  }

  final String? type;
  final String? customResponseData;

  @override
  Map<String, dynamic> toJson() => withoutNulls({
    'type': type,
    'customResponseData': customResponseData,
  });
}

class NoneResponse extends BlackholeResponse {
  const NoneResponse();

  @override
  Map<String, dynamic> toJson() => {'type': 'none'};
}

class HttpResponse extends BlackholeResponse {
  const HttpResponse();

  @override
  Map<String, dynamic> toJson() => {'type': 'http'};
}

class RawBlackholeResponse extends BlackholeResponse {
  const RawBlackholeResponse(this.value);

  final Map<String, dynamic> value;

  @override
  Map<String, dynamic> toJson() => value;
}
