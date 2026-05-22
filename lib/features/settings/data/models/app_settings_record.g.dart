// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings_record.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAppSettingsRecordCollection on Isar {
  IsarCollection<AppSettingsRecord> get appSettingsRecords => this.collection();
}

const AppSettingsRecordSchema = CollectionSchema(
  name: r'AppSettingsRecord',
  id: -5800169138830006153,
  properties: {
    r'autoClearNotes': PropertySchema(
      id: 0,
      name: r'autoClearNotes',
      type: IsarType.bool,
    ),
    r'colorThemeName': PropertySchema(
      id: 1,
      name: r'colorThemeName',
      type: IsarType.string,
    ),
    r'createdAt': PropertySchema(
      id: 2,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'hapticsEnabled': PropertySchema(
      id: 3,
      name: r'hapticsEnabled',
      type: IsarType.bool,
    ),
    r'highlightConflicts': PropertySchema(
      id: 4,
      name: r'highlightConflicts',
      type: IsarType.bool,
    ),
    r'highlightSameNumbers': PropertySchema(
      id: 5,
      name: r'highlightSameNumbers',
      type: IsarType.bool,
    ),
    r'highlightSelectedPeers': PropertySchema(
      id: 6,
      name: r'highlightSelectedPeers',
      type: IsarType.bool,
    ),
    r'leftHandedMode': PropertySchema(
      id: 7,
      name: r'leftHandedMode',
      type: IsarType.bool,
    ),
    r'localeCode': PropertySchema(
      id: 8,
      name: r'localeCode',
      type: IsarType.string,
    ),
    r'mistakeCheckingModeName': PropertySchema(
      id: 9,
      name: r'mistakeCheckingModeName',
      type: IsarType.string,
    ),
    r'mistakeLimit': PropertySchema(
      id: 10,
      name: r'mistakeLimit',
      type: IsarType.long,
    ),
    r'mistakeLimitEnabled': PropertySchema(
      id: 11,
      name: r'mistakeLimitEnabled',
      type: IsarType.bool,
    ),
    r'onboardingCompleted': PropertySchema(
      id: 12,
      name: r'onboardingCompleted',
      type: IsarType.bool,
    ),
    r'reduceMotion': PropertySchema(
      id: 13,
      name: r'reduceMotion',
      type: IsarType.bool,
    ),
    r'settingsId': PropertySchema(
      id: 14,
      name: r'settingsId',
      type: IsarType.string,
    ),
    r'soundEnabled': PropertySchema(
      id: 15,
      name: r'soundEnabled',
      type: IsarType.bool,
    ),
    r'themePreferenceName': PropertySchema(
      id: 16,
      name: r'themePreferenceName',
      type: IsarType.string,
    ),
    r'timerVisible': PropertySchema(
      id: 17,
      name: r'timerVisible',
      type: IsarType.bool,
    ),
    r'updatedAt': PropertySchema(
      id: 18,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
  },

  estimateSize: _appSettingsRecordEstimateSize,
  serialize: _appSettingsRecordSerialize,
  deserialize: _appSettingsRecordDeserialize,
  deserializeProp: _appSettingsRecordDeserializeProp,
  idName: r'id',
  indexes: {
    r'settingsId': IndexSchema(
      id: -4428449816366672166,
      name: r'settingsId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'settingsId',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _appSettingsRecordGetId,
  getLinks: _appSettingsRecordGetLinks,
  attach: _appSettingsRecordAttach,
  version: '3.3.2',
);

int _appSettingsRecordEstimateSize(
  AppSettingsRecord object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.colorThemeName.length * 3;
  bytesCount += 3 + object.localeCode.length * 3;
  bytesCount += 3 + object.mistakeCheckingModeName.length * 3;
  bytesCount += 3 + object.settingsId.length * 3;
  bytesCount += 3 + object.themePreferenceName.length * 3;
  return bytesCount;
}

void _appSettingsRecordSerialize(
  AppSettingsRecord object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.autoClearNotes);
  writer.writeString(offsets[1], object.colorThemeName);
  writer.writeDateTime(offsets[2], object.createdAt);
  writer.writeBool(offsets[3], object.hapticsEnabled);
  writer.writeBool(offsets[4], object.highlightConflicts);
  writer.writeBool(offsets[5], object.highlightSameNumbers);
  writer.writeBool(offsets[6], object.highlightSelectedPeers);
  writer.writeBool(offsets[7], object.leftHandedMode);
  writer.writeString(offsets[8], object.localeCode);
  writer.writeString(offsets[9], object.mistakeCheckingModeName);
  writer.writeLong(offsets[10], object.mistakeLimit);
  writer.writeBool(offsets[11], object.mistakeLimitEnabled);
  writer.writeBool(offsets[12], object.onboardingCompleted);
  writer.writeBool(offsets[13], object.reduceMotion);
  writer.writeString(offsets[14], object.settingsId);
  writer.writeBool(offsets[15], object.soundEnabled);
  writer.writeString(offsets[16], object.themePreferenceName);
  writer.writeBool(offsets[17], object.timerVisible);
  writer.writeDateTime(offsets[18], object.updatedAt);
}

AppSettingsRecord _appSettingsRecordDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AppSettingsRecord();
  object.autoClearNotes = reader.readBool(offsets[0]);
  object.colorThemeName = reader.readString(offsets[1]);
  object.createdAt = reader.readDateTime(offsets[2]);
  object.hapticsEnabled = reader.readBool(offsets[3]);
  object.highlightConflicts = reader.readBool(offsets[4]);
  object.highlightSameNumbers = reader.readBool(offsets[5]);
  object.highlightSelectedPeers = reader.readBool(offsets[6]);
  object.id = id;
  object.leftHandedMode = reader.readBool(offsets[7]);
  object.localeCode = reader.readString(offsets[8]);
  object.mistakeCheckingModeName = reader.readString(offsets[9]);
  object.mistakeLimit = reader.readLong(offsets[10]);
  object.mistakeLimitEnabled = reader.readBool(offsets[11]);
  object.onboardingCompleted = reader.readBool(offsets[12]);
  object.reduceMotion = reader.readBool(offsets[13]);
  object.settingsId = reader.readString(offsets[14]);
  object.soundEnabled = reader.readBool(offsets[15]);
  object.themePreferenceName = reader.readString(offsets[16]);
  object.timerVisible = reader.readBool(offsets[17]);
  object.updatedAt = reader.readDateTime(offsets[18]);
  return object;
}

P _appSettingsRecordDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readBool(offset)) as P;
    case 7:
      return (reader.readBool(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readLong(offset)) as P;
    case 11:
      return (reader.readBool(offset)) as P;
    case 12:
      return (reader.readBool(offset)) as P;
    case 13:
      return (reader.readBool(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readBool(offset)) as P;
    case 16:
      return (reader.readString(offset)) as P;
    case 17:
      return (reader.readBool(offset)) as P;
    case 18:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _appSettingsRecordGetId(AppSettingsRecord object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _appSettingsRecordGetLinks(
  AppSettingsRecord object,
) {
  return [];
}

void _appSettingsRecordAttach(
  IsarCollection<dynamic> col,
  Id id,
  AppSettingsRecord object,
) {
  object.id = id;
}

extension AppSettingsRecordByIndex on IsarCollection<AppSettingsRecord> {
  Future<AppSettingsRecord?> getBySettingsId(String settingsId) {
    return getByIndex(r'settingsId', [settingsId]);
  }

  AppSettingsRecord? getBySettingsIdSync(String settingsId) {
    return getByIndexSync(r'settingsId', [settingsId]);
  }

  Future<bool> deleteBySettingsId(String settingsId) {
    return deleteByIndex(r'settingsId', [settingsId]);
  }

  bool deleteBySettingsIdSync(String settingsId) {
    return deleteByIndexSync(r'settingsId', [settingsId]);
  }

  Future<List<AppSettingsRecord?>> getAllBySettingsId(
    List<String> settingsIdValues,
  ) {
    final values = settingsIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'settingsId', values);
  }

  List<AppSettingsRecord?> getAllBySettingsIdSync(
    List<String> settingsIdValues,
  ) {
    final values = settingsIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'settingsId', values);
  }

  Future<int> deleteAllBySettingsId(List<String> settingsIdValues) {
    final values = settingsIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'settingsId', values);
  }

  int deleteAllBySettingsIdSync(List<String> settingsIdValues) {
    final values = settingsIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'settingsId', values);
  }

  Future<Id> putBySettingsId(AppSettingsRecord object) {
    return putByIndex(r'settingsId', object);
  }

  Id putBySettingsIdSync(AppSettingsRecord object, {bool saveLinks = true}) {
    return putByIndexSync(r'settingsId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllBySettingsId(List<AppSettingsRecord> objects) {
    return putAllByIndex(r'settingsId', objects);
  }

  List<Id> putAllBySettingsIdSync(
    List<AppSettingsRecord> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(r'settingsId', objects, saveLinks: saveLinks);
  }
}

extension AppSettingsRecordQueryWhereSort
    on QueryBuilder<AppSettingsRecord, AppSettingsRecord, QWhere> {
  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AppSettingsRecordQueryWhere
    on QueryBuilder<AppSettingsRecord, AppSettingsRecord, QWhereClause> {
  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterWhereClause>
  idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterWhereClause>
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

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterWhereClause>
  idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterWhereClause>
  idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterWhereClause>
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

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterWhereClause>
  settingsIdEqualTo(String settingsId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'settingsId', value: [settingsId]),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterWhereClause>
  settingsIdNotEqualTo(String settingsId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'settingsId',
                lower: [],
                upper: [settingsId],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'settingsId',
                lower: [settingsId],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'settingsId',
                lower: [settingsId],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'settingsId',
                lower: [],
                upper: [settingsId],
                includeUpper: false,
              ),
            );
      }
    });
  }
}

