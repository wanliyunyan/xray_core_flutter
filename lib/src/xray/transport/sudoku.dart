part of 'transport.dart';

@freezed
abstract class Sudoku with _$Sudoku implements FinalMaskSettings {
  const factory Sudoku({
    String? password,
    @JsonKey(name: 'ascii') String? ascii,
    String? customTable,
    @JsonKey(name: 'custom_table') String? legacyCustomTable,
    List<String>? customTables,
    @JsonKey(name: 'custom_tables') List<String>? legacyCustomSets,
    int? paddingMin,
    @JsonKey(name: 'padding_min') int? legacyPaddingMin,
    int? paddingMax,
    @JsonKey(name: 'padding_max') int? legacyPaddingMax,
  }) = _Sudoku;

  factory Sudoku.fromJson(Object? json) {
    final map = asJsonMap(json, 'sudoku mask');
    return Sudoku(
      password: map['password'] as String?,
      ascii: map['ascii'] as String?,
      customTable: map['customTable'] as String?,
      legacyCustomTable: map['custom_table'] as String?,
      customTables: (map['customTables'] as List?)?.cast<String>(),
      legacyCustomSets: (map['custom_tables'] as List?)?.cast<String>(),
      paddingMin: map['paddingMin'] as int?,
      legacyPaddingMin: map['padding_min'] as int?,
      paddingMax: map['paddingMax'] as int?,
      legacyPaddingMax: map['padding_max'] as int?,
    );
  }

  const Sudoku._();

  @override
  Map<String, dynamic> toJson() => withoutNulls({
    'password': password,
    'ascii': ascii,
    'customTable': customTable,
    'custom_table': legacyCustomTable,
    'customTables': customTables,
    'custom_tables': legacyCustomSets,
    'paddingMin': paddingMin,
    'padding_min': legacyPaddingMin,
    'paddingMax': paddingMax,
    'padding_max': legacyPaddingMax,
  });
}
