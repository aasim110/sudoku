import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offline_sudoku/core/persistence/persistence_providers.dart';
import 'package:offline_sudoku/features/daily_challenge/domain/entities/daily_challenge.dart';
import 'package:offline_sudoku/features/sudoku_engine/application/providers/sudoku_engine_providers.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/entities/sudoku_puzzle.dart';

final dailyChallengeControllerProvider =
    AsyncNotifierProvider<DailyChallengeController, DailyChallenge?>(
      DailyChallengeController.new,
    );

final dailyChallengeStatusProvider = Provider<DailyChallengeStatus?>((ref) {
  return ref.watch(
    dailyChallengeControllerProvider.select(
      (state) => state.asData?.value?.status,
    ),
  );
});

final dailyChallengeCompletedProvider = Provider<bool>((ref) {
  return ref.watch(
    dailyChallengeControllerProvider.select(
      (state) => state.asData?.value?.isCompleted ?? false,
    ),
  );
});

final class DailyChallengeController extends AsyncNotifier<DailyChallenge?> {
  @override
  Future<DailyChallenge?> build() {
    return ref
        .read(dailyChallengeRepositoryProvider)
        .getChallengeForDate(DateTime.now().toUtc());
  }

  Future<DailyChallenge> loadOrCreateForDate(DateTime date) async {
    final normalizedDate = DateTime.utc(date.year, date.month, date.day);
    final existing = await ref
        .read(dailyChallengeRepositoryProvider)
        .getChallengeForDate(normalizedDate);
    if (existing != null) {
      state = AsyncData(existing);
      return existing;
    }

    final now = DateTime.now().toUtc();
    final difficulty = _difficultyForDate(normalizedDate);
    final puzzle = ref
        .read(sudokuPuzzleGeneratorProvider)
        .generate(
          difficulty: difficulty,
          seed: 'daily-${normalizedDate.toIso8601String()}',
          createdAt: now,
        );
    final challenge = DailyChallenge(
      id: 'daily-${normalizedDate.toIso8601String()}',
      challengeDate: normalizedDate,
      puzzle: puzzle.copyWith(source: SudokuPuzzleSource.dailyChallenge),
      status: DailyChallengeStatus.available,
      createdAt: now,
      updatedAt: now,
    );

    state = AsyncData(challenge);
    unawaited(
      ref.read(dailyChallengeRepositoryProvider).saveChallenge(challenge),
    );
    return challenge;
  }

  void updateChallenge(
    DailyChallenge Function(DailyChallenge challenge) update,
  ) {
    final current = state.asData?.value;
    if (current == null) {
      return;
    }

    final updated = update(current).copyWith(updatedAt: DateTime.now().toUtc());
    state = AsyncData(updated);
    unawaited(
      ref.read(dailyChallengeRepositoryProvider).saveChallenge(updated),
    );
  }

  SudokuDifficulty _difficultyForDate(DateTime date) {
    final index =
        date.difference(DateTime.utc(2026)).inDays.abs() %
        SudokuDifficulty.values.length;
    return SudokuDifficulty.values[index];
  }
}
