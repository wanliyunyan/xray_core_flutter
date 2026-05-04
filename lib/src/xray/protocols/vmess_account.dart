part of 'protocol_settings.dart';

@freezed
abstract class VMessAccount with _$VMessAccount {
  const factory VMessAccount({
    required String id,
    VmessSecurity? security,
    String? experiments,
  }) = _VMessAccount;

  factory VMessAccount.fromJson(Object? json) {
    final map = asJsonMap(json, 'vmess account');
    return VMessAccount(
      id: map['id'] as String,
      security: map['security'] == null
          ? null
          : VmessSecurity.fromJson(map['security']),
      experiments: map['experiments'] as String?,
    );
  }

  const VMessAccount._();

  Map<String, dynamic> toJson() => withoutNulls({
    'id': id,
    'security': security?.toJson(),
    'experiments': experiments,
  });
}
