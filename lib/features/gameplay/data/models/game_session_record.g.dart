// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_session_record.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetGameSessionRecordCollection on Isar {
  IsarCollection<GameSessionRecord> get gameSessionRecords => this.collection();
}

const GameSessionRecordSchema = CollectionSchema(
  name: r'GameSessionRecord',
  id: 5760521567535163013,
  properties: {
    r'cellsJson': PropertySchema(
      id: 0,
      name: r'cellsJson',
      type: IsarType.string,
    ),
    r'completedAt': PropertySchema(
      id: 1,
      name: r'completedAt',
      type: IsarType.dateTime,
    ),
    r'createdAt': PropertySchema(
      id: 2,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'elapsedSeconds': PropertySchema(
      id: 3,
      name: r'elapsedSeconds',
      type: IsarType.long,
    ),
    r'hintCount': PropertySchema(
      id: 4,
      name: r'hintCount',
      type: IsarType.long,
    ),
    r'isDailyChallenge': PropertySchema(
      id: 5,
      name: r'isDailyChallenge',
      type: IsarType.bool,
    ),
    r'mistakeCount': PropertySchema(
      id: 6,
      name: r'mistakeCount',
      type: IsarType.long,
    ),
    r'mistakeLimit': PropertySchema(
      id: 7,
      name: r'mistakeLimit',
      type: IsarType.long,
    ),
    r'notesModeEnabled': PropertySchema(
      id: 8,
      name: r'notesModeEnabled',
      type: IsarType.bool,
    ),
    r'puzzleId': PropertySchema(
      id: 9,
      name: r'puzzleId',
      type: IsarType.string,
    ),
    r'puzzleJson': PropertySchema(
      id: 10,
      name: r'puzzleJson',
      type: IsarType.string,
    ),
    r'redoStackJson': PropertySchema(
      id: 11,
      name: r'redoStackJson',
      type: IsarType.string,
    ),
    r'selectedCellIndex': PropertySchema(
      id: 12,
      name: r'selectedCellIndex',
      type: IsarType.long,
    ),
    r'sessionId': PropertySchema(
      id: 13,
      name: r'sessionId',
      type: IsarType.string,
    ),
    r'startedAt': PropertySchema(
      id: 14,
      name: r'startedAt',
      type: IsarType.dateTime,
    ),
    r'statusName': PropertySchema(
      id: 15,
      name: r'statusName',
      type: IsarType.string,
    ),
    r'undoStackJson': PropertySchema(
      id: 16,
      name: r'undoStackJson',
      type: IsarType.string,
    ),
    r'updatedAt': PropertySchema(
      id: 17,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
  },

  estimateSize: _gameSessionRecordEstimateSize,
  serialize: _gameSessionRecordSerialize,
  deserialize: _gameSessionRecordDeserialize,
  deserializeProp: _gameSessionRecordDeserializeProp,
  idName: r'id',
  indexes: {
    r'sessionId': IndexSchema(
      id: 6949518585047923839,
      name: r'sessionId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'sessionId',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
    r'puzzleId': IndexSchema(
      id: 8690335564260100389,
      name: r'puzzleId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'puzzleId',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _gameSessionRecordGetId,
  getLinks: _gameSessionRecordGetLinks,
  attach: _gameSessionRecordAttach,
  version: '3.3.2',
);

int _gameSessionRecordEstimateSize(
  GameSessionRecord object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.cellsJson.length * 3;
  bytesCount += 3 + object.puzzleId.length * 3;
  bytesCount += 3 + object.puzzleJson.length * 3;
  bytesCount += 3 + object.redoStackJson.length * 3;
  bytesCount += 3 + object.sessionId.length * 3;
  bytesCount += 3 + object.statusName.length * 3;
  bytesCount += 3 + object.undoStackJson.length * 3;
  return bytesCount;
}

void _gameSessionRecordSerialize(
  GameSessionRecord object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.cellsJson);
  writer.writeDateTime(offsets[1], object.completedAt);
  writer.writeDateTime(offsets[2], object.createdAt);
  writer.writeLong(offsets[3], object.elapsedSeconds);
  writer.writeLong(offsets[4], object.hintCount);
  writer.writeBool(offsets[5], object.isDailyChallenge);
  writer.writeLong(offsets[6], object.mistakeCount);
  writer.writeLong(offsets[7], object.mistakeLimit);
  writer.writeBool(offsets[8], object.notesModeEnabled);
  writer.writeString(offsets[9], object.puzzleId);
  writer.writeString(offsets[10], object.puzzleJson);
  writer.writeString(offsets[11], object.redoStackJson);
  writer.writeLong(offsets[12], object.selectedCellIndex);
  writer.writeString(offsets[13], object.sessionId);
  writer.writeDateTime(offsets[14], object.startedAt);
  writer.writeString(offsets[15], object.statusName);
  writer.writeString(offsets[16], object.undoStackJson);
  writer.writeDateTime(offsets[17], object.updatedAt);
}

GameSessionRecord _gameSessionRecordDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GameSessionRecord();
  object.cellsJson = reader.readString(offsets[0]);
  object.completedAt = reader.readDateTimeOrNull(offsets[1]);
  object.createdAt = reader.readDateTime(offsets[2]);
  object.elapsedSeconds = reader.readLong(offsets[3]);
  object.hintCount = reader.readLong(offsets[4]);
  object.id = id;
  object.isDailyChallenge = reader.readBool(offsets[5]);
  object.mistakeCount = reader.readLong(offsets[6]);
  object.mistakeLimit = reader.readLong(offsets[7]);
  object.notesModeEnabled = reader.readBool(offsets[8]);
  object.puzzleId = reader.readString(offsets[9]);
  object.puzzleJson = reader.readString(offsets[10]);
  object.redoStackJson = reader.readString(offsets[11]);
  object.selectedCellIndex = reader.readLongOrNull(offsets[12]);
  object.sessionId = reader.readString(offsets[13]);
  object.startedAt = reader.readDateTimeOrNull(offsets[14]);
  object.statusName = reader.readString(offsets[15]);
  object.undoStackJson = reader.readString(offsets[16]);
  object.updatedAt = reader.readDateTime(offsets[17]);
  return object;
}

P _gameSessionRecordDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readBool(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readLongOrNull(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    case 16:
      return (reader.readString(offset)) as P;
    case 17:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _gameSessionRecordGetId(GameSessionRecord object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _gameSessionRecordGetLinks(
  GameSessionRecord object,
) {
  return [];
}

void _gameSessionRecordAttach(
  IsarCollection<dynamic> col,
  Id id,
  GameSessionRecord object,
) {
  object.id = id;
}

extension GameSessionRecordByIndex on IsarCollection<GameSessionRecord> {
  Future<GameSessionRecord?> getBySessionId(String sessionId) {
    return getByIndex(r'sessionId', [sessionId]);
  }

  GameSessionRecord? getBySessionIdSync(String sessionId) {
    return getByIndexSync(r'sessionId', [sessionId]);
  }

  Future<bool> deleteBySessionId(String sessionId) {
    return deleteByIndex(r'sessionId', [sessionId]);
  }

  bool deleteBySessionIdSync(String sessionId) {
    return deleteByIndexSync(r'sessionId', [sessionId]);
  }

  Future<List<GameSessionRecord?>> getAllBySessionId(
    List<String> sessionIdValues,
  ) {
    final values = sessionIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'sessionId', values);
  }

  List<GameSessionRecord?> getAllBySessionIdSync(List<String> sessionIdValues) {
    final values = sessionIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'sessionId', values);
  }

  Future<int> deleteAllBySessionId(List<String> sessionIdValues) {
    final values = sessionIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'sessionId', values);
  }

  int deleteAllBySessionIdSync(List<String> sessionIdValues) {
    final values = sessionIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'sessionId', values);
  }

  Future<Id> putBySessionId(GameSessionRecord object) {
    return putByIndex(r'sessionId', object);
  }

  Id putBySessionIdSync(GameSessionRecord object, {bool saveLinks = true}) {
    return putByIndexSync(r'sessionId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllBySessionId(List<GameSessionRecord> objects) {
    return putAllByIndex(r'sessionId', objects);
  }

  List<Id> putAllBySessionIdSync(
    List<GameSessionRecord> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(r'sessionId', objects, saveLinks: saveLinks);
  }
}

extension GameSessionRecordQueryWhereSort
    on QueryBuilder<GameSessionRecord, GameSessionRecord, QWhere> {
  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension GameSessionRecordQueryWhere
    on QueryBuilder<GameSessionRecord, GameSessionRecord, QWhereClause> {
  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterWhereClause>
  idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterWhereClause>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterWhereClause>
  idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterWhereClause>
  idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterWhereClause>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterWhereClause>
  sessionIdEqualTo(String sessionId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'sessionId', value: [sessionId]),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterWhereClause>
  sessionIdNotEqualTo(String sessionId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'sessionId',
                lower: [],
                upper: [sessionId],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'sessionId',
                lower: [sessionId],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'sessionId',
                lower: [sessionId],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'sessionId',
                lower: [],
                upper: [sessionId],
                includeUpper: false,
              ),
            );
      }
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterWhereClause>
  puzzleIdEqualTo(String puzzleId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'puzzleId', value: [puzzleId]),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterWhereClause>
  puzzleIdNotEqualTo(String puzzleId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'puzzleId',
                lower: [],
                upper: [puzzleId],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'puzzleId',
                lower: [puzzleId],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'puzzleId',
                lower: [puzzleId],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'puzzleId',
                lower: [],
                upper: [puzzleId],
                includeUpper: false,
              ),
            );
      }
    });
  }
}

