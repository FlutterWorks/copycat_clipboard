// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appconfig.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAppConfigCollection on Isar {
  IsarCollection<AppConfig> get appConfigs => this.collection();
}

const AppConfigSchema = CollectionSchema(
  name: r'AppConfig',
  id: -7085420701237142207,
  properties: {
    r'autoSyncInterval': PropertySchema(
      id: 0,
      name: r'autoSyncInterval',
      type: IsarType.long,
    ),
    r'dontCopyOver': PropertySchema(
      id: 1,
      name: r'dontCopyOver',
      type: IsarType.long,
    ),
    r'dontUploadOver': PropertySchema(
      id: 2,
      name: r'dontUploadOver',
      type: IsarType.long,
    ),
    r'enableFileSync': PropertySchema(
      id: 3,
      name: r'enableFileSync',
      type: IsarType.bool,
    ),
    r'enableSync': PropertySchema(
      id: 4,
      name: r'enableSync',
      type: IsarType.bool,
    ),
    r'isPersisted': PropertySchema(
      id: 5,
      name: r'isPersisted',
      type: IsarType.bool,
    ),
    r'launchAtStartup': PropertySchema(
      id: 6,
      name: r'launchAtStartup',
      type: IsarType.bool,
    ),
    r'pausedTill': PropertySchema(
      id: 7,
      name: r'pausedTill',
      type: IsarType.dateTime,
    ),
    r'smartPaste': PropertySchema(
      id: 8,
      name: r'smartPaste',
      type: IsarType.bool,
    ),
    r'themeMode': PropertySchema(
      id: 9,
      name: r'themeMode',
      type: IsarType.string,
      enumMap: _AppConfigthemeModeEnumValueMap,
    ),
    r'toggleHotkey': PropertySchema(
      id: 10,
      name: r'toggleHotkey',
      type: IsarType.string,
    )
  },
  estimateSize: _appConfigEstimateSize,
  serialize: _appConfigSerialize,
  deserialize: _appConfigDeserialize,
  deserializeProp: _appConfigDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _appConfigGetId,
  getLinks: _appConfigGetLinks,
  attach: _appConfigAttach,
  version: '3.1.0+1',
);

int _appConfigEstimateSize(
  AppConfig object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.themeMode.name.length * 3;
  {
    final value = object.toggleHotkey;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _appConfigSerialize(
  AppConfig object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.autoSyncInterval);
  writer.writeLong(offsets[1], object.dontCopyOver);
  writer.writeLong(offsets[2], object.dontUploadOver);
  writer.writeBool(offsets[3], object.enableFileSync);
  writer.writeBool(offsets[4], object.enableSync);
  writer.writeBool(offsets[5], object.isPersisted);
  writer.writeBool(offsets[6], object.launchAtStartup);
  writer.writeDateTime(offsets[7], object.pausedTill);
  writer.writeBool(offsets[8], object.smartPaste);
  writer.writeString(offsets[9], object.themeMode.name);
  writer.writeString(offsets[10], object.toggleHotkey);
}

AppConfig _appConfigDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AppConfig(
    autoSyncInterval: reader.readLong(offsets[0]),
    dontCopyOver: reader.readLong(offsets[1]),
    dontUploadOver: reader.readLong(offsets[2]),
    enableFileSync: reader.readBool(offsets[3]),
    enableSync: reader.readBool(offsets[4]),
    launchAtStartup: reader.readBool(offsets[6]),
    pausedTill: reader.readDateTimeOrNull(offsets[7]),
    smartPaste: reader.readBool(offsets[8]),
    themeMode:
        _AppConfigthemeModeValueEnumMap[reader.readStringOrNull(offsets[9])] ??
            ThemeMode.system,
    toggleHotkey: reader.readStringOrNull(offsets[10]),
  );
  object.id = id;
  return object;
}

P _appConfigDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readBool(offset)) as P;
    case 7:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 8:
      return (reader.readBool(offset)) as P;
    case 9:
      return (_AppConfigthemeModeValueEnumMap[
              reader.readStringOrNull(offset)] ??
          ThemeMode.system) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _AppConfigthemeModeEnumValueMap = {
  r'system': r'system',
  r'light': r'light',
  r'dark': r'dark',
};
const _AppConfigthemeModeValueEnumMap = {
  r'system': ThemeMode.system,
  r'light': ThemeMode.light,
  r'dark': ThemeMode.dark,
};

