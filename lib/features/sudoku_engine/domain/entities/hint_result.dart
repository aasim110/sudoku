import 'package:freezed_annotation/freezed_annotation.dart';

part 'hint_result.freezed.dart';
part 'hint_result.g.dart';

enum HintType {
  revealCell,
  showCandidates,
  eliminateCandidate,
  nakedSingle,
  hiddenSingle,
  nakedPair,
  pointingPair,
  boxLineReduction,
}

@freezed
abstract class HintResult with _$HintResult {
  const factory HintResult({
    required HintType type,
    required String title,
    required String explanation,
    int? cellIndex,
    int? value,
    @Default(<int>[]) List<int> candidates,
    @Default(<int>[]) List<int> affectedCellIndexes,
    @Default(<int>[]) List<int> eliminatedCandidates,
    @Default(1) int cost,
    @Default(false) bool changesBoard,
  }) = _HintResult;

  const HintResult._();

  factory HintResult.fromJson(Map<String, dynamic> json) =>
      _$HintResultFromJson(json);

  bool get hasTargetCell => cellIndex != null;
}
