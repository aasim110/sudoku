// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_stats_record.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUserStatsRecordCollection on Isar {
  IsarCollection<UserStatsRecord> get userStatsRecords => this.collection();
}

const UserStatsRecordSchema = CollectionSchema(
  name: r'UserStatsRecord',
  id: -1246567081664937908,
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'currentDailyStreak': PropertySchema(
      id: 1,
      name: r'currentDailyStreak',
      type: IsarType.long,
    ),
    r'currentWinStreak': PropertySchema(
      id: 2,
      name: r'currentWinStreak',
      type: IsarType.long,
    ),
    r'difficultyStatsJson': PropertySchema(
      id: 3,
      name: r'difficultyStatsJson',
      type: IsarType.string,
    ),
    r'gamesCompleted': PropertySchema(
      id: 4,
      name: r'gamesCompleted',
      type: IsarType.long,
    ),
    r'gamesStarted': PropertySchema(
      id: 5,
      name: r'gamesStarted',
      type: IsarType.long,
    ),
    r'lastCompletedAt': PropertySchema(
      id: 6,
      name: r'lastCompletedAt',
      type: IsarType.dateTime,
    ),
    r'lastDailyCompletedAt': PropertySchema(
      id: 7,
      name: r'lastDailyCompletedAt',
      type: IsarType.dateTime,
    ),
    r'longestDailyStreak': PropertySchema(
      id: 8,
      name: r'longestDailyStreak',
      type: IsarType.long,
    ),
    r'longestWinStreak': PropertySchema(
      id: 9,
      name: r'longestWinStreak',
      type: IsarType.long,
    ),
    r'totalHintsUsed': PropertySchema(
      id: 10,
      name: r'totalHintsUsed',
      type: IsarType.long,
    ),
    r'totalMistakes': PropertySchema(
      id: 11,
      name: r'totalMistakes',
      type: IsarType.long,
    ),
    r'totalPlayTimeSeconds': PropertySchema(
      id: 12,
      name: r'totalPlayTimeSeconds',
      type: IsarType.long,
    ),
    r'updatedAt': PropertySchema(
      id: 13,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'userId': PropertySchema(id: 14, name: r'userId', type: IsarType.string),
  },

  estimateSize: _userStatsRecordEstimateSize,
  serialize: _userStatsRecordSerialize,
  deserialize: _userStatsRecordDeserialize,
  deserializeProp: _userStatsRecordDeserializeProp,
  idName: r'id',
  indexes: {
    r'userId': IndexSchema(
      id: -2005826577402374815,
      name: r'userId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'userId',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _userStatsRecordGetId,
  getLinks: _userStatsRecordGetLinks,
  attach: _userStatsRecordAttach,
  version: '3.3.2',
);

int _userStatsRecordEstimateSize(
  UserStatsRecord object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.difficultyStatsJson.length * 3;
  bytesCount += 3 + object.userId.length * 3;
  return bytesCount;
}

void _userStatsRecordSerialize(
  UserStatsRecord object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeLong(offsets[1], object.currentDailyStreak);
  writer.writeLong(offsets[2], object.currentWinStreak);
  writer.writeString(offsets[3], object.difficultyStatsJson);
  writer.writeLong(offsets[4], object.gamesCompleted);
  writer.writeLong(offsets[5], object.gamesStarted);
  writer.writeDateTime(offsets[6], object.lastCompletedAt);
  writer.writeDateTime(offsets[7], object.lastDailyCompletedAt);
  writer.writeLong(offsets[8], object.longestDailyStreak);
  writer.writeLong(offsets[9], object.longestWinStreak);
  writer.writeLong(offsets[10], object.totalHintsUsed);
  writer.writeLong(offsets[11], object.totalMistakes);
  writer.writeLong(offsets[12], object.totalPlayTimeSeconds);
  writer.writeDateTime(offsets[13], object.updatedAt);
  writer.writeString(offsets[14], object.userId);
}

UserStatsRecord _userStatsRecordDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UserStatsRecord();
  object.createdAt = reader.readDateTime(offsets[0]);
  object.currentDailyStreak = reader.readLong(offsets[1]);
  object.currentWinStreak = reader.readLong(offsets[2]);
  object.difficultyStatsJson = reader.readString(offsets[3]);
  object.gamesCompleted = reader.readLong(offsets[4]);
  object.gamesStarted = reader.readLong(offsets[5]);
  object.id = id;
  object.lastCompletedAt = reader.readDateTimeOrNull(offsets[6]);
  object.lastDailyCompletedAt = reader.readDateTimeOrNull(offsets[7]);
  object.longestDailyStreak = reader.readLong(offsets[8]);
  object.longestWinStreak = reader.readLong(offsets[9]);
  object.totalHintsUsed = reader.readLong(offsets[10]);
  object.totalMistakes = reader.readLong(offsets[11]);
  object.totalPlayTimeSeconds = reader.readLong(offsets[12]);
  object.updatedAt = reader.readDateTime(offsets[13]);
  object.userId = reader.readString(offsets[14]);
  return object;
}

P _userStatsRecordDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 7:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readLong(offset)) as P;
    case 11:
      return (reader.readLong(offset)) as P;
    case 12:
      return (reader.readLong(offset)) as P;
    case 13:
      return (reader.readDateTime(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _userStatsRecordGetId(UserStatsRecord object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _userStatsRecordGetLinks(UserStatsRecord object) {
  return [];
}

void _userStatsRecordAttach(
  IsarCollection<dynamic> col,
  Id id,
  UserStatsRecord object,
) {
  object.id = id;
}

extension UserStatsRecordByIndex on IsarCollection<UserStatsRecord> {
  Future<UserStatsRecord?> getByUserId(String userId) {
    return getByIndex(r'userId', [userId]);
  }

  UserStatsRecord? getByUserIdSync(String userId) {
    return getByIndexSync(r'userId', [userId]);
  }

  Future<bool> deleteByUserId(String userId) {
    return deleteByIndex(r'userId', [userId]);
  }

  bool deleteByUserIdSync(String userId) {
    return deleteByIndexSync(r'userId', [userId]);
  }

  Future<List<UserStatsRecord?>> getAllByUserId(List<String> userIdValues) {
    final values = userIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'userId', values);
  }

  List<UserStatsRecord?> getAllByUserIdSync(List<String> userIdValues) {
    final values = userIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'userId', values);
  }

  Future<int> deleteAllByUserId(List<String> userIdValues) {
    final values = userIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'userId', values);
  }

  int deleteAllByUserIdSync(List<String> userIdValues) {
    final values = userIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'userId', values);
  }

  Future<Id> putByUserId(UserStatsRecord object) {
    return putByIndex(r'userId', object);
  }

  Id putByUserIdSync(UserStatsRecord object, {bool saveLinks = true}) {
    return putByIndexSync(r'userId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByUserId(List<UserStatsRecord> objects) {
    return putAllByIndex(r'userId', objects);
  }

  List<Id> putAllByUserIdSync(
    List<UserStatsRecord> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(r'userId', objects, saveLinks: saveLinks);
  }
}