Id _appConfigGetId(AppConfig object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _appConfigGetLinks(AppConfig object) {
  return [];
}

void _appConfigAttach(IsarCollection<dynamic> col, Id id, AppConfig object) {
  object.id = id;
}

extension AppConfigQueryWhereSort
    on QueryBuilder<AppConfig, AppConfig, QWhere> {
  QueryBuilder<AppConfig, AppConfig, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AppConfigQueryWhere
    on QueryBuilder<AppConfig, AppConfig, QWhereClause> {
  QueryBuilder<AppConfig, AppConfig, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<AppConfig, AppConfig, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AppConfigQueryFilter
    on QueryBuilder<AppConfig, AppConfig, QFilterCondition> {
  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition>
      autoSyncIntervalEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'autoSyncInterval',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition>
      autoSyncIntervalGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'autoSyncInterval',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition>
      autoSyncIntervalLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'autoSyncInterval',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition>
      autoSyncIntervalBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'autoSyncInterval',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> dontCopyOverEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dontCopyOver',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition>
      dontCopyOverGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dontCopyOver',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition>
      dontCopyOverLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dontCopyOver',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> dontCopyOverBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dontCopyOver',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition>
      dontUploadOverEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dontUploadOver',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition>
      dontUploadOverGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dontUploadOver',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition>
      dontUploadOverLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dontUploadOver',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition>
      dontUploadOverBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dontUploadOver',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition>
      enableFileSyncEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'enableFileSync',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> enableSyncEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'enableSync',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> isPersistedEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isPersisted',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition>
      launchAtStartupEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'launchAtStartup',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> pausedTillIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pausedTill',
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition>
      pausedTillIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pausedTill',
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> pausedTillEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pausedTill',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition>
      pausedTillGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pausedTill',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> pausedTillLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pausedTill',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> pausedTillBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pausedTill',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> smartPasteEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'smartPaste',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> themeModeEqualTo(
    ThemeMode value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'themeMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition>
      themeModeGreaterThan(
    ThemeMode value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'themeMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> themeModeLessThan(
    ThemeMode value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'themeMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> themeModeBetween(
    ThemeMode lower,
    ThemeMode upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'themeMode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> themeModeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'themeMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> themeModeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'themeMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> themeModeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'themeMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> themeModeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'themeMode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> themeModeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'themeMode',
        value: '',
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition>
      themeModeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'themeMode',
        value: '',
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition>
      toggleHotkeyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'toggleHotkey',
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition>
      toggleHotkeyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'toggleHotkey',
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> toggleHotkeyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'toggleHotkey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition>
      toggleHotkeyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'toggleHotkey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition>
      toggleHotkeyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'toggleHotkey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> toggleHotkeyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'toggleHotkey',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition>
      toggleHotkeyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'toggleHotkey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition>
      toggleHotkeyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'toggleHotkey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition>
      toggleHotkeyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'toggleHotkey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> toggleHotkeyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'toggleHotkey',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition>
      toggleHotkeyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'toggleHotkey',
        value: '',
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition>
      toggleHotkeyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'toggleHotkey',
        value: '',
      ));
    });
  }
}

extension AppConfigQueryObject
    on QueryBuilder<AppConfig, AppConfig, QFilterCondition> {}

extension AppConfigQueryLinks
    on QueryBuilder<AppConfig, AppConfig, QFilterCondition> {}

extension AppConfigQuerySortBy on QueryBuilder<AppConfig, AppConfig, QSortBy> {
  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> sortByAutoSyncInterval() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'autoSyncInterval', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy>
      sortByAutoSyncIntervalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'autoSyncInterval', Sort.desc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> sortByDontCopyOver() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dontCopyOver', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> sortByDontCopyOverDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dontCopyOver', Sort.desc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> sortByDontUploadOver() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dontUploadOver', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> sortByDontUploadOverDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dontUploadOver', Sort.desc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> sortByEnableFileSync() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableFileSync', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> sortByEnableFileSyncDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableFileSync', Sort.desc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> sortByEnableSync() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableSync', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> sortByEnableSyncDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableSync', Sort.desc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> sortByIsPersisted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPersisted', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> sortByIsPersistedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPersisted', Sort.desc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> sortByLaunchAtStartup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'launchAtStartup', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> sortByLaunchAtStartupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'launchAtStartup', Sort.desc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> sortByPausedTill() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pausedTill', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> sortByPausedTillDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pausedTill', Sort.desc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> sortBySmartPaste() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'smartPaste', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> sortBySmartPasteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'smartPaste', Sort.desc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> sortByThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeMode', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> sortByThemeModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeMode', Sort.desc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> sortByToggleHotkey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'toggleHotkey', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> sortByToggleHotkeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'toggleHotkey', Sort.desc);
    });
  }
}

extension AppConfigQuerySortThenBy
    on QueryBuilder<AppConfig, AppConfig, QSortThenBy> {
  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenByAutoSyncInterval() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'autoSyncInterval', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy>
      thenByAutoSyncIntervalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'autoSyncInterval', Sort.desc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenByDontCopyOver() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dontCopyOver', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenByDontCopyOverDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dontCopyOver', Sort.desc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenByDontUploadOver() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dontUploadOver', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenByDontUploadOverDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dontUploadOver', Sort.desc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenByEnableFileSync() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableFileSync', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenByEnableFileSyncDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableFileSync', Sort.desc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenByEnableSync() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableSync', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenByEnableSyncDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableSync', Sort.desc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenByIsPersisted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPersisted', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenByIsPersistedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPersisted', Sort.desc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenByLaunchAtStartup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'launchAtStartup', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenByLaunchAtStartupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'launchAtStartup', Sort.desc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenByPausedTill() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pausedTill', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenByPausedTillDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pausedTill', Sort.desc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenBySmartPaste() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'smartPaste', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenBySmartPasteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'smartPaste', Sort.desc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenByThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeMode', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenByThemeModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeMode', Sort.desc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenByToggleHotkey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'toggleHotkey', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenByToggleHotkeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'toggleHotkey', Sort.desc);
    });
  }
}

