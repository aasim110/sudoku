// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameMove _$GameMoveFromJson(Map<String, dynamic> json) => _GameMove(
  id: json['id'] as String,
  type: $enumDecode(_$GameMoveTypeEnumMap, json['type']),
  cellIndex: (json['cellIndex'] as num).toInt(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  previousValue: (json['previousValue'] as num?)?.toInt(),
  nextValue: (json['nextValue'] as num?)?.toInt(),
  previousNotes:
      (json['previousNotes'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const <int>[],
  nextNotes:
      (json['nextNotes'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const <int>[],
  hint: json['hint'] == null
      ? null
      : HintResult.fromJson(json['hint'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GameMoveToJson(_GameMove instance) => <String, dynamic>{
  'id': instance.id,
  'type': _$GameMoveTypeEnumMap[instance.type]!,
  'cellIndex': instance.cellIndex,
  'createdAt': instance.createdAt.toIso8601String(),
  'previousValue': instance.previousValue,
  'nextValue': instance.nextValue,
  'previousNotes': instance.previousNotes,
  'nextNotes': instance.nextNotes,
  'hint': instance.hint,
};

const _$GameMoveTypeEnumMap = {
  GameMoveType.placeNumber: 'placeNumber',
  GameMoveType.eraseNumber: 'eraseNumber',
  GameMoveType.addNote: 'addNote',
  GameMoveType.removeNote: 'removeNote',
  GameMoveType.clearNotes: 'clearNotes',
  GameMoveType.applyHint: 'applyHint',
};

_GameSession _$GameSessionFromJson(Map<String, dynamic> json) => _GameSession(
  id: json['id'] as String,
  puzzle: SudokuPuzzle.fromJson(json['puzzle'] as Map<String, dynamic>),
  cells: (json['cells'] as List<dynamic>)
      .map((e) => SudokuCell.fromJson(e as Map<String, dynamic>))
      .toList(),
  status: $enumDecode(_$GameSessionStatusEnumMap, json['status']),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  startedAt: json['startedAt'] == null
      ? null
      : DateTime.parse(json['startedAt'] as String),
  completedAt: json['completedAt'] == null
      ? null
      : DateTime.parse(json['completedAt'] as String),
  selectedCellIndex: (json['selectedCellIndex'] as num?)?.toInt(),
  elapsedTime: json['elapsedTime'] == null
      ? Duration.zero
      : const DurationSecondsConverter().fromJson(
          (json['elapsedTime'] as num).toInt(),
        ),
  notesModeEnabled: json['notesModeEnabled'] as bool? ?? false,
  mistakeCount: (json['mistakeCount'] as num?)?.toInt() ?? 0,
  mistakeLimit: (json['mistakeLimit'] as num?)?.toInt() ?? 3,
  hintCount: (json['hintCount'] as num?)?.toInt() ?? 0,
  isDailyChallenge: json['isDailyChallenge'] as bool? ?? false,
  undoStack:
      (json['undoStack'] as List<dynamic>?)
          ?.map((e) => GameMove.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <GameMove>[],
  redoStack:
      (json['redoStack'] as List<dynamic>?)
          ?.map((e) => GameMove.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <GameMove>[],
);

Map<String, dynamic> _$GameSessionToJson(
  _GameSession instance,
) => <String, dynamic>{
  'id': instance.id,
  'puzzle': instance.puzzle,
  'cells': instance.cells,
  'status': _$GameSessionStatusEnumMap[instance.status]!,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'startedAt': instance.startedAt?.toIso8601String(),
  'completedAt': instance.completedAt?.toIso8601String(),
  'selectedCellIndex': instance.selectedCellIndex,
  'elapsedTime': const DurationSecondsConverter().toJson(instance.elapsedTime),
  'notesModeEnabled': instance.notesModeEnabled,
  'mistakeCount': instance.mistakeCount,
  'mistakeLimit': instance.mistakeLimit,
  'hintCount': instance.hintCount,
  'isDailyChallenge': instance.isDailyChallenge,
  'undoStack': instance.undoStack,
  'redoStack': instance.redoStack,
};

const _$GameSessionStatusEnumMap = {
  GameSessionStatus.notStarted: 'notStarted',
  GameSessionStatus.playing: 'playing',
  GameSessionStatus.paused: 'paused',
  GameSessionStatus.completed: 'completed',
  GameSessionStatus.failed: 'failed',
  GameSessionStatus.abandoned: 'abandoned',
};
