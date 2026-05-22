// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sudoku_puzzle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SudokuPuzzle _$SudokuPuzzleFromJson(Map<String, dynamic> json) =>
    _SudokuPuzzle(
      id: json['id'] as String,
      initialGrid: (json['initialGrid'] as List<dynamic>)
          .map((e) => (e as num?)?.toInt())
          .toList(),
      solutionGrid: (json['solutionGrid'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      difficulty: $enumDecode(_$SudokuDifficultyEnumMap, json['difficulty']),
      source: $enumDecode(_$SudokuPuzzleSourceEnumMap, json['source']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      seed: json['seed'] as String?,
      rating: (json['rating'] as num?)?.toInt() ?? 0,
      generatorVersion: (json['generatorVersion'] as num?)?.toInt() ?? 1,
      metadata:
          json['metadata'] as Map<String, dynamic>? ??
          const <String, Object?>{},
    );

Map<String, dynamic> _$SudokuPuzzleToJson(_SudokuPuzzle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'initialGrid': instance.initialGrid,
      'solutionGrid': instance.solutionGrid,
      'difficulty': _$SudokuDifficultyEnumMap[instance.difficulty]!,
      'source': _$SudokuPuzzleSourceEnumMap[instance.source]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'seed': instance.seed,
      'rating': instance.rating,
      'generatorVersion': instance.generatorVersion,
      'metadata': instance.metadata,
    };

const _$SudokuDifficultyEnumMap = {
  SudokuDifficulty.easy: 'easy',
  SudokuDifficulty.medium: 'medium',
  SudokuDifficulty.hard: 'hard',
  SudokuDifficulty.expert: 'expert',
  SudokuDifficulty.master: 'master',
};

const _$SudokuPuzzleSourceEnumMap = {
  SudokuPuzzleSource.generated: 'generated',
  SudokuPuzzleSource.dailyChallenge: 'dailyChallenge',
  SudokuPuzzleSource.imported: 'imported',
  SudokuPuzzleSource.cached: 'cached',
};
