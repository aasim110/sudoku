// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sudoku_puzzle_record.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSudokuPuzzleRecordCollection on Isar {
  IsarCollection<SudokuPuzzleRecord> get sudokuPuzzleRecords =>
      this.collection();
}

const SudokuPuzzleRecordSchema = CollectionSchema(
  name: r'SudokuPuzzleRecord',
  id: 127900503498246294,
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'difficultyName': PropertySchema(
      id: 1,
      name: r'difficultyName',
      type: IsarType.string,
    ),
    r'generatorVersion': PropertySchema(
      id: 2,
      name: r'generatorVersion',
      type: IsarType.long,
    ),
    r'initialGrid': PropertySchema(
      id: 3,
      name: r'initialGrid',
      type: IsarType.longList,
    ),
    r'metadataJson': PropertySchema(
      id: 4,
      name: r'metadataJson',
      type: IsarType.string,
    ),
    r'puzzleId': PropertySchema(
      id: 5,
      name: r'puzzleId',
      type: IsarType.string,
    ),
    r'rating': PropertySchema(id: 6, name: r'rating', type: IsarType.long),
    r'seed': PropertySchema(id: 7, name: r'seed', type: IsarType.string),
    r'solutionGrid': PropertySchema(
      id: 8,
      name: r'solutionGrid',
      type: IsarType.longList,
    ),
    r'sourceName': PropertySchema(
      id: 9,
      name: r'sourceName',
      type: IsarType.string,
    ),
  },

  estimateSize: _sudokuPuzzleRecordEstimateSize,
  serialize: _sudokuPuzzleRecordSerialize,
  deserialize: _sudokuPuzzleRecordDeserialize,
  deserializeProp: _sudokuPuzzleRecordDeserializeProp,
  idName: r'id',
  indexes: {
    r'puzzleId': IndexSchema(
      id: 8690335564260100389,
      name: r'puzzleId',
      unique: true,
      replace: true,
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

  getId: _sudokuPuzzleRecordGetId,
  getLinks: _sudokuPuzzleRecordGetLinks,
  attach: _sudokuPuzzleRecordAttach,
  version: '3.3.2',
);

int _sudokuPuzzleRecordEstimateSize(
  SudokuPuzzleRecord object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.difficultyName.length * 3;
  bytesCount += 3 + object.initialGrid.length * 8;
  bytesCount += 3 + object.metadataJson.length * 3;
  bytesCount += 3 + object.puzzleId.length * 3;
  {
    final value = object.seed;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.solutionGrid.length * 8;
  bytesCount += 3 + object.sourceName.length * 3;
  return bytesCount;
}

void _sudokuPuzzleRecordSerialize(
  SudokuPuzzleRecord object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeString(offsets[1], object.difficultyName);
  writer.writeLong(offsets[2], object.generatorVersion);
  writer.writeLongList(offsets[3], object.initialGrid);
  writer.writeString(offsets[4], object.metadataJson);
  writer.writeString(offsets[5], object.puzzleId);
  writer.writeLong(offsets[6], object.rating);
  writer.writeString(offsets[7], object.seed);
  writer.writeLongList(offsets[8], object.solutionGrid);
  writer.writeString(offsets[9], object.sourceName);
}

SudokuPuzzleRecord _sudokuPuzzleRecordDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SudokuPuzzleRecord();
  object.createdAt = reader.readDateTime(offsets[0]);
  object.difficultyName = reader.readString(offsets[1]);
  object.generatorVersion = reader.readLong(offsets[2]);
  object.id = id;
  object.initialGrid = reader.readLongList(offsets[3]) ?? [];
  object.metadataJson = reader.readString(offsets[4]);
  object.puzzleId = reader.readString(offsets[5]);
  object.rating = reader.readLong(offsets[6]);
  object.seed = reader.readStringOrNull(offsets[7]);
  object.solutionGrid = reader.readLongList(offsets[8]) ?? [];
  object.sourceName = reader.readString(offsets[9]);
  return object;
}

P _sudokuPuzzleRecordDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLongList(offset) ?? []) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readLongList(offset) ?? []) as P;
    case 9:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _sudokuPuzzleRecordGetId(SudokuPuzzleRecord object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _sudokuPuzzleRecordGetLinks(
  SudokuPuzzleRecord object,
) {
  return [];
}

void _sudokuPuzzleRecordAttach(
  IsarCollection<dynamic> col,
  Id id,
  SudokuPuzzleRecord object,
) {
  object.id = id;
}

extension SudokuPuzzleRecordByIndex on IsarCollection<SudokuPuzzleRecord> {
  Future<SudokuPuzzleRecord?> getByPuzzleId(String puzzleId) {
    return getByIndex(r'puzzleId', [puzzleId]);
  }

  SudokuPuzzleRecord? getByPuzzleIdSync(String puzzleId) {
    return getByIndexSync(r'puzzleId', [puzzleId]);
  }

  Future<bool> deleteByPuzzleId(String puzzleId) {
    return deleteByIndex(r'puzzleId', [puzzleId]);
  }

  bool deleteByPuzzleIdSync(String puzzleId) {
    return deleteByIndexSync(r'puzzleId', [puzzleId]);
  }

  Future<List<SudokuPuzzleRecord?>> getAllByPuzzleId(
    List<String> puzzleIdValues,
  ) {
    final values = puzzleIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'puzzleId', values);
  }

  List<SudokuPuzzleRecord?> getAllByPuzzleIdSync(List<String> puzzleIdValues) {
    final values = puzzleIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'puzzleId', values);
  }

  Future<int> deleteAllByPuzzleId(List<String> puzzleIdValues) {
    final values = puzzleIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'puzzleId', values);
  }

  int deleteAllByPuzzleIdSync(List<String> puzzleIdValues) {
    final values = puzzleIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'puzzleId', values);
  }

  Future<Id> putByPuzzleId(SudokuPuzzleRecord object) {
    return putByIndex(r'puzzleId', object);
  }

  Id putByPuzzleIdSync(SudokuPuzzleRecord object, {bool saveLinks = true}) {
    return putByIndexSync(r'puzzleId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByPuzzleId(List<SudokuPuzzleRecord> objects) {
    return putAllByIndex(r'puzzleId', objects);
  }

  List<Id> putAllByPuzzleIdSync(
    List<SudokuPuzzleRecord> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(r'puzzleId', objects, saveLinks: saveLinks);
  }
}

