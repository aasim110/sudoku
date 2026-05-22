// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppSettings {

 String get id; DateTime get createdAt; DateTime get updatedAt; AppThemePreference get themePreference; AppColorTheme get colorTheme; bool get soundEnabled; bool get hapticsEnabled; bool get timerVisible; bool get highlightSelectedPeers; bool get highlightSameNumbers; bool get highlightConflicts; bool get autoClearNotes; bool get leftHandedMode; bool get reduceMotion; MistakeCheckingMode get mistakeCheckingMode; bool get mistakeLimitEnabled; int get mistakeLimit; bool get onboardingCompleted; String get localeCode;
/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppSettingsCopyWith<AppSettings> get copyWith => _$AppSettingsCopyWithImpl<AppSettings>(this as AppSettings, _$identity);

  /// Serializes this AppSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppSettings&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.themePreference, themePreference) || other.themePreference == themePreference)&&(identical(other.colorTheme, colorTheme) || other.colorTheme == colorTheme)&&(identical(other.soundEnabled, soundEnabled) || other.soundEnabled == soundEnabled)&&(identical(other.hapticsEnabled, hapticsEnabled) || other.hapticsEnabled == hapticsEnabled)&&(identical(other.timerVisible, timerVisible) || other.timerVisible == timerVisible)&&(identical(other.highlightSelectedPeers, highlightSelectedPeers) || other.highlightSelectedPeers == highlightSelectedPeers)&&(identical(other.highlightSameNumbers, highlightSameNumbers) || other.highlightSameNumbers == highlightSameNumbers)&&(identical(other.highlightConflicts, highlightConflicts) || other.highlightConflicts == highlightConflicts)&&(identical(other.autoClearNotes, autoClearNotes) || other.autoClearNotes == autoClearNotes)&&(identical(other.leftHandedMode, leftHandedMode) || other.leftHandedMode == leftHandedMode)&&(identical(other.reduceMotion, reduceMotion) || other.reduceMotion == reduceMotion)&&(identical(other.mistakeCheckingMode, mistakeCheckingMode) || other.mistakeCheckingMode == mistakeCheckingMode)&&(identical(other.mistakeLimitEnabled, mistakeLimitEnabled) || other.mistakeLimitEnabled == mistakeLimitEnabled)&&(identical(other.mistakeLimit, mistakeLimit) || other.mistakeLimit == mistakeLimit)&&(identical(other.onboardingCompleted, onboardingCompleted) || other.onboardingCompleted == onboardingCompleted)&&(identical(other.localeCode, localeCode) || other.localeCode == localeCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,createdAt,updatedAt,themePreference,colorTheme,soundEnabled,hapticsEnabled,timerVisible,highlightSelectedPeers,highlightSameNumbers,highlightConflicts,autoClearNotes,leftHandedMode,reduceMotion,mistakeCheckingMode,mistakeLimitEnabled,mistakeLimit,onboardingCompleted,localeCode]);

@override
String toString() {
  return 'AppSettings(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, themePreference: $themePreference, colorTheme: $colorTheme, soundEnabled: $soundEnabled, hapticsEnabled: $hapticsEnabled, timerVisible: $timerVisible, highlightSelectedPeers: $highlightSelectedPeers, highlightSameNumbers: $highlightSameNumbers, highlightConflicts: $highlightConflicts, autoClearNotes: $autoClearNotes, leftHandedMode: $leftHandedMode, reduceMotion: $reduceMotion, mistakeCheckingMode: $mistakeCheckingMode, mistakeLimitEnabled: $mistakeLimitEnabled, mistakeLimit: $mistakeLimit, onboardingCompleted: $onboardingCompleted, localeCode: $localeCode)';
}


}

