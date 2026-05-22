// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hint_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HintResult _$HintResultFromJson(Map<String, dynamic> json) => _HintResult(
  type: $enumDecode(_$HintTypeEnumMap, json['type']),
  title: json['title'] as String,
  explanation: json['explanation'] as String,
  cellIndex: (json['cellIndex'] as num?)?.toInt(),
  value: (json['value'] as num?)?.toInt(),
  candidates:
      (json['candidates'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const <int>[],
  affectedCellIndexes:
      (json['affectedCellIndexes'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const <int>[],
  eliminatedCandidates:
      (json['eliminatedCandidates'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const <int>[],
  cost: (json['cost'] as num?)?.toInt() ?? 1,
  changesBoard: json['changesBoard'] as bool? ?? false,
);

Map<String, dynamic> _$HintResultToJson(_HintResult instance) =>
    <String, dynamic>{
      'type': _$HintTypeEnumMap[instance.type]!,
      'title': instance.title,
      'explanation': instance.explanation,
      'cellIndex': instance.cellIndex,
      'value': instance.value,
      'candidates': instance.candidates,
      'affectedCellIndexes': instance.affectedCellIndexes,
      'eliminatedCandidates': instance.eliminatedCandidates,
      'cost': instance.cost,
      'changesBoard': instance.changesBoard,
    };

const _$HintTypeEnumMap = {
  HintType.revealCell: 'revealCell',
  HintType.showCandidates: 'showCandidates',
  HintType.eliminateCandidate: 'eliminateCandidate',
  HintType.nakedSingle: 'nakedSingle',
  HintType.hiddenSingle: 'hiddenSingle',
  HintType.nakedPair: 'nakedPair',
  HintType.pointingPair: 'pointingPair',
  HintType.boxLineReduction: 'boxLineReduction',
};
