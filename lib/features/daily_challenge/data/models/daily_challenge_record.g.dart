// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_challenge_record.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDailyChallengeRecordCollection on Isar {
  IsarCollection<DailyChallengeRecord> get dailyChallengeRecords =>
      this.collection();
}

const DailyChallengeRecordSchema = CollectionSchema(
  name: r'DailyChallengeRecord',
  id: 7095255563589121008,
  properties: {
    r'activeSessionId': PropertySchema(
      id: 0,
      name: r'activeSessionId',
      type: IsarType.string,
    ),
    r'challengeDate': PropertySchema(
      id: 1,
      name: r'challengeDate',
      type: IsarType.dateTime,
    ),
    r'challengeId': PropertySchema(
      id: 2,
      name: r'challengeId',
      type: IsarType.string,
    ),
    r'completedAt': PropertySchema(
      id: 3,
      name: r'completedAt',
      type: IsarType.dateTime,
    ),
    r'completionTimeSeconds': PropertySchema(
      id: 4,
      name: r'completionTimeSeconds',
      type: IsarType.long,
    ),
    r'createdAt': PropertySchema(
      id: 5,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'generatorVersion': PropertySchema(
      id: 6,
      name: r'generatorVersion',
      type: IsarType.long,
    ),
    r'hintsUsed': PropertySchema(
      id: 7,
      name: r'hintsUsed',
      type: IsarType.long,
    ),
    r'mistakes': PropertySchema(id: 8, name: r'mistakes', type: IsarType.long),
    r'puzzleJson': PropertySchema(
      id: 9,
      name: r'puzzleJson',
      type: IsarType.string,
    ),
    r'rewardClaimed': PropertySchema(
      id: 10,
      name: r'rewardClaimed',
      type: IsarType.bool,
    ),
    r'score': PropertySchema(id: 11, name: r'score', type: IsarType.long),
    r'startedAt': PropertySchema(
      id: 12,
      name: r'startedAt',
      type: IsarType.dateTime,
    ),
    r'statusName': PropertySchema(
      id: 13,
      name: r'statusName',
      type: IsarType.string,
    ),
    r'updatedAt': PropertySchema(
      id: 14,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
  },

  estimateSize: _dailyChallengeRecordEstimateSize,
  serialize: _dailyChallengeRecordSerialize,
  deserialize: _dailyChallengeRecordDeserialize,
  deserializeProp: _dailyChallengeRecordDeserializeProp,
  idName: r'id',
  indexes: {
    r'challengeId': IndexSchema(
      id: 4483557487511118379,
      name: r'challengeId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'challengeId',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
    r'challengeDate': IndexSchema(
      id: -5864383432171433719,
      name: r'challengeDate',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'challengeDate',
          type: IndexType.value,
          caseSensitive: false,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _dailyChallengeRecordGetId,
  getLinks: _dailyChallengeRecordGetLinks,
  attach: _dailyChallengeRecordAttach,
  version: '3.3.2',
);

int _dailyChallengeRecordEstimateSize(
  DailyChallengeRecord object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.activeSessionId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.challengeId.length * 3;
  bytesCount += 3 + object.puzzleJson.length * 3;
  bytesCount += 3 + object.statusName.length * 3;
  return bytesCount;
}

void _dailyChallengeRecordSerialize(
  DailyChallengeRecord object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.activeSessionId);
  writer.writeDateTime(offsets[1], object.challengeDate);
  writer.writeString(offsets[2], object.challengeId);
  writer.writeDateTime(offsets[3], object.completedAt);
  writer.writeLong(offsets[4], object.completionTimeSeconds);
  writer.writeDateTime(offsets[5], object.createdAt);
  writer.writeLong(offsets[6], object.generatorVersion);
  writer.writeLong(offsets[7], object.hintsUsed);
  writer.writeLong(offsets[8], object.mistakes);
  writer.writeString(offsets[9], object.puzzleJson);
  writer.writeBool(offsets[10], object.rewardClaimed);
  writer.writeLong(offsets[11], object.score);
  writer.writeDateTime(offsets[12], object.startedAt);
  writer.writeString(offsets[13], object.statusName);
  writer.writeDateTime(offsets[14], object.updatedAt);
}

DailyChallengeRecord _dailyChallengeRecordDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DailyChallengeRecord();
  object.activeSessionId = reader.readStringOrNull(offsets[0]);
  object.challengeDate = reader.readDateTime(offsets[1]);
  object.challengeId = reader.readString(offsets[2]);
  object.completedAt = reader.readDateTimeOrNull(offsets[3]);
  object.completionTimeSeconds = reader.readLongOrNull(offsets[4]);
  object.createdAt = reader.readDateTime(offsets[5]);
  object.generatorVersion = reader.readLong(offsets[6]);
  object.hintsUsed = reader.readLong(offsets[7]);
  object.id = id;
  object.mistakes = reader.readLong(offsets[8]);
  object.puzzleJson = reader.readString(offsets[9]);
  object.rewardClaimed = reader.readBool(offsets[10]);
  object.score = reader.readLong(offsets[11]);
  object.startedAt = reader.readDateTimeOrNull(offsets[12]);
  object.statusName = reader.readString(offsets[13]);
  object.updatedAt = reader.readDateTime(offsets[14]);
  return object;
}

P _dailyChallengeRecordDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readDateTime(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readBool(offset)) as P;
    case 11:
      return (reader.readLong(offset)) as P;
    case 12:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _dailyChallengeRecordGetId(DailyChallengeRecord object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _dailyChallengeRecordGetLinks(
  DailyChallengeRecord object,
) {
  return [];
}

void _dailyChallengeRecordAttach(
  IsarCollection<dynamic> col,
  Id id,
  DailyChallengeRecord object,
) {
  object.id = id;
}

extension DailyChallengeRecordByIndex on IsarCollection<DailyChallengeRecord> {
  Future<DailyChallengeRecord?> getByChallengeId(String challengeId) {
    return getByIndex(r'challengeId', [challengeId]);
  }

  DailyChallengeRecord? getByChallengeIdSync(String challengeId) {
    return getByIndexSync(r'challengeId', [challengeId]);
  }

  Future<bool> deleteByChallengeId(String challengeId) {
    return deleteByIndex(r'challengeId', [challengeId]);
  }

  bool deleteByChallengeIdSync(String challengeId) {
    return deleteByIndexSync(r'challengeId', [challengeId]);
  }

  Future<List<DailyChallengeRecord?>> getAllByChallengeId(
    List<String> challengeIdValues,
  ) {
    final values = challengeIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'challengeId', values);
  }

  List<DailyChallengeRecord?> getAllByChallengeIdSync(
    List<String> challengeIdValues,
  ) {
    final values = challengeIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'challengeId', values);
  }

  Future<int> deleteAllByChallengeId(List<String> challengeIdValues) {
    final values = challengeIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'challengeId', values);
  }

  int deleteAllByChallengeIdSync(List<String> challengeIdValues) {
    final values = challengeIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'challengeId', values);
  }

  Future<Id> putByChallengeId(DailyChallengeRecord object) {
    return putByIndex(r'challengeId', object);
  }

  Id putByChallengeIdSync(
    DailyChallengeRecord object, {
    bool saveLinks = true,
  }) {
    return putByIndexSync(r'challengeId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByChallengeId(List<DailyChallengeRecord> objects) {
    return putAllByIndex(r'challengeId', objects);
  }

  List<Id> putAllByChallengeIdSync(
    List<DailyChallengeRecord> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(r'challengeId', objects, saveLinks: saveLinks);
  }
}

extension DailyChallengeRecordQueryWhereSort
    on QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QWhere> {
  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterWhere>
  anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterWhere>
  anyChallengeDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'challengeDate'),
      );
    });
  }
}

