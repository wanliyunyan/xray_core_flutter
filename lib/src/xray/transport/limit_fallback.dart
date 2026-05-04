part of 'transport.dart';

@freezed
abstract class LimitFallback with _$LimitFallback {
  const factory LimitFallback({
    int? afterBytes,
    int? bytesPerSec,
    int? burstBytesPerSec,
  }) = _LimitFallback;

  factory LimitFallback.fromJson(Object? json) {
    final map = asJsonMap(json, 'limit fallback');
    return LimitFallback(
      afterBytes: map['afterBytes'] as int?,
      bytesPerSec: map['bytesPerSec'] as int?,
      burstBytesPerSec: map['burstBytesPerSec'] as int?,
    );
  }

  const LimitFallback._();

  Map<String, dynamic> toJson() => withoutNulls({
    'afterBytes': afterBytes,
    'bytesPerSec': bytesPerSec,
    'burstBytesPerSec': burstBytesPerSec,
  });
}
