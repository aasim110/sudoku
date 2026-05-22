// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achievement_record.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAchievementRecordCollection on Isar {
  IsarCollection<AchievementRecord> get achievementRecords => this.collection();
}

const AchievementRecordSchema = CollectionSchema(
  name: r'AchievementRecord',
  id: -1070024795934703256,
  properties: {
    r'achievementId': PropertySchema(
      id: 0,
      name: r'achievementId',
      type: IsarType.string,
    ),
    r'description': PropertySchema(
      id: 1,
      name: r'description',
      type: IsarType.string,
    ),
    r'isUnlocked': PropertySchema(
      id: 2,
      name: r'isUnlocked',
      type: IsarType.bool,
    ),
    r'metadataJson': PropertySchema(
      id: 3,
      name: r'metadataJson',
      type: IsarType.string,
    ),
    r'progress': PropertySchema(id: 4, name: r'progress', type: IsarType.long),
    r'rarityName': PropertySchema(
      id: 5,
      name: r'rarityName',
      type: IsarType.string,
    ),
    r'target': PropertySchema(id: 6, name: r'target', type: IsarType.long),
    r'title': PropertySchema(id: 7, name: r'title', type: IsarType.string),
    r'typeName': PropertySchema(
      id: 8,
      name: r'typeName',
      type: IsarType.string,
    ),
    r'unlockedAt': PropertySchema(
      id: 9,
      name: r'unlockedAt',
      type: IsarType.dateTime,
    ),
  },

  estimateSize: _achievementRecordEstimateSize,
  serialize: _achievementRecordSerialize,
  deserialize: _achievementRecordDeserialize,
  deserializeProp: _achievementRecordDeserializeProp,
  idName: r'id',
  indexes: {
    r'achievementId': IndexSchema(
      id: 547487615361511857,
      name: r'achievementId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'achievementId',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _achievementRecordGetId,
  getLinks: _achievementRecordGetLinks,
  attach: _achievementRecordAttach,
  version: '3.3.2',
);

int _achievementRecordEstimateSize(
  AchievementRecord object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.achievementId.length * 3;
  bytesCount += 3 + object.description.length * 3;
  bytesCount += 3 + object.metadataJson.length * 3;
  bytesCount += 3 + object.rarityName.length * 3;
  bytesCount += 3 + object.title.length * 3;
  bytesCount += 3 + object.typeName.length * 3;
  return bytesCount;
}

void _achievementRecordSerialize(
  AchievementRecord object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.achievementId);
  writer.writeString(offsets[1], object.description);
  writer.writeBool(offsets[2], object.isUnlocked);
  writer.writeString(offsets[3], object.metadataJson);
  writer.writeLong(offsets[4], object.progress);
  writer.writeString(offsets[5], object.rarityName);
  writer.writeLong(offsets[6], object.target);
  writer.writeString(offsets[7], object.title);
  writer.writeString(offsets[8], object.typeName);
  writer.writeDateTime(offsets[9], object.unlockedAt);
}

AchievementRecord _achievementRecordDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AchievementRecord();
  object.achievementId = reader.readString(offsets[0]);
  object.description = reader.readString(offsets[1]);
  object.id = id;
  object.isUnlocked = reader.readBool(offsets[2]);
  object.metadataJson = reader.readString(offsets[3]);
  object.progress = reader.readLong(offsets[4]);
  object.rarityName = reader.readString(offsets[5]);
  object.target = reader.readLong(offsets[6]);
  object.title = reader.readString(offsets[7]);
  object.typeName = reader.readString(offsets[8]);
  object.unlockedAt = reader.readDateTimeOrNull(offsets[9]);
  return object;
}