extension AppSettingsRecordQueryFilter
    on QueryBuilder<AppSettingsRecord, AppSettingsRecord, QFilterCondition> {
  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  autoClearNotesEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'autoClearNotes', value: value),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  colorThemeNameEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'colorThemeName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  colorThemeNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'colorThemeName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  colorThemeNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'colorThemeName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  colorThemeNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'colorThemeName',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  colorThemeNameStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'colorThemeName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  colorThemeNameEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'colorThemeName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  colorThemeNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'colorThemeName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  colorThemeNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'colorThemeName',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  colorThemeNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'colorThemeName', value: ''),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  colorThemeNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'colorThemeName', value: ''),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'createdAt', value: value),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
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

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
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

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
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

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  hapticsEnabledEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'hapticsEnabled', value: value),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  highlightConflictsEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'highlightConflicts', value: value),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  highlightSameNumbersEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'highlightSameNumbers',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  highlightSelectedPeersEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'highlightSelectedPeers',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
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

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
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

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
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

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  leftHandedModeEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'leftHandedMode', value: value),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  localeCodeEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'localeCode',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  localeCodeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'localeCode',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  localeCodeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'localeCode',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  localeCodeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'localeCode',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  localeCodeStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'localeCode',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  localeCodeEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'localeCode',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  localeCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'localeCode',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  localeCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'localeCode',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  localeCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'localeCode', value: ''),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  localeCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'localeCode', value: ''),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  mistakeCheckingModeNameEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'mistakeCheckingModeName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  mistakeCheckingModeNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'mistakeCheckingModeName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  mistakeCheckingModeNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'mistakeCheckingModeName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  mistakeCheckingModeNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'mistakeCheckingModeName',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  mistakeCheckingModeNameStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'mistakeCheckingModeName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  mistakeCheckingModeNameEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'mistakeCheckingModeName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  mistakeCheckingModeNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'mistakeCheckingModeName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  mistakeCheckingModeNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'mistakeCheckingModeName',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  mistakeCheckingModeNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'mistakeCheckingModeName',
          value: '',
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  mistakeCheckingModeNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          property: r'mistakeCheckingModeName',
          value: '',
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  mistakeLimitEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'mistakeLimit', value: value),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
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

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
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

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
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

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  mistakeLimitEnabledEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'mistakeLimitEnabled', value: value),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  onboardingCompletedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'onboardingCompleted', value: value),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  reduceMotionEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'reduceMotion', value: value),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  settingsIdEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'settingsId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  settingsIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'settingsId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  settingsIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'settingsId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  settingsIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'settingsId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  settingsIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'settingsId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  settingsIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'settingsId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  settingsIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'settingsId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  settingsIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'settingsId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  settingsIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'settingsId', value: ''),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  settingsIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'settingsId', value: ''),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  soundEnabledEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'soundEnabled', value: value),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  themePreferenceNameEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'themePreferenceName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  themePreferenceNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'themePreferenceName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  themePreferenceNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'themePreferenceName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  themePreferenceNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'themePreferenceName',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  themePreferenceNameStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'themePreferenceName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  themePreferenceNameEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'themePreferenceName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  themePreferenceNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'themePreferenceName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  themePreferenceNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'themePreferenceName',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  themePreferenceNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'themePreferenceName', value: ''),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  themePreferenceNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          property: r'themePreferenceName',
          value: '',
        ),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  timerVisibleEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'timerVisible', value: value),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
  updatedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'updatedAt', value: value),
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
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

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
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

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterFilterCondition>
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

