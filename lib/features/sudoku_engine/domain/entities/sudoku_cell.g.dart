// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sudoku_cell.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SudokuCell _$SudokuCellFromJson(Map<String, dynamic> json) => _SudokuCell(
  index: (json['index'] as num).toInt(),
  row: (json['row'] as num).toInt(),
  column: (json['column'] as num).toInt(),
  box: (json['box'] as num).toInt(),
  solution: (json['solution'] as num).toInt(),
  value: (json['value'] as num?)?.toInt(),
  isGiven: json['isGiven'] as bool? ?? false,
  notes:
      (json['notes'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const <int>[],
);

Map<String, dynamic> _$SudokuCellToJson(_SudokuCell instance) =>
    <String, dynamic>{
      'index': instance.index,
      'row': instance.row,
      'column': instance.column,
      'box': instance.box,
      'solution': instance.solution,
      'value': instance.value,
      'isGiven': instance.isGiven,
      'notes': instance.notes,
    };