extension SudokuPuzzleRecordQueryWhereSort
    on QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QWhere> {
  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SudokuPuzzleRecordQueryWhere
    on QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QWhereClause> {
  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterWhereClause>
  idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterWhereClause>
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

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterWhereClause>
  idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterWhereClause>
  idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterWhereClause>
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

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterWhereClause>
  puzzleIdEqualTo(String puzzleId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'puzzleId', value: [puzzleId]),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterWhereClause>
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

extension SudokuPuzzleRecordQueryFilter
    on QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QFilterCondition> {
  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'createdAt', value: value),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
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

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
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

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
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

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  difficultyNameEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'difficultyName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  difficultyNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'difficultyName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  difficultyNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'difficultyName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  difficultyNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'difficultyName',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  difficultyNameStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'difficultyName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  difficultyNameEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'difficultyName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  difficultyNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'difficultyName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  difficultyNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'difficultyName',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  difficultyNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'difficultyName', value: ''),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  difficultyNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'difficultyName', value: ''),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  generatorVersionEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'generatorVersion', value: value),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
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

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
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

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
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

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
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

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
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

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
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

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  initialGridElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'initialGrid', value: value),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  initialGridElementGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'initialGrid',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  initialGridElementLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'initialGrid',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  initialGridElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'initialGrid',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  initialGridLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'initialGrid', length, true, length, true);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  initialGridIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'initialGrid', 0, true, 0, true);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  initialGridIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'initialGrid', 0, false, 999999, true);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  initialGridLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'initialGrid', 0, true, length, include);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  initialGridLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'initialGrid', length, include, 999999, true);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  initialGridLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'initialGrid',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  metadataJsonEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'metadataJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  metadataJsonGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'metadataJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  metadataJsonLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'metadataJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  metadataJsonBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'metadataJson',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  metadataJsonStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'metadataJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  metadataJsonEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'metadataJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  metadataJsonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'metadataJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  metadataJsonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'metadataJson',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  metadataJsonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'metadataJson', value: ''),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  metadataJsonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'metadataJson', value: ''),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
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

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
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

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
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

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
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

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
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

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
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

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
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

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
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

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  puzzleIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'puzzleId', value: ''),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  puzzleIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'puzzleId', value: ''),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  ratingEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'rating', value: value),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  ratingGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'rating',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  ratingLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'rating',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  ratingBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'rating',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  seedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'seed'),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  seedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'seed'),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  seedEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'seed',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  seedGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'seed',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  seedLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'seed',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  seedBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'seed',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  seedStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'seed',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  seedEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'seed',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  seedContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'seed',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  seedMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'seed',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  seedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'seed', value: ''),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  seedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'seed', value: ''),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  solutionGridElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'solutionGrid', value: value),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  solutionGridElementGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'solutionGrid',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  solutionGridElementLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'solutionGrid',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  solutionGridElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'solutionGrid',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  solutionGridLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'solutionGrid', length, true, length, true);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  solutionGridIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'solutionGrid', 0, true, 0, true);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  solutionGridIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'solutionGrid', 0, false, 999999, true);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  solutionGridLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'solutionGrid', 0, true, length, include);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  solutionGridLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'solutionGrid', length, include, 999999, true);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  solutionGridLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'solutionGrid',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  sourceNameEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'sourceName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  sourceNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'sourceName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  sourceNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'sourceName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  sourceNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'sourceName',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  sourceNameStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'sourceName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  sourceNameEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'sourceName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  sourceNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'sourceName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  sourceNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'sourceName',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  sourceNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'sourceName', value: ''),
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterFilterCondition>
  sourceNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'sourceName', value: ''),
      );
    });
  }
}

