part of 'protocol_settings.dart';

sealed class BlackholeResponse {
  const BlackholeResponse();

  const factory BlackholeResponse.none() = NoneResponse;

  const factory BlackholeResponse.http() = HttpResponse;

  factory BlackholeResponse.fromJson(Object? json) {
    final map = asJsonMap(json, 'blackhole response');
    return switch ((map['type'] as String?)?.toLowerCase()) {
      'none' => const BlackholeResponse.none(),
      'http' => const BlackholeResponse.http(),
      _ => RawBlackholeResponse(map),
    };
  }

  Map<String, dynamic> toJson();
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
