part of 'transport.dart';

/// Source IP filtering for inbound TCP and UDP. Outbound masks are a no-op.
@freezed
abstract class Filter with _$Filter implements FinalMaskSettings {
  const factory Filter({
    List<String>? blockedSourceIPs,
    List<String>? allowedSourceIPs,
  }) = _Filter;

  factory Filter.fromJson(Object? json) {
    final map = asJsonMap(json, 'Filter');
    return Filter(
      blockedSourceIPs: (map['blockedSourceIPs'] as List?)?.cast<String>(),
      allowedSourceIPs: (map['allowedSourceIPs'] as List?)?.cast<String>(),
    );
  }

  const Filter._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
    'blockedSourceIPs': blockedSourceIPs,
    'allowedSourceIPs': allowedSourceIPs,
  });
}