/// @nodoc
abstract mixin class $AppSettingsCopyWith<$Res>  {
  factory $AppSettingsCopyWith(AppSettings value, $Res Function(AppSettings) _then) = _$AppSettingsCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, AppThemePreference themePreference, AppColorTheme colorTheme, bool soundEnabled, bool hapticsEnabled, bool timerVisible, bool highlightSelectedPeers, bool highlightSameNumbers, bool highlightConflicts, bool autoClearNotes, bool leftHandedMode, bool reduceMotion, MistakeCheckingMode mistakeCheckingMode, bool mistakeLimitEnabled, int mistakeLimit, bool onboardingCompleted, String localeCode
});




}
/// @nodoc
class _$AppSettingsCopyWithImpl<$Res>
    implements $AppSettingsCopyWith<$Res> {
  _$AppSettingsCopyWithImpl(this._self, this._then);

  final AppSettings _self;
  final $Res Function(AppSettings) _then;

/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? themePreference = null,Object? colorTheme = null,Object? soundEnabled = null,Object? hapticsEnabled = null,Object? timerVisible = null,Object? highlightSelectedPeers = null,Object? highlightSameNumbers = null,Object? highlightConflicts = null,Object? autoClearNotes = null,Object? leftHandedMode = null,Object? reduceMotion = null,Object? mistakeCheckingMode = null,Object? mistakeLimitEnabled = null,Object? mistakeLimit = null,Object? onboardingCompleted = null,Object? localeCode = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,themePreference: null == themePreference ? _self.themePreference : themePreference // ignore: cast_nullable_to_non_nullable
as AppThemePreference,colorTheme: null == colorTheme ? _self.colorTheme : colorTheme // ignore: cast_nullable_to_non_nullable
as AppColorTheme,soundEnabled: null == soundEnabled ? _self.soundEnabled : soundEnabled // ignore: cast_nullable_to_non_nullable
as bool,hapticsEnabled: null == hapticsEnabled ? _self.hapticsEnabled : hapticsEnabled // ignore: cast_nullable_to_non_nullable
as bool,timerVisible: null == timerVisible ? _self.timerVisible : timerVisible // ignore: cast_nullable_to_non_nullable
as bool,highlightSelectedPeers: null == highlightSelectedPeers ? _self.highlightSelectedPeers : highlightSelectedPeers // ignore: cast_nullable_to_non_nullable
as bool,highlightSameNumbers: null == highlightSameNumbers ? _self.highlightSameNumbers : highlightSameNumbers // ignore: cast_nullable_to_non_nullable
as bool,highlightConflicts: null == highlightConflicts ? _self.highlightConflicts : highlightConflicts // ignore: cast_nullable_to_non_nullable
as bool,autoClearNotes: null == autoClearNotes ? _self.autoClearNotes : autoClearNotes // ignore: cast_nullable_to_non_nullable
as bool,leftHandedMode: null == leftHandedMode ? _self.leftHandedMode : leftHandedMode // ignore: cast_nullable_to_non_nullable
as bool,reduceMotion: null == reduceMotion ? _self.reduceMotion : reduceMotion // ignore: cast_nullable_to_non_nullable
as bool,mistakeCheckingMode: null == mistakeCheckingMode ? _self.mistakeCheckingMode : mistakeCheckingMode // ignore: cast_nullable_to_non_nullable
as MistakeCheckingMode,mistakeLimitEnabled: null == mistakeLimitEnabled ? _self.mistakeLimitEnabled : mistakeLimitEnabled // ignore: cast_nullable_to_non_nullable
as bool,mistakeLimit: null == mistakeLimit ? _self.mistakeLimit : mistakeLimit // ignore: cast_nullable_to_non_nullable
as int,onboardingCompleted: null == onboardingCompleted ? _self.onboardingCompleted : onboardingCompleted // ignore: cast_nullable_to_non_nullable
as bool,localeCode: null == localeCode ? _self.localeCode : localeCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AppSettings].
extension AppSettingsPatterns on AppSettings {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppSettings() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppSettings value)  $default,){
final _that = this;
switch (_that) {
case _AppSettings():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppSettings value)?  $default,){
final _that = this;
switch (_that) {
case _AppSettings() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  AppThemePreference themePreference,  AppColorTheme colorTheme,  bool soundEnabled,  bool hapticsEnabled,  bool timerVisible,  bool highlightSelectedPeers,  bool highlightSameNumbers,  bool highlightConflicts,  bool autoClearNotes,  bool leftHandedMode,  bool reduceMotion,  MistakeCheckingMode mistakeCheckingMode,  bool mistakeLimitEnabled,  int mistakeLimit,  bool onboardingCompleted,  String localeCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppSettings() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.themePreference,_that.colorTheme,_that.soundEnabled,_that.hapticsEnabled,_that.timerVisible,_that.highlightSelectedPeers,_that.highlightSameNumbers,_that.highlightConflicts,_that.autoClearNotes,_that.leftHandedMode,_that.reduceMotion,_that.mistakeCheckingMode,_that.mistakeLimitEnabled,_that.mistakeLimit,_that.onboardingCompleted,_that.localeCode);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime updatedAt,  AppThemePreference themePreference,  AppColorTheme colorTheme,  bool soundEnabled,  bool hapticsEnabled,  bool timerVisible,  bool highlightSelectedPeers,  bool highlightSameNumbers,  bool highlightConflicts,  bool autoClearNotes,  bool leftHandedMode,  bool reduceMotion,  MistakeCheckingMode mistakeCheckingMode,  bool mistakeLimitEnabled,  int mistakeLimit,  bool onboardingCompleted,  String localeCode)  $default,) {final _that = this;
switch (_that) {
case _AppSettings():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.themePreference,_that.colorTheme,_that.soundEnabled,_that.hapticsEnabled,_that.timerVisible,_that.highlightSelectedPeers,_that.highlightSameNumbers,_that.highlightConflicts,_that.autoClearNotes,_that.leftHandedMode,_that.reduceMotion,_that.mistakeCheckingMode,_that.mistakeLimitEnabled,_that.mistakeLimit,_that.onboardingCompleted,_that.localeCode);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  DateTime updatedAt,  AppThemePreference themePreference,  AppColorTheme colorTheme,  bool soundEnabled,  bool hapticsEnabled,  bool timerVisible,  bool highlightSelectedPeers,  bool highlightSameNumbers,  bool highlightConflicts,  bool autoClearNotes,  bool leftHandedMode,  bool reduceMotion,  MistakeCheckingMode mistakeCheckingMode,  bool mistakeLimitEnabled,  int mistakeLimit,  bool onboardingCompleted,  String localeCode)?  $default,) {final _that = this;
switch (_that) {
case _AppSettings() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.themePreference,_that.colorTheme,_that.soundEnabled,_that.hapticsEnabled,_that.timerVisible,_that.highlightSelectedPeers,_that.highlightSameNumbers,_that.highlightConflicts,_that.autoClearNotes,_that.leftHandedMode,_that.reduceMotion,_that.mistakeCheckingMode,_that.mistakeLimitEnabled,_that.mistakeLimit,_that.onboardingCompleted,_that.localeCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppSettings extends AppSettings {
  const _AppSettings({required this.id, required this.createdAt, required this.updatedAt, this.themePreference = AppThemePreference.system, this.colorTheme = AppColorTheme.classic, this.soundEnabled = true, this.hapticsEnabled = true, this.timerVisible = true, this.highlightSelectedPeers = true, this.highlightSameNumbers = true, this.highlightConflicts = true, this.autoClearNotes = true, this.leftHandedMode = false, this.reduceMotion = false, this.mistakeCheckingMode = MistakeCheckingMode.afterEntry, this.mistakeLimitEnabled = true, this.mistakeLimit = 3, this.onboardingCompleted = false, this.localeCode = 'en'}): super._();
  factory _AppSettings.fromJson(Map<String, dynamic> json) => _$AppSettingsFromJson(json);

@override final  String id;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override@JsonKey() final  AppThemePreference themePreference;
@override@JsonKey() final  AppColorTheme colorTheme;
@override@JsonKey() final  bool soundEnabled;
@override@JsonKey() final  bool hapticsEnabled;
@override@JsonKey() final  bool timerVisible;
@override@JsonKey() final  bool highlightSelectedPeers;
@override@JsonKey() final  bool highlightSameNumbers;
@override@JsonKey() final  bool highlightConflicts;
@override@JsonKey() final  bool autoClearNotes;
@override@JsonKey() final  bool leftHandedMode;
@override@JsonKey() final  bool reduceMotion;
@override@JsonKey() final  MistakeCheckingMode mistakeCheckingMode;
@override@JsonKey() final  bool mistakeLimitEnabled;
@override@JsonKey() final  int mistakeLimit;
@override@JsonKey() final  bool onboardingCompleted;
@override@JsonKey() final  String localeCode;

/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppSettingsCopyWith<_AppSettings> get copyWith => __$AppSettingsCopyWithImpl<_AppSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppSettings&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.themePreference, themePreference) || other.themePreference == themePreference)&&(identical(other.colorTheme, colorTheme) || other.colorTheme == colorTheme)&&(identical(other.soundEnabled, soundEnabled) || other.soundEnabled == soundEnabled)&&(identical(other.hapticsEnabled, hapticsEnabled) || other.hapticsEnabled == hapticsEnabled)&&(identical(other.timerVisible, timerVisible) || other.timerVisible == timerVisible)&&(identical(other.highlightSelectedPeers, highlightSelectedPeers) || other.highlightSelectedPeers == highlightSelectedPeers)&&(identical(other.highlightSameNumbers, highlightSameNumbers) || other.highlightSameNumbers == highlightSameNumbers)&&(identical(other.highlightConflicts, highlightConflicts) || other.highlightConflicts == highlightConflicts)&&(identical(other.autoClearNotes, autoClearNotes) || other.autoClearNotes == autoClearNotes)&&(identical(other.leftHandedMode, leftHandedMode) || other.leftHandedMode == leftHandedMode)&&(identical(other.reduceMotion, reduceMotion) || other.reduceMotion == reduceMotion)&&(identical(other.mistakeCheckingMode, mistakeCheckingMode) || other.mistakeCheckingMode == mistakeCheckingMode)&&(identical(other.mistakeLimitEnabled, mistakeLimitEnabled) || other.mistakeLimitEnabled == mistakeLimitEnabled)&&(identical(other.mistakeLimit, mistakeLimit) || other.mistakeLimit == mistakeLimit)&&(identical(other.onboardingCompleted, onboardingCompleted) || other.onboardingCompleted == onboardingCompleted)&&(identical(other.localeCode, localeCode) || other.localeCode == localeCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,createdAt,updatedAt,themePreference,colorTheme,soundEnabled,hapticsEnabled,timerVisible,highlightSelectedPeers,highlightSameNumbers,highlightConflicts,autoClearNotes,leftHandedMode,reduceMotion,mistakeCheckingMode,mistakeLimitEnabled,mistakeLimit,onboardingCompleted,localeCode]);

