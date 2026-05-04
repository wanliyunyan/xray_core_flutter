part of 'apps.dart';

enum ApiService {
  reflectionservice,
  handlerservice,
  loggerservice,
  statsservice,
  observatoryservice,
  routingservice;

  factory ApiService.fromJson(Object? json) {
    if (json is String) {
      return switch (json.toLowerCase()) {
        'reflectionservice' => ApiService.reflectionservice,
        'handlerservice' => ApiService.handlerservice,
        'loggerservice' => ApiService.loggerservice,
        'statsservice' => ApiService.statsservice,
        'observatoryservice' => ApiService.observatoryservice,
        'routingservice' => ApiService.routingservice,
        _ => throw FormatException('unknown api service: $json'),
      };
    }
    throw FormatException('invalid api service: $json');
  }

  String toJson() => name;
}