P _achievementRecordDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _achievementRecordGetId(AchievementRecord object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _achievementRecordGetLinks(
  AchievementRecord object,
) {
  return [];
}

void _achievementRecordAttach(
  IsarCollection<dynamic> col,
  Id id,
  AchievementRecord object,
) {
  object.id = id;
}

extension AchievementRecordByIndex on IsarCollection<AchievementRecord> {
  Future<AchievementRecord?> getByAchievementId(String achievementId) {
    return getByIndex(r'achievementId', [achievementId]);
  }

  AchievementRecord? getByAchievementIdSync(String achievementId) {
    return getByIndexSync(r'achievementId', [achievementId]);
  }

  Future<bool> deleteByAchievementId(String achievementId) {
    return deleteByIndex(r'achievementId', [achievementId]);
  }

  bool deleteByAchievementIdSync(String achievementId) {
    return deleteByIndexSync(r'achievementId', [achievementId]);
  }

  Future<List<AchievementRecord?>> getAllByAchievementId(
    List<String> achievementIdValues,
  ) {
    final values = achievementIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'achievementId', values);
  }

  List<AchievementRecord?> getAllByAchievementIdSync(
    List<String> achievementIdValues,
  ) {
    final values = achievementIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'achievementId', values);
  }

  Future<int> deleteAllByAchievementId(List<String> achievementIdValues) {
    final values = achievementIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'achievementId', values);
  }

  int deleteAllByAchievementIdSync(List<String> achievementIdValues) {
    final values = achievementIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'achievementId', values);
  }

  Future<Id> putByAchievementId(AchievementRecord object) {
    return putByIndex(r'achievementId', object);
  }

  Id putByAchievementIdSync(AchievementRecord object, {bool saveLinks = true}) {
    return putByIndexSync(r'achievementId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByAchievementId(List<AchievementRecord> objects) {
    return putAllByIndex(r'achievementId', objects);
  }

  List<Id> putAllByAchievementIdSync(
    List<AchievementRecord> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(r'achievementId', objects, saveLinks: saveLinks);
  }
}

extension AchievementRecordQueryWhereSort
    on QueryBuilder<AchievementRecord, AchievementRecord, QWhere> {
  QueryBuilder<AchievementRecord, AchievementRecord, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AchievementRecordQueryWhere
    on QueryBuilder<AchievementRecord, AchievementRecord, QWhereClause> {
  QueryBuilder<AchievementRecord, AchievementRecord, QAfterWhereClause>
  idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterWhereClause>
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

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterWhereClause>
  idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterWhereClause>
  idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterWhereClause>
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

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterWhereClause>
  achievementIdEqualTo(String achievementId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(
          indexName: r'achievementId',
          value: [achievementId],
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterWhereClause>
  achievementIdNotEqualTo(String achievementId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'achievementId',
                lower: [],
                upper: [achievementId],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'achievementId',
                lower: [achievementId],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'achievementId',
                lower: [achievementId],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'achievementId',
                lower: [],
                upper: [achievementId],
                includeUpper: false,
              ),
            );
      }
    });
  }
}

extension AchievementRecordQueryFilter
    on QueryBuilder<AchievementRecord, AchievementRecord, QFilterCondition> {
  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  achievementIdEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'achievementId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  achievementIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'achievementId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  achievementIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'achievementId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  achievementIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'achievementId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  achievementIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'achievementId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  achievementIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'achievementId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  achievementIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'achievementId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  achievementIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'achievementId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  achievementIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'achievementId', value: ''),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  achievementIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'achievementId', value: ''),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  descriptionEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  descriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  descriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  descriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'description',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  descriptionStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  descriptionEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'description',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'description', value: ''),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'description', value: ''),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
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

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
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

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
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

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  isUnlockedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'isUnlocked', value: value),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
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

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
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

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
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

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
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

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
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

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
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

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
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

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
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

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  metadataJsonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'metadataJson', value: ''),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  metadataJsonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'metadataJson', value: ''),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  progressEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'progress', value: value),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  progressGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'progress',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  progressLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'progress',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  progressBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'progress',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  rarityNameEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'rarityName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  rarityNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'rarityName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  rarityNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'rarityName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  rarityNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'rarityName',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  rarityNameStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'rarityName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  rarityNameEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'rarityName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  rarityNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'rarityName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  rarityNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'rarityName',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  rarityNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'rarityName', value: ''),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  rarityNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'rarityName', value: ''),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  targetEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'target', value: value),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  targetGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'target',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  targetLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'target',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  targetBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'target',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  titleEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'title',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  titleStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  titleEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  titleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  titleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'title',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'title', value: ''),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'title', value: ''),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  typeNameEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'typeName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  typeNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'typeName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  typeNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'typeName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  typeNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'typeName',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  typeNameStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'typeName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  typeNameEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'typeName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  typeNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'typeName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  typeNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'typeName',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  typeNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'typeName', value: ''),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  typeNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'typeName', value: ''),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  unlockedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'unlockedAt'),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  unlockedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'unlockedAt'),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  unlockedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'unlockedAt', value: value),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  unlockedAtGreaterThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'unlockedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  unlockedAtLessThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'unlockedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterFilterCondition>
  unlockedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'unlockedAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension AchievementRecordQueryObject
    on QueryBuilder<AchievementRecord, AchievementRecord, QFilterCondition> {}