extension DailyChallengeRecordQueryWhere
    on QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QWhereClause> {
  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterWhereClause>
  idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterWhereClause>
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

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterWhereClause>
  idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterWhereClause>
  idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterWhereClause>
  idBetween(
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

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterWhereClause>
  challengeIdEqualTo(String challengeId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(
          indexName: r'challengeId',
          value: [challengeId],
        ),
      );
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterWhereClause>
  challengeIdNotEqualTo(String challengeId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'challengeId',
                lower: [],
                upper: [challengeId],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'challengeId',
                lower: [challengeId],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'challengeId',
                lower: [challengeId],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'challengeId',
                lower: [],
                upper: [challengeId],
                includeUpper: false,
              ),
            );
      }
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterWhereClause>
  challengeDateEqualTo(DateTime challengeDate) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(
          indexName: r'challengeDate',
          value: [challengeDate],
        ),
      );
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterWhereClause>
  challengeDateNotEqualTo(DateTime challengeDate) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'challengeDate',
                lower: [],
                upper: [challengeDate],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'challengeDate',
                lower: [challengeDate],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'challengeDate',
                lower: [challengeDate],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'challengeDate',
                lower: [],
                upper: [challengeDate],
                includeUpper: false,
              ),
            );
      }
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterWhereClause>
  challengeDateGreaterThan(DateTime challengeDate, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'challengeDate',
          lower: [challengeDate],
          includeLower: include,
          upper: [],
        ),
      );
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterWhereClause>
  challengeDateLessThan(DateTime challengeDate, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'challengeDate',
          lower: [],
          upper: [challengeDate],
          includeUpper: include,
        ),
      );
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterWhereClause>
  challengeDateBetween(
    DateTime lowerChallengeDate,
    DateTime upperChallengeDate, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'challengeDate',
          lower: [lowerChallengeDate],
          includeLower: includeLower,
          upper: [upperChallengeDate],
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension DailyChallengeRecordQueryFilter
    on
        QueryBuilder<
          DailyChallengeRecord,
          DailyChallengeRecord,
          QFilterCondition
        > {
  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  activeSessionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'activeSessionId'),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  activeSessionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'activeSessionId'),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  activeSessionIdEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'activeSessionId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  activeSessionIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'activeSessionId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  activeSessionIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'activeSessionId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  activeSessionIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'activeSessionId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  activeSessionIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'activeSessionId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  activeSessionIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'activeSessionId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  activeSessionIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'activeSessionId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  activeSessionIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'activeSessionId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  activeSessionIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'activeSessionId', value: ''),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  activeSessionIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'activeSessionId', value: ''),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  challengeDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'challengeDate', value: value),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  challengeDateGreaterThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'challengeDate',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  challengeDateLessThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'challengeDate',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  challengeDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'challengeDate',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  challengeIdEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'challengeId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  challengeIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'challengeId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  challengeIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'challengeId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  challengeIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'challengeId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  challengeIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'challengeId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  challengeIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'challengeId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  challengeIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'challengeId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  challengeIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'challengeId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  challengeIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'challengeId', value: ''),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  challengeIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'challengeId', value: ''),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  completedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'completedAt'),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  completedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'completedAt'),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  completedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'completedAt', value: value),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  completedAtGreaterThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'completedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  completedAtLessThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'completedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  completedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'completedAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  completionTimeSecondsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'completionTimeSeconds'),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  completionTimeSecondsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'completionTimeSeconds'),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  completionTimeSecondsEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'completionTimeSeconds',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  completionTimeSecondsGreaterThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'completionTimeSeconds',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  completionTimeSecondsLessThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'completionTimeSeconds',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  completionTimeSecondsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'completionTimeSeconds',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'createdAt', value: value),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  generatorVersionEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'generatorVersion', value: value),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  generatorVersionGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'generatorVersion',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  generatorVersionLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'generatorVersion',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  generatorVersionBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'generatorVersion',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  hintsUsedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'hintsUsed', value: value),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  hintsUsedGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'hintsUsed',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  hintsUsedLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'hintsUsed',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  hintsUsedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'hintsUsed',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  mistakesEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'mistakes', value: value),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  mistakesGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'mistakes',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  mistakesLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'mistakes',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  mistakesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'mistakes',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  puzzleJsonEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'puzzleJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  puzzleJsonGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'puzzleJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  puzzleJsonLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'puzzleJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  puzzleJsonBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'puzzleJson',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  puzzleJsonStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'puzzleJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  puzzleJsonEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'puzzleJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  puzzleJsonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'puzzleJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  puzzleJsonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'puzzleJson',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  puzzleJsonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'puzzleJson', value: ''),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  puzzleJsonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'puzzleJson', value: ''),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  rewardClaimedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'rewardClaimed', value: value),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  scoreEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'score', value: value),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  scoreGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'score',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  scoreLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'score',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  scoreBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'score',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  startedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'startedAt'),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  startedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'startedAt'),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  startedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'startedAt', value: value),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  startedAtGreaterThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'startedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  startedAtLessThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'startedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  startedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'startedAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  statusNameEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'statusName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  statusNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'statusName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  statusNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'statusName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  statusNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'statusName',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  statusNameStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'statusName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  statusNameEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'statusName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  statusNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'statusName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  statusNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'statusName',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  statusNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'statusName', value: ''),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  statusNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'statusName', value: ''),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
  updatedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'updatedAt', value: value),
      );
    });
  }

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    DailyChallengeRecord,
    DailyChallengeRecord,
    QAfterFilterCondition
  >
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
}

