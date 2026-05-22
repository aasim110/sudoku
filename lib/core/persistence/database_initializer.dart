import 'package:isar_community/isar.dart';
import 'package:offline_sudoku/features/achievements/data/models/achievement_record.dart';
import 'package:offline_sudoku/features/daily_challenge/data/models/daily_challenge_record.dart';
import 'package:offline_sudoku/features/gameplay/data/models/game_session_record.dart';
import 'package:offline_sudoku/features/settings/data/models/app_settings_record.dart';
import 'package:offline_sudoku/features/stats/data/models/user_stats_record.dart';
import 'package:offline_sudoku/features/sudoku_engine/data/models/sudoku_puzzle_record.dart';
import 'package:path_provider/path_provider.dart';

abstract final class DatabaseInitializer {
  static const databaseName = 'offline_sudoku';

  static List<CollectionSchema<dynamic>> get schemas => [
    SudokuPuzzleRecordSchema,
    GameSessionRecordSchema,
    UserStatsRecordSchema,
    AppSettingsRecordSchema,
    AchievementRecordSchema,
    DailyChallengeRecordSchema,
  ];

  static Future<Isar> open() async {
    if (Isar.instanceNames.contains(databaseName)) {
      return Future.value(Isar.getInstance(databaseName)!);
    }

    final directory = await getApplicationDocumentsDirectory();

    return Isar.open(schemas, name: databaseName, directory: directory.path);
  }
}
