part of 'apps.dart';

@freezed
abstract class HostsWrapper with _$HostsWrapper {
  const factory HostsWrapper({required Map<String, HostAddress> hosts}) =
      _HostsWrapper;

  factory HostsWrapper.fromJson(Object? json) {
    final map = asJsonMap(json, 'dns hosts');
    return HostsWrapper(
      hosts: map.map(
        (key, value) => MapEntry(key, HostAddress.fromJson(value)),
      ),
    );
  }

  const HostsWrapper._();

  Map<String, dynamic> toJson() =>
      hosts.map((key, value) => MapEntry(key, value.toJson()));
}