extension AppConfigQueryWhereDistinct
    on QueryBuilder<AppConfig, AppConfig, QDistinct> {
  QueryBuilder<AppConfig, AppConfig, QDistinct> distinctByAutoSyncInterval() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'autoSyncInterval');
    });
  }

  QueryBuilder<AppConfig, AppConfig, QDistinct> distinctByDontCopyOver() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dontCopyOver');
    });
  }

  QueryBuilder<AppConfig, AppConfig, QDistinct> distinctByDontUploadOver() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dontUploadOver');
    });
  }

  QueryBuilder<AppConfig, AppConfig, QDistinct> distinctByEnableFileSync() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'enableFileSync');
    });
  }

  QueryBuilder<AppConfig, AppConfig, QDistinct> distinctByEnableSync() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'enableSync');
    });
  }

  QueryBuilder<AppConfig, AppConfig, QDistinct> distinctByIsPersisted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isPersisted');
    });
  }

  QueryBuilder<AppConfig, AppConfig, QDistinct> distinctByLaunchAtStartup() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'launchAtStartup');
    });
  }

  QueryBuilder<AppConfig, AppConfig, QDistinct> distinctByPausedTill() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pausedTill');
    });
  }

  QueryBuilder<AppConfig, AppConfig, QDistinct> distinctBySmartPaste() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'smartPaste');
    });
  }

  QueryBuilder<AppConfig, AppConfig, QDistinct> distinctByThemeMode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'themeMode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QDistinct> distinctByToggleHotkey(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'toggleHotkey', caseSensitive: caseSensitive);
    });
  }
}

extension AppConfigQueryProperty
    on QueryBuilder<AppConfig, AppConfig, QQueryProperty> {
  QueryBuilder<AppConfig, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AppConfig, int, QQueryOperations> autoSyncIntervalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'autoSyncInterval');
    });
  }

  QueryBuilder<AppConfig, int, QQueryOperations> dontCopyOverProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dontCopyOver');
    });
  }

  QueryBuilder<AppConfig, int, QQueryOperations> dontUploadOverProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dontUploadOver');
    });
  }

  QueryBuilder<AppConfig, bool, QQueryOperations> enableFileSyncProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'enableFileSync');
    });
  }

  QueryBuilder<AppConfig, bool, QQueryOperations> enableSyncProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'enableSync');
    });
  }

  QueryBuilder<AppConfig, bool, QQueryOperations> isPersistedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isPersisted');
    });
  }

  QueryBuilder<AppConfig, bool, QQueryOperations> launchAtStartupProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'launchAtStartup');
    });
  }

  QueryBuilder<AppConfig, DateTime?, QQueryOperations> pausedTillProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pausedTill');
    });
  }

  QueryBuilder<AppConfig, bool, QQueryOperations> smartPasteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'smartPaste');
    });
  }

  QueryBuilder<AppConfig, ThemeMode, QQueryOperations> themeModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'themeMode');
    });
  }

  QueryBuilder<AppConfig, String?, QQueryOperations> toggleHotkeyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'toggleHotkey');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppConfigImpl _$$AppConfigImplFromJson(Map<String, dynamic> json) =>
    _$AppConfigImpl(
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.system,
      enableSync: json['enableSync'] as bool? ?? true,
      enableFileSync: json['enableFileSync'] as bool? ?? true,
      dontUploadOver: (json['dontUploadOver'] as num?)?.toInt() ?? $10MB,
      dontCopyOver: (json['dontCopyOver'] as num?)?.toInt() ?? $10MB,
      pausedTill: json['pausedTill'] == null
          ? null
          : DateTime.parse(json['pausedTill'] as String),
      autoSyncInterval: (json['autoSyncInterval'] as num?)?.toInt() ?? $90S,
      toggleHotkey: json['toggleHotkey'] as String?,
      smartPaste: json['smartPaste'] as bool? ?? false,
      launchAtStartup: json['launchAtStartup'] as bool? ?? false,
    );

Map<String, dynamic> _$$AppConfigImplToJson(_$AppConfigImpl instance) =>
    <String, dynamic>{
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'enableSync': instance.enableSync,
      'enableFileSync': instance.enableFileSync,
      'dontUploadOver': instance.dontUploadOver,
      'dontCopyOver': instance.dontCopyOver,
      'pausedTill': instance.pausedTill?.toIso8601String(),
      'autoSyncInterval': instance.autoSyncInterval,
      'toggleHotkey': instance.toggleHotkey,
      'smartPaste': instance.smartPaste,
      'launchAtStartup': instance.launchAtStartup,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
