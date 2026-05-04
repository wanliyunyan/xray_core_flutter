part of 'transport.dart';

enum AddressPortStrategy {
  none,
  srvportonly,
  srvaddressonly,
  srvportandaddress,
  txtportonly,
  txtaddressonly,
  txtportandaddress;

  factory AddressPortStrategy.fromJson(Object? json) {
    if (json is String) {
      return switch (json.toLowerCase()) {
        'none' => AddressPortStrategy.none,
        'srvportonly' => AddressPortStrategy.srvportonly,
        'srvaddressonly' => AddressPortStrategy.srvaddressonly,
        'srvportandaddress' => AddressPortStrategy.srvportandaddress,
        'txtportonly' => AddressPortStrategy.txtportonly,
        'txtaddressonly' => AddressPortStrategy.txtaddressonly,
        'txtportandaddress' => AddressPortStrategy.txtportandaddress,
        _ => throw FormatException('unknown addressPortStrategy: $json'),
      };
    }
    throw FormatException('invalid addressPortStrategy: $json');
  }

  String toJson() => name;
}
