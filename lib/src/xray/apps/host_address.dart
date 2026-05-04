part of 'apps.dart';

sealed class HostAddress {
  const HostAddress();

  const factory HostAddress.single(XrayAddress address) = SingleHostAddress;

  const factory HostAddress.list(List<XrayAddress> addresses) = ListHostAddress;

  factory HostAddress.fromJson(Object? json) {
    if (json is List) {
      return HostAddress.list(json.map(XrayAddress.fromJson).toList());
    }
    return HostAddress.single(XrayAddress.fromJson(json));
  }

  Object toJson();
}

class SingleHostAddress extends HostAddress {
  const SingleHostAddress(this.address);

  final XrayAddress address;

  @override
  Object toJson() => address.toJson();
}

class ListHostAddress extends HostAddress {
  const ListHostAddress(this.addresses);

  final List<XrayAddress> addresses;

  @override
  Object toJson() => addresses.map((item) => item.toJson()).toList();
}
