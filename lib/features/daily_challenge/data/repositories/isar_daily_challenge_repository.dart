import 'package:offline_sudoku/features/daily_challenge/data/datasources/daily_challenge_local_data_source.dart';
import 'package:offline_sudoku/features/daily_challenge/data/models/daily_challenge_record.dart';
import 'package:offline_sudoku/features/daily_challenge/domain/entities/daily_challenge.dart';
import 'package:offline_sudoku/features/daily_challenge/domain/repositories/daily_challenge_repository.dart';

final class IsarDailyChallengeRepository implements DailyChallengeRepository {
  const IsarDailyChallengeRepository(this._localDataSource);

  final DailyChallengeLocalDataSource _localDataSource;

  @override
  Future<void> saveChallenge(DailyChallenge challenge) {
    return _localDataSource.put(DailyChallengeRecord.fromDomain(challenge));
  }

  @override
  Future<DailyChallenge?> getChallenge(String id) async {
    return (await _localDataSource.get(id))?.toDomain();
  }

  @override
  Future<DailyChallenge?> getChallengeForDate(DateTime date) async {
    return (await _localDataSource.getByDate(date))?.toDomain();
  }

  @override
  Future<List<DailyChallenge>> getChallenges({int limit = 30}) async {
    final records = await _localDataSource.getRecent(limit: limit);
    return records.map((record) => record.toDomain()).toList(growable: false);
  }
}
