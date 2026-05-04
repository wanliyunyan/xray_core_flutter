part of 'transport.dart';

@freezed
abstract class CustomTransformArg with _$CustomTransformArg {
  const factory CustomTransformArg({
    String? type,
    Object? bytes,
    int? u64,
    String? reuse,
    String? metadata,
    CustomTransform? transform,
  }) = _CustomTransformArg;

  factory CustomTransformArg.fromJson(Object? json) {
    final map = asJsonMap(json, 'custom transform arg');
    return CustomTransformArg(
      type: map['type'] as String?,
      bytes: map['bytes'],
      u64: map['u64'] as int?,
      reuse: map['reuse'] as String?,
      metadata: map['metadata'] as String?,
      transform: map['transform'] == null
          ? null
          : CustomTransform.fromJson(map['transform']),
    );
  }

  const CustomTransformArg._();

  Map<String, dynamic> toJson() => withoutNulls({
    'type': type,
    'bytes': bytes,
    'u64': u64,
    'reuse': reuse,
    'metadata': metadata,
    'transform': transform?.toJson(),
  });
}