extension AppSettingsRecordQueryObject
    on QueryBuilder<AppSettingsRecord, AppSettingsRecord, QFilterCondition> {}

extension AppSettingsRecordQueryLinks
    on QueryBuilder<AppSettingsRecord, AppSettingsRecord, QFilterCondition> {}

extension AppSettingsRecordQuerySortBy
    on QueryBuilder<AppSettingsRecord, AppSettingsRecord, QSortBy> {
  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByAutoClearNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'autoClearNotes', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByAutoClearNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'autoClearNotes', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByColorThemeName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorThemeName', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByColorThemeNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorThemeName', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByHapticsEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hapticsEnabled', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByHapticsEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hapticsEnabled', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByHighlightConflicts() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'highlightConflicts', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByHighlightConflictsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'highlightConflicts', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByHighlightSameNumbers() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'highlightSameNumbers', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByHighlightSameNumbersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'highlightSameNumbers', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByHighlightSelectedPeers() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'highlightSelectedPeers', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByHighlightSelectedPeersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'highlightSelectedPeers', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByLeftHandedMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftHandedMode', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByLeftHandedModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftHandedMode', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByLocaleCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localeCode', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByLocaleCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localeCode', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByMistakeCheckingModeName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mistakeCheckingModeName', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByMistakeCheckingModeNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mistakeCheckingModeName', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByMistakeLimit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mistakeLimit', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByMistakeLimitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mistakeLimit', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByMistakeLimitEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mistakeLimitEnabled', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByMistakeLimitEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mistakeLimitEnabled', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByOnboardingCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'onboardingCompleted', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByOnboardingCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'onboardingCompleted', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByReduceMotion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reduceMotion', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByReduceMotionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reduceMotion', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortBySettingsId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'settingsId', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortBySettingsIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'settingsId', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortBySoundEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'soundEnabled', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortBySoundEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'soundEnabled', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByThemePreferenceName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themePreferenceName', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByThemePreferenceNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themePreferenceName', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByTimerVisible() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timerVisible', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByTimerVisibleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timerVisible', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension AppSettingsRecordQuerySortThenBy
    on QueryBuilder<AppSettingsRecord, AppSettingsRecord, QSortThenBy> {
  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByAutoClearNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'autoClearNotes', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByAutoClearNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'autoClearNotes', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByColorThemeName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorThemeName', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByColorThemeNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorThemeName', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByHapticsEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hapticsEnabled', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByHapticsEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hapticsEnabled', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByHighlightConflicts() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'highlightConflicts', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByHighlightConflictsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'highlightConflicts', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByHighlightSameNumbers() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'highlightSameNumbers', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByHighlightSameNumbersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'highlightSameNumbers', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByHighlightSelectedPeers() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'highlightSelectedPeers', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByHighlightSelectedPeersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'highlightSelectedPeers', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByLeftHandedMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftHandedMode', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByLeftHandedModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftHandedMode', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByLocaleCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localeCode', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByLocaleCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localeCode', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByMistakeCheckingModeName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mistakeCheckingModeName', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByMistakeCheckingModeNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mistakeCheckingModeName', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByMistakeLimit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mistakeLimit', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByMistakeLimitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mistakeLimit', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByMistakeLimitEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mistakeLimitEnabled', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByMistakeLimitEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mistakeLimitEnabled', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByOnboardingCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'onboardingCompleted', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByOnboardingCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'onboardingCompleted', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByReduceMotion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reduceMotion', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByReduceMotionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reduceMotion', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenBySettingsId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'settingsId', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenBySettingsIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'settingsId', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenBySoundEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'soundEnabled', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenBySoundEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'soundEnabled', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByThemePreferenceName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themePreferenceName', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByThemePreferenceNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themePreferenceName', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByTimerVisible() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timerVisible', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByTimerVisibleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timerVisible', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QAfterSortBy>
  thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension AppSettingsRecordQueryWhereDistinct
    on QueryBuilder<AppSettingsRecord, AppSettingsRecord, QDistinct> {
  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QDistinct>
  distinctByAutoClearNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'autoClearNotes');
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QDistinct>
  distinctByColorThemeName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(
        r'colorThemeName',
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QDistinct>
  distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QDistinct>
  distinctByHapticsEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hapticsEnabled');
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QDistinct>
  distinctByHighlightConflicts() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'highlightConflicts');
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QDistinct>
  distinctByHighlightSameNumbers() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'highlightSameNumbers');
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QDistinct>
  distinctByHighlightSelectedPeers() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'highlightSelectedPeers');
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QDistinct>
  distinctByLeftHandedMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leftHandedMode');
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QDistinct>
  distinctByLocaleCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'localeCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QDistinct>
  distinctByMistakeCheckingModeName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(
        r'mistakeCheckingModeName',
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QDistinct>
  distinctByMistakeLimit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mistakeLimit');
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QDistinct>
  distinctByMistakeLimitEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mistakeLimitEnabled');
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QDistinct>
  distinctByOnboardingCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'onboardingCompleted');
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QDistinct>
  distinctByReduceMotion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reduceMotion');
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QDistinct>
  distinctBySettingsId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'settingsId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QDistinct>
  distinctBySoundEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'soundEnabled');
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QDistinct>
  distinctByThemePreferenceName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(
        r'themePreferenceName',
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QDistinct>
  distinctByTimerVisible() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timerVisible');
    });
  }

  QueryBuilder<AppSettingsRecord, AppSettingsRecord, QDistinct>
  distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }
}

