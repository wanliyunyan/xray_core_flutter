part of 'common.dart';

@freezed
abstract class XrayUser with _$XrayUser {
  const factory XrayUser({String? email, int? level}) = _XrayUser;
}
