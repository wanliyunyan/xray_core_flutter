part of 'transport.dart';

@freezed
abstract class HeaderCustomTCP
    with _$HeaderCustomTCP
    implements FinalMaskSettings {
  const factory HeaderCustomTCP({
    List<List<TCPItem>>? clients,
    List<List<TCPItem>>? servers,
    List<List<TCPItem>>? errors,
  }) = _HeaderCustomTCP;

  factory HeaderCustomTCP.fromJson(Object? json) {
    final map = asJsonMap(json, 'header-custom tcp');
    List<List<TCPItem>>? parseSequences(Object? value) {
      if (value == null) return null;
      if (value is! List) {
        throw FormatException('invalid tcp sequence: $value');
      }
      return value.map((sequence) {
        if (sequence is! List) {
          throw FormatException('invalid tcp sequence item: $sequence');
        }
        return sequence.map(TCPItem.fromJson).toList();
      }).toList();
    }

    return HeaderCustomTCP(
      clients: parseSequences(map['clients']),
      servers: parseSequences(map['servers']),
      errors: parseSequences(map['errors']),
    );
  }

  const HeaderCustomTCP._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
    'clients': clients
        ?.map((sequence) => sequence.map((item) => item.toJson()).toList())
        .toList(),
    'servers': servers
        ?.map((sequence) => sequence.map((item) => item.toJson()).toList())
        .toList(),
    'errors': errors
        ?.map((sequence) => sequence.map((item) => item.toJson()).toList())
        .toList(),
  });
}