extension UserStatsRecordQueryWhereSort
    on QueryBuilder<UserStatsRecord, UserStatsRecord, QWhere> {
  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UserStatsRecordQueryWhere
    on QueryBuilder<UserStatsRecord, UserStatsRecord, QWhereClause> {
  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterWhereClause> idEqualTo(
    Id id,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterWhereClause>
  idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterWhereClause>
  idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterWhereClause>
  userIdEqualTo(String userId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'userId', value: [userId]),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterWhereClause>
  userIdNotEqualTo(String userId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'userId',
                lower: [],
                upper: [userId],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'userId',
                lower: [userId],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'userId',
                lower: [userId],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'userId',
                lower: [],
                upper: [userId],
                includeUpper: false,
              ),
            );
      }
    });
  }
}

extension UserStatsRecordQueryFilter
    on QueryBuilder<UserStatsRecord, UserStatsRecord, QFilterCondition> {
  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'createdAt', value: value),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  createdAtGreaterThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'createdAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  createdAtLessThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'createdAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'createdAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  currentDailyStreakEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'currentDailyStreak', value: value),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  currentDailyStreakGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'currentDailyStreak',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  currentDailyStreakLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'currentDailyStreak',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  currentDailyStreakBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'currentDailyStreak',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  currentWinStreakEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'currentWinStreak', value: value),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  currentWinStreakGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'currentWinStreak',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  currentWinStreakLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'currentWinStreak',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  currentWinStreakBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'currentWinStreak',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  difficultyStatsJsonEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'difficultyStatsJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  difficultyStatsJsonGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'difficultyStatsJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  difficultyStatsJsonLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'difficultyStatsJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  difficultyStatsJsonBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'difficultyStatsJson',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  difficultyStatsJsonStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'difficultyStatsJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  difficultyStatsJsonEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'difficultyStatsJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  difficultyStatsJsonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'difficultyStatsJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  difficultyStatsJsonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'difficultyStatsJson',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  difficultyStatsJsonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'difficultyStatsJson', value: ''),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  difficultyStatsJsonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          property: r'difficultyStatsJson',
          value: '',
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  gamesCompletedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'gamesCompleted', value: value),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  gamesCompletedGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'gamesCompleted',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  gamesCompletedLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'gamesCompleted',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  gamesCompletedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'gamesCompleted',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  gamesStartedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'gamesStarted', value: value),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  gamesStartedGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'gamesStarted',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  gamesStartedLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'gamesStarted',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  gamesStartedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'gamesStarted',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  idGreaterThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  idLessThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  lastCompletedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'lastCompletedAt'),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  lastCompletedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'lastCompletedAt'),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  lastCompletedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'lastCompletedAt', value: value),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  lastCompletedAtGreaterThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'lastCompletedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  lastCompletedAtLessThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'lastCompletedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  lastCompletedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'lastCompletedAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  lastDailyCompletedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'lastDailyCompletedAt'),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  lastDailyCompletedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'lastDailyCompletedAt'),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  lastDailyCompletedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'lastDailyCompletedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  lastDailyCompletedAtGreaterThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'lastDailyCompletedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  lastDailyCompletedAtLessThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'lastDailyCompletedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  lastDailyCompletedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'lastDailyCompletedAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  longestDailyStreakEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'longestDailyStreak', value: value),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  longestDailyStreakGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'longestDailyStreak',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  longestDailyStreakLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'longestDailyStreak',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  longestDailyStreakBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'longestDailyStreak',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  longestWinStreakEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'longestWinStreak', value: value),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  longestWinStreakGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'longestWinStreak',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  longestWinStreakLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'longestWinStreak',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  longestWinStreakBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'longestWinStreak',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  totalHintsUsedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'totalHintsUsed', value: value),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  totalHintsUsedGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'totalHintsUsed',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  totalHintsUsedLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'totalHintsUsed',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  totalHintsUsedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'totalHintsUsed',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  totalMistakesEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'totalMistakes', value: value),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  totalMistakesGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'totalMistakes',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  totalMistakesLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'totalMistakes',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  totalMistakesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'totalMistakes',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  totalPlayTimeSecondsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'totalPlayTimeSeconds',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  totalPlayTimeSecondsGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'totalPlayTimeSeconds',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  totalPlayTimeSecondsLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'totalPlayTimeSeconds',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  totalPlayTimeSecondsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'totalPlayTimeSeconds',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  updatedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'updatedAt', value: value),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  updatedAtGreaterThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'updatedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  updatedAtLessThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'updatedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'updatedAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  userIdEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'userId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  userIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'userId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  userIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'userId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  userIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'userId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  userIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'userId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  userIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'userId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  userIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'userId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  userIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'userId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  userIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'userId', value: ''),
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterFilterCondition>
  userIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'userId', value: ''),
      );
    });
  }
}