extension AppSettingsRecordQueryProperty
    on QueryBuilder<AppSettingsRecord, AppSettingsRecord, QQueryProperty> {
  QueryBuilder<AppSettingsRecord, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AppSettingsRecord, bool, QQueryOperations>
  autoClearNotesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'autoClearNotes');
    });
  }

  QueryBuilder<AppSettingsRecord, String, QQueryOperations>
  colorThemeNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'colorThemeName');
    });
  }

  QueryBuilder<AppSettingsRecord, DateTime, QQueryOperations>
  createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<AppSettingsRecord, bool, QQueryOperations>
  hapticsEnabledProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hapticsEnabled');
    });
  }

  QueryBuilder<AppSettingsRecord, bool, QQueryOperations>
  highlightConflictsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'highlightConflicts');
    });
  }

  QueryBuilder<AppSettingsRecord, bool, QQueryOperations>
  highlightSameNumbersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'highlightSameNumbers');
    });
  }

  QueryBuilder<AppSettingsRecord, bool, QQueryOperations>
  highlightSelectedPeersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'highlightSelectedPeers');
    });
  }

  QueryBuilder<AppSettingsRecord, bool, QQueryOperations>
  leftHandedModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leftHandedMode');
    });
  }

  QueryBuilder<AppSettingsRecord, String, QQueryOperations>
  localeCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'localeCode');
    });
  }

  QueryBuilder<AppSettingsRecord, String, QQueryOperations>
  mistakeCheckingModeNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mistakeCheckingModeName');
    });
  }

  QueryBuilder<AppSettingsRecord, int, QQueryOperations>
  mistakeLimitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mistakeLimit');
    });
  }

  QueryBuilder<AppSettingsRecord, bool, QQueryOperations>
  mistakeLimitEnabledProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mistakeLimitEnabled');
    });
  }

  QueryBuilder<AppSettingsRecord, bool, QQueryOperations>
  onboardingCompletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'onboardingCompleted');
    });
  }

  QueryBuilder<AppSettingsRecord, bool, QQueryOperations>
  reduceMotionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reduceMotion');
    });
  }

  QueryBuilder<AppSettingsRecord, String, QQueryOperations>
  settingsIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'settingsId');
    });
  }

  QueryBuilder<AppSettingsRecord, bool, QQueryOperations>
  soundEnabledProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'soundEnabled');
    });
  }

  QueryBuilder<AppSettingsRecord, String, QQueryOperations>
  themePreferenceNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'themePreferenceName');
    });
  }

  QueryBuilder<AppSettingsRecord, bool, QQueryOperations>
  timerVisibleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timerVisible');
    });
  }

  QueryBuilder<AppSettingsRecord, DateTime, QQueryOperations>
  updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }
}
