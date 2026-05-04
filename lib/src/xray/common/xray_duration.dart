part of 'common.dart';

class XrayDuration {
  const XrayDuration.raw(this.value);

  factory XrayDuration.fromDuration(Duration duration) {
    final microseconds = duration.inMicroseconds;
    if (microseconds % Duration.microsecondsPerHour == 0) {
      return XrayDuration.raw('${duration.inHours}h');
    }
    if (microseconds % Duration.microsecondsPerMinute == 0) {
      return XrayDuration.raw('${duration.inMinutes}m');
    }
    if (microseconds % Duration.microsecondsPerSecond == 0) {
      return XrayDuration.raw('${duration.inSeconds}s');
    }
    if (microseconds % Duration.microsecondsPerMillisecond == 0) {
      return XrayDuration.raw('${duration.inMilliseconds}ms');
    }
    return XrayDuration.raw('${duration.inMicroseconds}us');
  }

  factory XrayDuration.fromJson(Object? json) {
    if (json is String) {
      return XrayDuration.raw(json);
    }
    throw FormatException('invalid duration: $json');
  }

  final String value;

  String toJson() => value;
}
