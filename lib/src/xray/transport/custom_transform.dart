part of 'transport.dart';

@freezed
abstract class CustomTransform with _$CustomTransform {
  const factory CustomTransform({
    required String op,
    required List<CustomTransformArg> args,
  }) = _CustomTransform;

  factory CustomTransform.fromJson(Object? json) {
    final map = asJsonMap(json, 'custom transform');
    return CustomTransform(
      op: map['op'] as String,
      args: asJsonList(map['args'], CustomTransformArg.fromJson),
    );
  }

  const CustomTransform._();

  Map<String, dynamic> toJson() => withoutNulls({
    'op': op,
    'args': args.map((item) => item.toJson()).toList(),
  });
}