@override
String toString() {
  return 'AppSettings(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, themePreference: $themePreference, colorTheme: $colorTheme, soundEnabled: $soundEnabled, hapticsEnabled: $hapticsEnabled, timerVisible: $timerVisible, highlightSelectedPeers: $highlightSelectedPeers, highlightSameNumbers: $highlightSameNumbers, highlightConflicts: $highlightConflicts, autoClearNotes: $autoClearNotes, leftHandedMode: $leftHandedMode, reduceMotion: $reduceMotion, mistakeCheckingMode: $mistakeCheckingMode, mistakeLimitEnabled: $mistakeLimitEnabled, mistakeLimit: $mistakeLimit, onboardingCompleted: $onboardingCompleted, localeCode: $localeCode)';
}


}

/// @nodoc
abstract mixin class _$AppSettingsCopyWith<$Res> implements $AppSettingsCopyWith<$Res> {
  factory _$AppSettingsCopyWith(_AppSettings value, $Res Function(_AppSettings) _then) = __$AppSettingsCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, DateTime updatedAt, AppThemePreference themePreference, AppColorTheme colorTheme, bool soundEnabled, bool hapticsEnabled, bool timerVisible, bool highlightSelectedPeers, bool highlightSameNumbers, bool highlightConflicts, bool autoClearNotes, bool leftHandedMode, bool reduceMotion, MistakeCheckingMode mistakeCheckingMode, bool mistakeLimitEnabled, int mistakeLimit, bool onboardingCompleted, String localeCode
});




}
/// @nodoc
class __$AppSettingsCopyWithImpl<$Res>
    implements _$AppSettingsCopyWith<$Res> {
  __$AppSettingsCopyWithImpl(this._self, this._then);

  final _AppSettings _self;
  final $Res Function(_AppSettings) _then;

/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? themePreference = null,Object? colorTheme = null,Object? soundEnabled = null,Object? hapticsEnabled = null,Object? timerVisible = null,Object? highlightSelectedPeers = null,Object? highlightSameNumbers = null,Object? highlightConflicts = null,Object? autoClearNotes = null,Object? leftHandedMode = null,Object? reduceMotion = null,Object? mistakeCheckingMode = null,Object? mistakeLimitEnabled = null,Object? mistakeLimit = null,Object? onboardingCompleted = null,Object? localeCode = null,}) {
  return _then(_AppSettings(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,themePreference: null == themePreference ? _self.themePreference : themePreference // ignore: cast_nullable_to_non_nullable
as AppThemePreference,colorTheme: null == colorTheme ? _self.colorTheme : colorTheme // ignore: cast_nullable_to_non_nullable
as AppColorTheme,soundEnabled: null == soundEnabled ? _self.soundEnabled : soundEnabled // ignore: cast_nullable_to_non_nullable
as bool,hapticsEnabled: null == hapticsEnabled ? _self.hapticsEnabled : hapticsEnabled // ignore: cast_nullable_to_non_nullable
as bool,timerVisible: null == timerVisible ? _self.timerVisible : timerVisible // ignore: cast_nullable_to_non_nullable
as bool,highlightSelectedPeers: null == highlightSelectedPeers ? _self.highlightSelectedPeers : highlightSelectedPeers // ignore: cast_nullable_to_non_nullable
as bool,highlightSameNumbers: null == highlightSameNumbers ? _self.highlightSameNumbers : highlightSameNumbers // ignore: cast_nullable_to_non_nullable
as bool,highlightConflicts: null == highlightConflicts ? _self.highlightConflicts : highlightConflicts // ignore: cast_nullable_to_non_nullable
as bool,autoClearNotes: null == autoClearNotes ? _self.autoClearNotes : autoClearNotes // ignore: cast_nullable_to_non_nullable
as bool,leftHandedMode: null == leftHandedMode ? _self.leftHandedMode : leftHandedMode // ignore: cast_nullable_to_non_nullable
as bool,reduceMotion: null == reduceMotion ? _self.reduceMotion : reduceMotion // ignore: cast_nullable_to_non_nullable
as bool,mistakeCheckingMode: null == mistakeCheckingMode ? _self.mistakeCheckingMode : mistakeCheckingMode // ignore: cast_nullable_to_non_nullable
as MistakeCheckingMode,mistakeLimitEnabled: null == mistakeLimitEnabled ? _self.mistakeLimitEnabled : mistakeLimitEnabled // ignore: cast_nullable_to_non_nullable
as bool,mistakeLimit: null == mistakeLimit ? _self.mistakeLimit : mistakeLimit // ignore: cast_nullable_to_non_nullable
as int,onboardingCompleted: null == onboardingCompleted ? _self.onboardingCompleted : onboardingCompleted // ignore: cast_nullable_to_non_nullable
as bool,localeCode: null == localeCode ? _self.localeCode : localeCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