extension GameSessionRecordQueryFilter
    on QueryBuilder<GameSessionRecord, GameSessionRecord, QFilterCondition> {
  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  cellsJsonEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'cellsJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  cellsJsonGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'cellsJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  cellsJsonLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'cellsJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  cellsJsonBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'cellsJson',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  cellsJsonStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'cellsJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  cellsJsonEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'cellsJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  cellsJsonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'cellsJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  cellsJsonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'cellsJson',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  cellsJsonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'cellsJson', value: ''),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  cellsJsonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'cellsJson', value: ''),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  completedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'completedAt'),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  completedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'completedAt'),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  completedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'completedAt', value: value),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'createdAt', value: value),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  elapsedSecondsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'elapsedSeconds', value: value),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  elapsedSecondsGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'elapsedSeconds',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  elapsedSecondsLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'elapsedSeconds',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  elapsedSecondsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'elapsedSeconds',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  hintCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'hintCount', value: value),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  hintCountGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'hintCount',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  hintCountLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'hintCount',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  hintCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'hintCount',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  isDailyChallengeEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'isDailyChallenge', value: value),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  mistakeCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'mistakeCount', value: value),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  mistakeCountGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'mistakeCount',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  mistakeCountLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'mistakeCount',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  mistakeCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'mistakeCount',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  mistakeLimitEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'mistakeLimit', value: value),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  mistakeLimitGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'mistakeLimit',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  mistakeLimitLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'mistakeLimit',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  mistakeLimitBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'mistakeLimit',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  notesModeEnabledEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'notesModeEnabled', value: value),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  puzzleIdEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'puzzleId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  puzzleIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'puzzleId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  puzzleIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'puzzleId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  puzzleIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'puzzleId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  puzzleIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'puzzleId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  puzzleIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'puzzleId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  puzzleIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'puzzleId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  puzzleIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'puzzleId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  puzzleIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'puzzleId', value: ''),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  puzzleIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'puzzleId', value: ''),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  puzzleJsonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'puzzleJson', value: ''),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  puzzleJsonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'puzzleJson', value: ''),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  redoStackJsonEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'redoStackJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  redoStackJsonGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'redoStackJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  redoStackJsonLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'redoStackJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  redoStackJsonBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'redoStackJson',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  redoStackJsonStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'redoStackJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  redoStackJsonEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'redoStackJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  redoStackJsonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'redoStackJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  redoStackJsonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'redoStackJson',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  redoStackJsonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'redoStackJson', value: ''),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  redoStackJsonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'redoStackJson', value: ''),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  selectedCellIndexIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'selectedCellIndex'),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  selectedCellIndexIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'selectedCellIndex'),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  selectedCellIndexEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'selectedCellIndex', value: value),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  selectedCellIndexGreaterThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'selectedCellIndex',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  selectedCellIndexLessThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'selectedCellIndex',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  selectedCellIndexBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'selectedCellIndex',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  sessionIdEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'sessionId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  sessionIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'sessionId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  sessionIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'sessionId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  sessionIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'sessionId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  sessionIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'sessionId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  sessionIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'sessionId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  sessionIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'sessionId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  sessionIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'sessionId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  sessionIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'sessionId', value: ''),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  sessionIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'sessionId', value: ''),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  startedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'startedAt'),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  startedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'startedAt'),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  startedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'startedAt', value: value),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  statusNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'statusName', value: ''),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  statusNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'statusName', value: ''),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  undoStackJsonEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'undoStackJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  undoStackJsonGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'undoStackJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  undoStackJsonLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'undoStackJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  undoStackJsonBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'undoStackJson',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  undoStackJsonStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'undoStackJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  undoStackJsonEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'undoStackJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  undoStackJsonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'undoStackJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  undoStackJsonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'undoStackJson',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  undoStackJsonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'undoStackJson', value: ''),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  undoStackJsonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'undoStackJson', value: ''),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
  updatedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'updatedAt', value: value),
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterFilterCondition>
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

