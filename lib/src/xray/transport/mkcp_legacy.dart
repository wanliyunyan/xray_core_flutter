part of 'transport.dart';

@freezed
abstract class MkcpLegacy with _$MkcpLegacy implements FinalMaskSettings {
  const factory MkcpLegacy({
    String? header,
    String? value,
  }) = _MkcpLegacy;

  factory MkcpLegacy.fromJson(Object? json) {
    final map = asJsonMap(json, 'mkcp-legacy mask');
    return MkcpLegacy(
      header: map['header'] as String?,
      value: map['value'] as String?,
    );
  }

  const MkcpLegacy._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
        'header': header,
        'value': value,
      });
}