extension DailyChallengeRecordQueryObject
    on
        QueryBuilder<
          DailyChallengeRecord,
          DailyChallengeRecord,
          QFilterCondition
        > {}

extension DailyChallengeRecordQueryLinks
    on
        QueryBuilder<
          DailyChallengeRecord,
          DailyChallengeRecord,
          QFilterCondition
        > {}

extension DailyChallengeRecordQuerySortBy
    on QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QSortBy> {
  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByActiveSessionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activeSessionId', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByActiveSessionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activeSessionId', Sort.desc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByChallengeDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'challengeDate', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByChallengeDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'challengeDate', Sort.desc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByChallengeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'challengeId', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByChallengeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'challengeId', Sort.desc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByCompletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedAt', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByCompletedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedAt', Sort.desc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByCompletionTimeSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completionTimeSeconds', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByCompletionTimeSecondsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completionTimeSeconds', Sort.desc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByGeneratorVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'generatorVersion', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByGeneratorVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'generatorVersion', Sort.desc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByHintsUsed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hintsUsed', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByHintsUsedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hintsUsed', Sort.desc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByMistakes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mistakes', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByMistakesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mistakes', Sort.desc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByPuzzleJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puzzleJson', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByPuzzleJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puzzleJson', Sort.desc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByRewardClaimed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rewardClaimed', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByRewardClaimedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rewardClaimed', Sort.desc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'score', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByScoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'score', Sort.desc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByStartedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedAt', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByStartedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedAt', Sort.desc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByStatusName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusName', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByStatusNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusName', Sort.desc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension DailyChallengeRecordQuerySortThenBy
    on QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QSortThenBy> {
  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByActiveSessionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activeSessionId', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByActiveSessionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activeSessionId', Sort.desc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByChallengeDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'challengeDate', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByChallengeDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'challengeDate', Sort.desc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByChallengeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'challengeId', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByChallengeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'challengeId', Sort.desc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByCompletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedAt', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByCompletedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedAt', Sort.desc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByCompletionTimeSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completionTimeSeconds', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByCompletionTimeSecondsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completionTimeSeconds', Sort.desc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByGeneratorVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'generatorVersion', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByGeneratorVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'generatorVersion', Sort.desc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByHintsUsed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hintsUsed', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByHintsUsedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hintsUsed', Sort.desc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByMistakes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mistakes', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByMistakesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mistakes', Sort.desc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByPuzzleJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puzzleJson', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByPuzzleJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puzzleJson', Sort.desc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByRewardClaimed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rewardClaimed', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByRewardClaimedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rewardClaimed', Sort.desc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'score', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByScoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'score', Sort.desc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByStartedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedAt', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByStartedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedAt', Sort.desc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByStatusName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusName', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByStatusNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusName', Sort.desc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QAfterSortBy>
  thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension DailyChallengeRecordQueryWhereDistinct
    on QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QDistinct> {
  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QDistinct>
  distinctByActiveSessionId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(
        r'activeSessionId',
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QDistinct>
  distinctByChallengeDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'challengeDate');
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QDistinct>
  distinctByChallengeId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'challengeId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QDistinct>
  distinctByCompletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'completedAt');
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QDistinct>
  distinctByCompletionTimeSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'completionTimeSeconds');
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QDistinct>
  distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QDistinct>
  distinctByGeneratorVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'generatorVersion');
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QDistinct>
  distinctByHintsUsed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hintsUsed');
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QDistinct>
  distinctByMistakes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mistakes');
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QDistinct>
  distinctByPuzzleJson({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'puzzleJson', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QDistinct>
  distinctByRewardClaimed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rewardClaimed');
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QDistinct>
  distinctByScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'score');
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QDistinct>
  distinctByStartedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'startedAt');
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QDistinct>
  distinctByStatusName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'statusName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DailyChallengeRecord, DailyChallengeRecord, QDistinct>
  distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }
}