extension AchievementRecordQueryLinks
    on QueryBuilder<AchievementRecord, AchievementRecord, QFilterCondition> {}

extension AchievementRecordQuerySortBy
    on QueryBuilder<AchievementRecord, AchievementRecord, QSortBy> {
  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  sortByAchievementId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementId', Sort.asc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  sortByAchievementIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementId', Sort.desc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  sortByIsUnlocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isUnlocked', Sort.asc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  sortByIsUnlockedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isUnlocked', Sort.desc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  sortByMetadataJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'metadataJson', Sort.asc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  sortByMetadataJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'metadataJson', Sort.desc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  sortByProgress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progress', Sort.asc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  sortByProgressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progress', Sort.desc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  sortByRarityName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rarityName', Sort.asc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  sortByRarityNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rarityName', Sort.desc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  sortByTarget() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'target', Sort.asc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  sortByTargetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'target', Sort.desc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  sortByTypeName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeName', Sort.asc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  sortByTypeNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeName', Sort.desc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  sortByUnlockedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unlockedAt', Sort.asc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  sortByUnlockedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unlockedAt', Sort.desc);
    });
  }
}

extension AchievementRecordQuerySortThenBy
    on QueryBuilder<AchievementRecord, AchievementRecord, QSortThenBy> {
  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  thenByAchievementId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementId', Sort.asc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  thenByAchievementIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementId', Sort.desc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  thenByIsUnlocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isUnlocked', Sort.asc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  thenByIsUnlockedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isUnlocked', Sort.desc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  thenByMetadataJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'metadataJson', Sort.asc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  thenByMetadataJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'metadataJson', Sort.desc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  thenByProgress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progress', Sort.asc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  thenByProgressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progress', Sort.desc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  thenByRarityName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rarityName', Sort.asc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  thenByRarityNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rarityName', Sort.desc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  thenByTarget() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'target', Sort.asc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  thenByTargetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'target', Sort.desc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  thenByTypeName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeName', Sort.asc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  thenByTypeNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeName', Sort.desc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  thenByUnlockedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unlockedAt', Sort.asc);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QAfterSortBy>
  thenByUnlockedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unlockedAt', Sort.desc);
    });
  }
}

extension AchievementRecordQueryWhereDistinct
    on QueryBuilder<AchievementRecord, AchievementRecord, QDistinct> {
  QueryBuilder<AchievementRecord, AchievementRecord, QDistinct>
  distinctByAchievementId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(
        r'achievementId',
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QDistinct>
  distinctByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QDistinct>
  distinctByIsUnlocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isUnlocked');
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QDistinct>
  distinctByMetadataJson({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'metadataJson', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QDistinct>
  distinctByProgress() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'progress');
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QDistinct>
  distinctByRarityName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rarityName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QDistinct>
  distinctByTarget() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'target');
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QDistinct>
  distinctByTitle({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QDistinct>
  distinctByTypeName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'typeName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AchievementRecord, AchievementRecord, QDistinct>
  distinctByUnlockedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unlockedAt');
    });
  }
}

extension AchievementRecordQueryProperty
    on QueryBuilder<AchievementRecord, AchievementRecord, QQueryProperty> {
  QueryBuilder<AchievementRecord, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AchievementRecord, String, QQueryOperations>
  achievementIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'achievementId');
    });
  }

  QueryBuilder<AchievementRecord, String, QQueryOperations>
  descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<AchievementRecord, bool, QQueryOperations> isUnlockedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isUnlocked');
    });
  }

  QueryBuilder<AchievementRecord, String, QQueryOperations>
  metadataJsonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'metadataJson');
    });
  }

  QueryBuilder<AchievementRecord, int, QQueryOperations> progressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'progress');
    });
  }

  QueryBuilder<AchievementRecord, String, QQueryOperations>
  rarityNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rarityName');
    });
  }

  QueryBuilder<AchievementRecord, int, QQueryOperations> targetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'target');
    });
  }

  QueryBuilder<AchievementRecord, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<AchievementRecord, String, QQueryOperations> typeNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'typeName');
    });
  }

  QueryBuilder<AchievementRecord, DateTime?, QQueryOperations>
  unlockedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unlockedAt');
    });
  }
}