extension UserStatsRecordQueryObject
    on QueryBuilder<UserStatsRecord, UserStatsRecord, QFilterCondition> {}

extension UserStatsRecordQueryLinks
    on QueryBuilder<UserStatsRecord, UserStatsRecord, QFilterCondition> {}

extension UserStatsRecordQuerySortBy
    on QueryBuilder<UserStatsRecord, UserStatsRecord, QSortBy> {
  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  sortByCurrentDailyStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentDailyStreak', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  sortByCurrentDailyStreakDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentDailyStreak', Sort.desc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  sortByCurrentWinStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentWinStreak', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  sortByCurrentWinStreakDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentWinStreak', Sort.desc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  sortByDifficultyStatsJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'difficultyStatsJson', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  sortByDifficultyStatsJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'difficultyStatsJson', Sort.desc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  sortByGamesCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gamesCompleted', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  sortByGamesCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gamesCompleted', Sort.desc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  sortByGamesStarted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gamesStarted', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  sortByGamesStartedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gamesStarted', Sort.desc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  sortByLastCompletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastCompletedAt', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  sortByLastCompletedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastCompletedAt', Sort.desc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  sortByLastDailyCompletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDailyCompletedAt', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  sortByLastDailyCompletedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDailyCompletedAt', Sort.desc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  sortByLongestDailyStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longestDailyStreak', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  sortByLongestDailyStreakDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longestDailyStreak', Sort.desc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  sortByLongestWinStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longestWinStreak', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  sortByLongestWinStreakDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longestWinStreak', Sort.desc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  sortByTotalHintsUsed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalHintsUsed', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  sortByTotalHintsUsedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalHintsUsed', Sort.desc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  sortByTotalMistakes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalMistakes', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  sortByTotalMistakesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalMistakes', Sort.desc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  sortByTotalPlayTimeSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPlayTimeSeconds', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  sortByTotalPlayTimeSecondsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPlayTimeSeconds', Sort.desc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy> sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension UserStatsRecordQuerySortThenBy
    on QueryBuilder<UserStatsRecord, UserStatsRecord, QSortThenBy> {
  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  thenByCurrentDailyStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentDailyStreak', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  thenByCurrentDailyStreakDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentDailyStreak', Sort.desc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  thenByCurrentWinStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentWinStreak', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  thenByCurrentWinStreakDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentWinStreak', Sort.desc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  thenByDifficultyStatsJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'difficultyStatsJson', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  thenByDifficultyStatsJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'difficultyStatsJson', Sort.desc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  thenByGamesCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gamesCompleted', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  thenByGamesCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gamesCompleted', Sort.desc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  thenByGamesStarted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gamesStarted', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  thenByGamesStartedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gamesStarted', Sort.desc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  thenByLastCompletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastCompletedAt', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  thenByLastCompletedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastCompletedAt', Sort.desc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  thenByLastDailyCompletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDailyCompletedAt', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  thenByLastDailyCompletedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDailyCompletedAt', Sort.desc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  thenByLongestDailyStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longestDailyStreak', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  thenByLongestDailyStreakDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longestDailyStreak', Sort.desc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  thenByLongestWinStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longestWinStreak', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  thenByLongestWinStreakDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longestWinStreak', Sort.desc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  thenByTotalHintsUsed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalHintsUsed', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  thenByTotalHintsUsedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalHintsUsed', Sort.desc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  thenByTotalMistakes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalMistakes', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  thenByTotalMistakesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalMistakes', Sort.desc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  thenByTotalPlayTimeSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPlayTimeSeconds', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  thenByTotalPlayTimeSecondsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPlayTimeSeconds', Sort.desc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy> thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QAfterSortBy>
  thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension UserStatsRecordQueryWhereDistinct
    on QueryBuilder<UserStatsRecord, UserStatsRecord, QDistinct> {
  QueryBuilder<UserStatsRecord, UserStatsRecord, QDistinct>
  distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QDistinct>
  distinctByCurrentDailyStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currentDailyStreak');
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QDistinct>
  distinctByCurrentWinStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currentWinStreak');
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QDistinct>
  distinctByDifficultyStatsJson({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(
        r'difficultyStatsJson',
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QDistinct>
  distinctByGamesCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gamesCompleted');
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QDistinct>
  distinctByGamesStarted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gamesStarted');
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QDistinct>
  distinctByLastCompletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastCompletedAt');
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QDistinct>
  distinctByLastDailyCompletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastDailyCompletedAt');
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QDistinct>
  distinctByLongestDailyStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'longestDailyStreak');
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QDistinct>
  distinctByLongestWinStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'longestWinStreak');
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QDistinct>
  distinctByTotalHintsUsed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalHintsUsed');
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QDistinct>
  distinctByTotalMistakes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalMistakes');
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QDistinct>
  distinctByTotalPlayTimeSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalPlayTimeSeconds');
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QDistinct>
  distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<UserStatsRecord, UserStatsRecord, QDistinct> distinctByUserId({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userId', caseSensitive: caseSensitive);
    });
  }
}

extension UserStatsRecordQueryProperty
    on QueryBuilder<UserStatsRecord, UserStatsRecord, QQueryProperty> {
  QueryBuilder<UserStatsRecord, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<UserStatsRecord, DateTime, QQueryOperations>
  createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<UserStatsRecord, int, QQueryOperations>
  currentDailyStreakProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currentDailyStreak');
    });
  }

  QueryBuilder<UserStatsRecord, int, QQueryOperations>
  currentWinStreakProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currentWinStreak');
    });
  }

  QueryBuilder<UserStatsRecord, String, QQueryOperations>
  difficultyStatsJsonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'difficultyStatsJson');
    });
  }

  QueryBuilder<UserStatsRecord, int, QQueryOperations>
  gamesCompletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gamesCompleted');
    });
  }

  QueryBuilder<UserStatsRecord, int, QQueryOperations> gamesStartedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gamesStarted');
    });
  }

  QueryBuilder<UserStatsRecord, DateTime?, QQueryOperations>
  lastCompletedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastCompletedAt');
    });
  }

  QueryBuilder<UserStatsRecord, DateTime?, QQueryOperations>
  lastDailyCompletedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastDailyCompletedAt');
    });
  }

  QueryBuilder<UserStatsRecord, int, QQueryOperations>
  longestDailyStreakProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'longestDailyStreak');
    });
  }

  QueryBuilder<UserStatsRecord, int, QQueryOperations>
  longestWinStreakProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'longestWinStreak');
    });
  }

  QueryBuilder<UserStatsRecord, int, QQueryOperations>
  totalHintsUsedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalHintsUsed');
    });
  }

  QueryBuilder<UserStatsRecord, int, QQueryOperations> totalMistakesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalMistakes');
    });
  }

  QueryBuilder<UserStatsRecord, int, QQueryOperations>
  totalPlayTimeSecondsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalPlayTimeSeconds');
    });
  }

  QueryBuilder<UserStatsRecord, DateTime, QQueryOperations>
  updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<UserStatsRecord, String, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }
}