extension SudokuPuzzleRecordQueryObject
    on QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QFilterCondition> {}

extension SudokuPuzzleRecordQueryLinks
    on QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QFilterCondition> {}

extension SudokuPuzzleRecordQuerySortBy
    on QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QSortBy> {
  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  sortByDifficultyName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'difficultyName', Sort.asc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  sortByDifficultyNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'difficultyName', Sort.desc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  sortByGeneratorVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'generatorVersion', Sort.asc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  sortByGeneratorVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'generatorVersion', Sort.desc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  sortByMetadataJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'metadataJson', Sort.asc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  sortByMetadataJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'metadataJson', Sort.desc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  sortByPuzzleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puzzleId', Sort.asc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  sortByPuzzleIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puzzleId', Sort.desc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  sortByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.asc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  sortByRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.desc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  sortBySeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seed', Sort.asc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  sortBySeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seed', Sort.desc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  sortBySourceName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sourceName', Sort.asc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  sortBySourceNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sourceName', Sort.desc);
    });
  }
}

extension SudokuPuzzleRecordQuerySortThenBy
    on QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QSortThenBy> {
  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  thenByDifficultyName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'difficultyName', Sort.asc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  thenByDifficultyNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'difficultyName', Sort.desc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  thenByGeneratorVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'generatorVersion', Sort.asc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  thenByGeneratorVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'generatorVersion', Sort.desc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  thenByMetadataJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'metadataJson', Sort.asc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  thenByMetadataJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'metadataJson', Sort.desc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  thenByPuzzleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puzzleId', Sort.asc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  thenByPuzzleIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puzzleId', Sort.desc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  thenByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.asc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  thenByRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.desc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  thenBySeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seed', Sort.asc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  thenBySeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seed', Sort.desc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  thenBySourceName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sourceName', Sort.asc);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QAfterSortBy>
  thenBySourceNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sourceName', Sort.desc);
    });
  }
}

extension SudokuPuzzleRecordQueryWhereDistinct
    on QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QDistinct> {
  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QDistinct>
  distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QDistinct>
  distinctByDifficultyName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(
        r'difficultyName',
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QDistinct>
  distinctByGeneratorVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'generatorVersion');
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QDistinct>
  distinctByInitialGrid() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'initialGrid');
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QDistinct>
  distinctByMetadataJson({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'metadataJson', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QDistinct>
  distinctByPuzzleId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'puzzleId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QDistinct>
  distinctByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rating');
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QDistinct>
  distinctBySeed({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'seed', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QDistinct>
  distinctBySolutionGrid() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'solutionGrid');
    });
  }

  QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QDistinct>
  distinctBySourceName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sourceName', caseSensitive: caseSensitive);
    });
  }
}

extension SudokuPuzzleRecordQueryProperty
    on QueryBuilder<SudokuPuzzleRecord, SudokuPuzzleRecord, QQueryProperty> {
  QueryBuilder<SudokuPuzzleRecord, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SudokuPuzzleRecord, DateTime, QQueryOperations>
  createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<SudokuPuzzleRecord, String, QQueryOperations>
  difficultyNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'difficultyName');
    });
  }

  QueryBuilder<SudokuPuzzleRecord, int, QQueryOperations>
  generatorVersionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'generatorVersion');
    });
  }

  QueryBuilder<SudokuPuzzleRecord, List<int>, QQueryOperations>
  initialGridProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'initialGrid');
    });
  }

  QueryBuilder<SudokuPuzzleRecord, String, QQueryOperations>
  metadataJsonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'metadataJson');
    });
  }

  QueryBuilder<SudokuPuzzleRecord, String, QQueryOperations>
  puzzleIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'puzzleId');
    });
  }

  QueryBuilder<SudokuPuzzleRecord, int, QQueryOperations> ratingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rating');
    });
  }

  QueryBuilder<SudokuPuzzleRecord, String?, QQueryOperations> seedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'seed');
    });
  }

  QueryBuilder<SudokuPuzzleRecord, List<int>, QQueryOperations>
  solutionGridProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'solutionGrid');
    });
  }

  QueryBuilder<SudokuPuzzleRecord, String, QQueryOperations>
  sourceNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sourceName');
    });
  }
}