extension DailyChallengeRecordQueryProperty
    on
        QueryBuilder<
          DailyChallengeRecord,
          DailyChallengeRecord,
          QQueryProperty
        > {
  QueryBuilder<DailyChallengeRecord, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DailyChallengeRecord, String?, QQueryOperations>
  activeSessionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'activeSessionId');
    });
  }

  QueryBuilder<DailyChallengeRecord, DateTime, QQueryOperations>
  challengeDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'challengeDate');
    });
  }

  QueryBuilder<DailyChallengeRecord, String, QQueryOperations>
  challengeIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'challengeId');
    });
  }

  QueryBuilder<DailyChallengeRecord, DateTime?, QQueryOperations>
  completedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'completedAt');
    });
  }

  QueryBuilder<DailyChallengeRecord, int?, QQueryOperations>
  completionTimeSecondsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'completionTimeSeconds');
    });
  }

  QueryBuilder<DailyChallengeRecord, DateTime, QQueryOperations>
  createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<DailyChallengeRecord, int, QQueryOperations>
  generatorVersionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'generatorVersion');
    });
  }

  QueryBuilder<DailyChallengeRecord, int, QQueryOperations>
  hintsUsedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hintsUsed');
    });
  }

  QueryBuilder<DailyChallengeRecord, int, QQueryOperations> mistakesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mistakes');
    });
  }

  QueryBuilder<DailyChallengeRecord, String, QQueryOperations>
  puzzleJsonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'puzzleJson');
    });
  }

  QueryBuilder<DailyChallengeRecord, bool, QQueryOperations>
  rewardClaimedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rewardClaimed');
    });
  }

  QueryBuilder<DailyChallengeRecord, int, QQueryOperations> scoreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'score');
    });
  }

  QueryBuilder<DailyChallengeRecord, DateTime?, QQueryOperations>
  startedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'startedAt');
    });
  }

  QueryBuilder<DailyChallengeRecord, String, QQueryOperations>
  statusNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'statusName');
    });
  }

  QueryBuilder<DailyChallengeRecord, DateTime, QQueryOperations>
  updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }
}