extension GameSessionRecordQueryObject
    on QueryBuilder<GameSessionRecord, GameSessionRecord, QFilterCondition> {}

extension GameSessionRecordQueryLinks
    on QueryBuilder<GameSessionRecord, GameSessionRecord, QFilterCondition> {}

extension GameSessionRecordQuerySortBy
    on QueryBuilder<GameSessionRecord, GameSessionRecord, QSortBy> {
  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByCellsJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cellsJson', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByCellsJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cellsJson', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByCompletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedAt', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByCompletedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedAt', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByElapsedSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elapsedSeconds', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByElapsedSecondsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elapsedSeconds', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByHintCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hintCount', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByHintCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hintCount', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByIsDailyChallenge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDailyChallenge', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByIsDailyChallengeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDailyChallenge', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByMistakeCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mistakeCount', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByMistakeCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mistakeCount', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByMistakeLimit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mistakeLimit', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByMistakeLimitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mistakeLimit', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByNotesModeEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notesModeEnabled', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByNotesModeEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notesModeEnabled', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByPuzzleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puzzleId', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByPuzzleIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puzzleId', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByPuzzleJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puzzleJson', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByPuzzleJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puzzleJson', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByRedoStackJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'redoStackJson', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByRedoStackJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'redoStackJson', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortBySelectedCellIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedCellIndex', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortBySelectedCellIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedCellIndex', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortBySessionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sessionId', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortBySessionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sessionId', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByStartedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedAt', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByStartedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedAt', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByStatusName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusName', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByStatusNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusName', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByUndoStackJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'undoStackJson', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByUndoStackJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'undoStackJson', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension GameSessionRecordQuerySortThenBy
    on QueryBuilder<GameSessionRecord, GameSessionRecord, QSortThenBy> {
  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByCellsJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cellsJson', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByCellsJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cellsJson', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByCompletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedAt', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByCompletedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedAt', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByElapsedSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elapsedSeconds', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByElapsedSecondsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elapsedSeconds', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByHintCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hintCount', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByHintCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hintCount', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByIsDailyChallenge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDailyChallenge', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByIsDailyChallengeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDailyChallenge', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByMistakeCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mistakeCount', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByMistakeCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mistakeCount', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByMistakeLimit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mistakeLimit', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByMistakeLimitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mistakeLimit', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByNotesModeEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notesModeEnabled', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByNotesModeEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notesModeEnabled', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByPuzzleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puzzleId', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByPuzzleIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puzzleId', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByPuzzleJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puzzleJson', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByPuzzleJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puzzleJson', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByRedoStackJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'redoStackJson', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByRedoStackJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'redoStackJson', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenBySelectedCellIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedCellIndex', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenBySelectedCellIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedCellIndex', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenBySessionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sessionId', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenBySessionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sessionId', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByStartedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedAt', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByStartedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedAt', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByStatusName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusName', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByStatusNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusName', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByUndoStackJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'undoStackJson', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByUndoStackJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'undoStackJson', Sort.desc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QAfterSortBy>
  thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension GameSessionRecordQueryWhereDistinct
    on QueryBuilder<GameSessionRecord, GameSessionRecord, QDistinct> {
  QueryBuilder<GameSessionRecord, GameSessionRecord, QDistinct>
  distinctByCellsJson({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cellsJson', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QDistinct>
  distinctByCompletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'completedAt');
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QDistinct>
  distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QDistinct>
  distinctByElapsedSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'elapsedSeconds');
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QDistinct>
  distinctByHintCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hintCount');
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QDistinct>
  distinctByIsDailyChallenge() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDailyChallenge');
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QDistinct>
  distinctByMistakeCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mistakeCount');
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QDistinct>
  distinctByMistakeLimit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mistakeLimit');
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QDistinct>
  distinctByNotesModeEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notesModeEnabled');
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QDistinct>
  distinctByPuzzleId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'puzzleId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QDistinct>
  distinctByPuzzleJson({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'puzzleJson', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QDistinct>
  distinctByRedoStackJson({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(
        r'redoStackJson',
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QDistinct>
  distinctBySelectedCellIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'selectedCellIndex');
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QDistinct>
  distinctBySessionId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sessionId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QDistinct>
  distinctByStartedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'startedAt');
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QDistinct>
  distinctByStatusName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'statusName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QDistinct>
  distinctByUndoStackJson({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(
        r'undoStackJson',
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<GameSessionRecord, GameSessionRecord, QDistinct>
  distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }
}

extension GameSessionRecordQueryProperty
    on QueryBuilder<GameSessionRecord, GameSessionRecord, QQueryProperty> {
  QueryBuilder<GameSessionRecord, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<GameSessionRecord, String, QQueryOperations>
  cellsJsonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cellsJson');
    });
  }

  QueryBuilder<GameSessionRecord, DateTime?, QQueryOperations>
  completedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'completedAt');
    });
  }

  QueryBuilder<GameSessionRecord, DateTime, QQueryOperations>
  createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<GameSessionRecord, int, QQueryOperations>
  elapsedSecondsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'elapsedSeconds');
    });
  }

  QueryBuilder<GameSessionRecord, int, QQueryOperations> hintCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hintCount');
    });
  }

  QueryBuilder<GameSessionRecord, bool, QQueryOperations>
  isDailyChallengeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDailyChallenge');
    });
  }

  QueryBuilder<GameSessionRecord, int, QQueryOperations>
  mistakeCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mistakeCount');
    });
  }

  QueryBuilder<GameSessionRecord, int, QQueryOperations>
  mistakeLimitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mistakeLimit');
    });
  }

  QueryBuilder<GameSessionRecord, bool, QQueryOperations>
  notesModeEnabledProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notesModeEnabled');
    });
  }

  QueryBuilder<GameSessionRecord, String, QQueryOperations> puzzleIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'puzzleId');
    });
  }

  QueryBuilder<GameSessionRecord, String, QQueryOperations>
  puzzleJsonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'puzzleJson');
    });
  }

  QueryBuilder<GameSessionRecord, String, QQueryOperations>
  redoStackJsonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'redoStackJson');
    });
  }

  QueryBuilder<GameSessionRecord, int?, QQueryOperations>
  selectedCellIndexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'selectedCellIndex');
    });
  }

  QueryBuilder<GameSessionRecord, String, QQueryOperations>
  sessionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sessionId');
    });
  }

  QueryBuilder<GameSessionRecord, DateTime?, QQueryOperations>
  startedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'startedAt');
    });
  }

  QueryBuilder<GameSessionRecord, String, QQueryOperations>
  statusNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'statusName');
    });
  }

  QueryBuilder<GameSessionRecord, String, QQueryOperations>
  undoStackJsonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'undoStackJson');
    });
  }

  QueryBuilder<GameSessionRecord, DateTime, QQueryOperations>
  updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }
}
