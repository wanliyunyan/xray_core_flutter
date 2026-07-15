part of 'transport.dart';

@freezed
abstract class XMC with _$XMC implements FinalMaskSettings {
  const factory XMC({
    String? hostname,
    List<String>? usernames,
    String? password,
  }) = _XMC;

  factory XMC.fromJson(Object? json) {
    final map = asJsonMap(json, 'xmc mask');
    return XMC(
      hostname: map['hostname'] as String?,
      usernames: (map['usernames'] as List?)?.cast<String>(),
      password: map['password'] as String?,
    );
  }

  const XMC._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
        'hostname': hostname,
        'usernames': usernames,
        'password': password,
      });
}
