import 'package:offline_sudoku/features/achievements/domain/entities/achievement.dart';
import 'package:offline_sudoku/features/achievements/domain/repositories/achievement_repository.dart';
import 'package:offline_sudoku/features/daily_challenge/domain/entities/daily_challenge.dart';
import 'package:offline_sudoku/features/daily_challenge/domain/repositories/daily_challenge_repository.dart';
import 'package:offline_sudoku/features/gameplay/domain/entities/game_session.dart';
import 'package:offline_sudoku/features/gameplay/domain/repositories/game_session_repository.dart';
import 'package:offline_sudoku/features/settings/domain/entities/app_settings.dart';
import 'package:offline_sudoku/features/settings/domain/repositories/app_settings_repository.dart';
import 'package:offline_sudoku/features/stats/domain/entities/user_stats.dart';
import 'package:offline_sudoku/features/stats/domain/repositories/user_stats_repository.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/entities/sudoku_puzzle.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/repositories/sudoku_puzzle_repository.dart';
import 'package:offline_sudoku/features/sudoku_engine/domain/services/sudoku_generator.dart';

const solvedGrid = <int>[
  5,
  3,
  4,
  6,
  7,
  8,
  9,
  1,
  2,
  6,
  7,
  2,
  1,
  9,
  5,
  3,
  4,
  8,
  1,
  9,
  8,
  3,
  4,
  2,
  5,
  6,
  7,
  8,
  5,
  9,
  7,
  6,
  1,
  4,
  2,
  3,
  4,
  2,
  6,
  8,
  5,
  3,
  7,
  9,
  1,
  7,
  1,
  3,
  9,
  2,
  4,
  8,
  5,
  6,
  9,
  6,
  1,
  5,
  3,
  7,
  2,
  8,
  4,
  2,
  8,
  7,
  4,
  1,
  9,
  6,
  3,
  5,
  3,
  4,
  5,
  2,
  8,
  6,
  1,
  7,
  9,
];

SudokuPuzzle fakePuzzle({SudokuDifficulty difficulty = SudokuDifficulty.easy}) {
  final initial = solvedGrid.cast<int?>().toList(growable: false);
  initial[2] = null;

  return SudokuPuzzle(
    id: 'fake-${difficulty.name}',
    initialGrid: initial,
    solutionGrid: solvedGrid,
    difficulty: difficulty,
    source: SudokuPuzzleSource.generated,
    createdAt: DateTime.utc(2026, 5, 22),
    seed: 'fake',
  );
}

final class FakeSudokuPuzzleGenerator implements SudokuPuzzleGenerator {
  @override
  SudokuPuzzle generate({
    required SudokuDifficulty difficulty,
    String? seed,
    DateTime? createdAt,
  }) {
    return fakePuzzle(
      difficulty: difficulty,
    ).copyWith(createdAt: createdAt ?? DateTime.utc(2026, 5, 22), seed: seed);
  }

  @override
  List<int> generateSolvedBoard({String? seed}) => solvedGrid;
}

final class FakeSudokuPuzzleRepository implements SudokuPuzzleRepository {
  final Map<String, SudokuPuzzle> puzzles = {};

  @override
  Future<void> savePuzzle(SudokuPuzzle puzzle) async {
    puzzles[puzzle.id] = puzzle;
  }

  @override
  Future<SudokuPuzzle?> getPuzzle(String id) async => puzzles[id];

  @override
  Future<List<SudokuPuzzle>> getCachedPuzzles({
    SudokuDifficulty? difficulty,
    int limit = 50,
  }) async {
    return puzzles.values
        .where(
          (puzzle) => difficulty == null || puzzle.difficulty == difficulty,
        )
        .take(limit)
        .toList(growable: false);
  }

  @override
  Future<void> deletePuzzle(String id) async {
    puzzles.remove(id);
  }
}

final class FakeGameSessionRepository implements GameSessionRepository {
  final Map<String, GameSession> sessions = {};

  @override
  Future<void> saveSession(GameSession session) async {
    sessions[session.id] = session;
  }

  @override
  Future<GameSession?> getSession(String id) async => sessions[id];

  @override
  Future<GameSession?> getCurrentSession() async {
    final active = await getActiveSessions();
    return active.isEmpty ? null : active.last;
  }

  @override
  Future<List<GameSession>> getActiveSessions() async {
    return sessions.values.where((session) => session.isActive).toList();
  }

  @override
  Future<void> deleteSession(String id) async {
    sessions.remove(id);
  }
}

final class FakeAppSettingsRepository implements AppSettingsRepository {
  AppSettings? saved;

  @override
  Future<void> saveSettings(AppSettings settings) async {
    saved = settings;
  }

  @override
  Future<AppSettings?> getSettings(String id) async => saved;
}

final class FakeUserStatsRepository implements UserStatsRepository {
  UserStats? saved;

  @override
  Future<void> saveStats(UserStats stats) async {
    saved = stats;
  }

  @override
  Future<UserStats?> getStats(String userId) async => saved;
}

final class FakeAchievementRepository implements AchievementRepository {
  final Map<String, Achievement> achievements = {};

  @override
  Future<void> saveAchievement(Achievement achievement) async {
    achievements[achievement.id] = achievement;
  }

  @override
  Future<void> saveAchievements(List<Achievement> achievements) async {
    for (final achievement in achievements) {
      this.achievements[achievement.id] = achievement;
    }
  }

  @override
  Future<Achievement?> getAchievement(String id) async => achievements[id];

  @override
  Future<List<Achievement>> getAchievements() async {
    return achievements.values.toList(growable: false);
  }

  @override
  Future<List<Achievement>> getUnlockedAchievements() async {
    return achievements.values
        .where((achievement) => achievement.isUnlocked)
        .toList(growable: false);
  }
}

final class FakeDailyChallengeRepository implements DailyChallengeRepository {
  final Map<String, DailyChallenge> challenges = {};

  @override
  Future<void> saveChallenge(DailyChallenge challenge) async {
    challenges[challenge.id] = challenge;
  }

  @override
  Future<DailyChallenge?> getChallenge(String id) async => challenges[id];

  @override
  Future<DailyChallenge?> getChallengeForDate(DateTime date) async {
    final normalized = DateTime.utc(date.year, date.month, date.day);
    for (final challenge in challenges.values) {
      final challengeDate = DateTime.utc(
        challenge.challengeDate.year,
        challenge.challengeDate.month,
        challenge.challengeDate.day,
      );
      if (challengeDate == normalized) {
        return challenge;
      }
    }
    return null;
  }

  @override
  Future<List<DailyChallenge>> getChallenges({int limit = 30}) async {
    return challenges.values.take(limit).toList(growable: false);
  }
}
