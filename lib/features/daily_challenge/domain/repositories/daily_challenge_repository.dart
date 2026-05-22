import 'package:offline_sudoku/features/daily_challenge/domain/entities/daily_challenge.dart';

abstract interface class DailyChallengeRepository {
  Future<void> saveChallenge(DailyChallenge challenge);

  Future<DailyChallenge?> getChallenge(String id);

  Future<DailyChallenge?> getChallengeForDate(DateTime date);

  Future<List<DailyChallenge>> getChallenges({int limit = 30});
}
