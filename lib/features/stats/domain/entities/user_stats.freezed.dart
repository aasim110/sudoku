// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DifficultyStats {

 SudokuDifficulty get difficulty; int get gamesStarted; int get gamesCompleted;@NullableDurationSecondsConverter() Duration? get bestTime;@DurationSecondsConverter() Duration get totalTime; int get totalMistakes; int get totalHintsUsed; int get noMistakeWins; int get noHintWins;
/// Create a copy of DifficultyStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DifficultyStatsCopyWith<DifficultyStats> get copyWith => _$DifficultyStatsCopyWithImpl<DifficultyStats>(this as DifficultyStats, _$identity);

  /// Serializes this DifficultyStats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DifficultyStats&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.gamesStarted, gamesStarted) || other.gamesStarted == gamesStarted)&&(identical(other.gamesCompleted, gamesCompleted) || other.gamesCompleted == gamesCompleted)&&(identical(other.bestTime, bestTime) || other.bestTime == bestTime)&&(identical(other.totalTime, totalTime) || other.totalTime == totalTime)&&(identical(other.totalMistakes, totalMistakes) || other.totalMistakes == totalMistakes)&&(identical(other.totalHintsUsed, totalHintsUsed) || other.totalHintsUsed == totalHintsUsed)&&(identical(other.noMistakeWins, noMistakeWins) || other.noMistakeWins == noMistakeWins)&&(identical(other.noHintWins, noHintWins) || other.noHintWins == noHintWins));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,difficulty,gamesStarted,gamesCompleted,bestTime,totalTime,totalMistakes,totalHintsUsed,noMistakeWins,noHintWins);

@override
String toString() {
  return 'DifficultyStats(difficulty: $difficulty, gamesStarted: $gamesStarted, gamesCompleted: $gamesCompleted, bestTime: $bestTime, totalTime: $totalTime, totalMistakes: $totalMistakes, totalHintsUsed: $totalHintsUsed, noMistakeWins: $noMistakeWins, noHintWins: $noHintWins)';
}


}

/// @nodoc
abstract mixin class $DifficultyStatsCopyWith<$Res>  {
  factory $DifficultyStatsCopyWith(DifficultyStats value, $Res Function(DifficultyStats) _then) = _$DifficultyStatsCopyWithImpl;
@useResult
$Res call({
 SudokuDifficulty difficulty, int gamesStarted, int gamesCompleted,@NullableDurationSecondsConverter() Duration? bestTime,@DurationSecondsConverter() Duration totalTime, int totalMistakes, int totalHintsUsed, int noMistakeWins, int noHintWins
});




}
/// @nodoc
class _$DifficultyStatsCopyWithImpl<$Res>
    implements $DifficultyStatsCopyWith<$Res> {
  _$DifficultyStatsCopyWithImpl(this._self, this._then);

  final DifficultyStats _self;
  final $Res Function(DifficultyStats) _then;

/// Create a copy of DifficultyStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? difficulty = null,Object? gamesStarted = null,Object? gamesCompleted = null,Object? bestTime = freezed,Object? totalTime = null,Object? totalMistakes = null,Object? totalHintsUsed = null,Object? noMistakeWins = null,Object? noHintWins = null,}) {
  return _then(_self.copyWith(
difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as SudokuDifficulty,gamesStarted: null == gamesStarted ? _self.gamesStarted : gamesStarted // ignore: cast_nullable_to_non_nullable
as int,gamesCompleted: null == gamesCompleted ? _self.gamesCompleted : gamesCompleted // ignore: cast_nullable_to_non_nullable
as int,bestTime: freezed == bestTime ? _self.bestTime : bestTime // ignore: cast_nullable_to_non_nullable
as Duration?,totalTime: null == totalTime ? _self.totalTime : totalTime // ignore: cast_nullable_to_non_nullable
as Duration,totalMistakes: null == totalMistakes ? _self.totalMistakes : totalMistakes // ignore: cast_nullable_to_non_nullable
as int,totalHintsUsed: null == totalHintsUsed ? _self.totalHintsUsed : totalHintsUsed // ignore: cast_nullable_to_non_nullable
as int,noMistakeWins: null == noMistakeWins ? _self.noMistakeWins : noMistakeWins // ignore: cast_nullable_to_non_nullable
as int,noHintWins: null == noHintWins ? _self.noHintWins : noHintWins // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DifficultyStats].
extension DifficultyStatsPatterns on DifficultyStats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DifficultyStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DifficultyStats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DifficultyStats value)  $default,){
final _that = this;
switch (_that) {
case _DifficultyStats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DifficultyStats value)?  $default,){
final _that = this;
switch (_that) {
case _DifficultyStats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SudokuDifficulty difficulty,  int gamesStarted,  int gamesCompleted, @NullableDurationSecondsConverter()  Duration? bestTime, @DurationSecondsConverter()  Duration totalTime,  int totalMistakes,  int totalHintsUsed,  int noMistakeWins,  int noHintWins)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DifficultyStats() when $default != null:
return $default(_that.difficulty,_that.gamesStarted,_that.gamesCompleted,_that.bestTime,_that.totalTime,_that.totalMistakes,_that.totalHintsUsed,_that.noMistakeWins,_that.noHintWins);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SudokuDifficulty difficulty,  int gamesStarted,  int gamesCompleted, @NullableDurationSecondsConverter()  Duration? bestTime, @DurationSecondsConverter()  Duration totalTime,  int totalMistakes,  int totalHintsUsed,  int noMistakeWins,  int noHintWins)  $default,) {final _that = this;
switch (_that) {
case _DifficultyStats():
return $default(_that.difficulty,_that.gamesStarted,_that.gamesCompleted,_that.bestTime,_that.totalTime,_that.totalMistakes,_that.totalHintsUsed,_that.noMistakeWins,_that.noHintWins);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SudokuDifficulty difficulty,  int gamesStarted,  int gamesCompleted, @NullableDurationSecondsConverter()  Duration? bestTime, @DurationSecondsConverter()  Duration totalTime,  int totalMistakes,  int totalHintsUsed,  int noMistakeWins,  int noHintWins)?  $default,) {final _that = this;
switch (_that) {
case _DifficultyStats() when $default != null:
return $default(_that.difficulty,_that.gamesStarted,_that.gamesCompleted,_that.bestTime,_that.totalTime,_that.totalMistakes,_that.totalHintsUsed,_that.noMistakeWins,_that.noHintWins);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DifficultyStats extends DifficultyStats {
  const _DifficultyStats({required this.difficulty, this.gamesStarted = 0, this.gamesCompleted = 0, @NullableDurationSecondsConverter() this.bestTime, @DurationSecondsConverter() this.totalTime = Duration.zero, this.totalMistakes = 0, this.totalHintsUsed = 0, this.noMistakeWins = 0, this.noHintWins = 0}): super._();
  factory _DifficultyStats.fromJson(Map<String, dynamic> json) => _$DifficultyStatsFromJson(json);

@override final  SudokuDifficulty difficulty;
@override@JsonKey() final  int gamesStarted;
@override@JsonKey() final  int gamesCompleted;
@override@NullableDurationSecondsConverter() final  Duration? bestTime;
@override@JsonKey()@DurationSecondsConverter() final  Duration totalTime;
@override@JsonKey() final  int totalMistakes;
@override@JsonKey() final  int totalHintsUsed;
@override@JsonKey() final  int noMistakeWins;
@override@JsonKey() final  int noHintWins;

/// Create a copy of DifficultyStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DifficultyStatsCopyWith<_DifficultyStats> get copyWith => __$DifficultyStatsCopyWithImpl<_DifficultyStats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DifficultyStatsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DifficultyStats&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.gamesStarted, gamesStarted) || other.gamesStarted == gamesStarted)&&(identical(other.gamesCompleted, gamesCompleted) || other.gamesCompleted == gamesCompleted)&&(identical(other.bestTime, bestTime) || other.bestTime == bestTime)&&(identical(other.totalTime, totalTime) || other.totalTime == totalTime)&&(identical(other.totalMistakes, totalMistakes) || other.totalMistakes == totalMistakes)&&(identical(other.totalHintsUsed, totalHintsUsed) || other.totalHintsUsed == totalHintsUsed)&&(identical(other.noMistakeWins, noMistakeWins) || other.noMistakeWins == noMistakeWins)&&(identical(other.noHintWins, noHintWins) || other.noHintWins == noHintWins));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,difficulty,gamesStarted,gamesCompleted,bestTime,totalTime,totalMistakes,totalHintsUsed,noMistakeWins,noHintWins);

@override
String toString() {
  return 'DifficultyStats(difficulty: $difficulty, gamesStarted: $gamesStarted, gamesCompleted: $gamesCompleted, bestTime: $bestTime, totalTime: $totalTime, totalMistakes: $totalMistakes, totalHintsUsed: $totalHintsUsed, noMistakeWins: $noMistakeWins, noHintWins: $noHintWins)';
}


}

/// @nodoc
abstract mixin class _$DifficultyStatsCopyWith<$Res> implements $DifficultyStatsCopyWith<$Res> {
  factory _$DifficultyStatsCopyWith(_DifficultyStats value, $Res Function(_DifficultyStats) _then) = __$DifficultyStatsCopyWithImpl;
@override @useResult
$Res call({
 SudokuDifficulty difficulty, int gamesStarted, int gamesCompleted,@NullableDurationSecondsConverter() Duration? bestTime,@DurationSecondsConverter() Duration totalTime, int totalMistakes, int totalHintsUsed, int noMistakeWins, int noHintWins
});




}
/// @nodoc
class __$DifficultyStatsCopyWithImpl<$Res>
    implements _$DifficultyStatsCopyWith<$Res> {
  __$DifficultyStatsCopyWithImpl(this._self, this._then);

  final _DifficultyStats _self;
  final $Res Function(_DifficultyStats) _then;

/// Create a copy of DifficultyStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? difficulty = null,Object? gamesStarted = null,Object? gamesCompleted = null,Object? bestTime = freezed,Object? totalTime = null,Object? totalMistakes = null,Object? totalHintsUsed = null,Object? noMistakeWins = null,Object? noHintWins = null,}) {
  return _then(_DifficultyStats(
difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as SudokuDifficulty,gamesStarted: null == gamesStarted ? _self.gamesStarted : gamesStarted // ignore: cast_nullable_to_non_nullable
as int,gamesCompleted: null == gamesCompleted ? _self.gamesCompleted : gamesCompleted // ignore: cast_nullable_to_non_nullable
as int,bestTime: freezed == bestTime ? _self.bestTime : bestTime // ignore: cast_nullable_to_non_nullable
as Duration?,totalTime: null == totalTime ? _self.totalTime : totalTime // ignore: cast_nullable_to_non_nullable
as Duration,totalMistakes: null == totalMistakes ? _self.totalMistakes : totalMistakes // ignore: cast_nullable_to_non_nullable
as int,totalHintsUsed: null == totalHintsUsed ? _self.totalHintsUsed : totalHintsUsed // ignore: cast_nullable_to_non_nullable
as int,noMistakeWins: null == noMistakeWins ? _self.noMistakeWins : noMistakeWins // ignore: cast_nullable_to_non_nullable
as int,noHintWins: null == noHintWins ? _self.noHintWins : noHintWins // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$UserStats {

 String get userId; DateTime get createdAt; DateTime get updatedAt; int get gamesStarted; int get gamesCompleted; int get currentWinStreak; int get longestWinStreak; int get currentDailyStreak; int get longestDailyStreak; int get totalMistakes; int get totalHintsUsed;@DurationSecondsConverter() Duration get totalPlayTime; List<DifficultyStats> get difficultyStats; DateTime? get lastCompletedAt; DateTime? get lastDailyCompletedAt;
/// Create a copy of UserStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserStatsCopyWith<UserStats> get copyWith => _$UserStatsCopyWithImpl<UserStats>(this as UserStats, _$identity);

  /// Serializes this UserStats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserStats&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.gamesStarted, gamesStarted) || other.gamesStarted == gamesStarted)&&(identical(other.gamesCompleted, gamesCompleted) || other.gamesCompleted == gamesCompleted)&&(identical(other.currentWinStreak, currentWinStreak) || other.currentWinStreak == currentWinStreak)&&(identical(other.longestWinStreak, longestWinStreak) || other.longestWinStreak == longestWinStreak)&&(identical(other.currentDailyStreak, currentDailyStreak) || other.currentDailyStreak == currentDailyStreak)&&(identical(other.longestDailyStreak, longestDailyStreak) || other.longestDailyStreak == longestDailyStreak)&&(identical(other.totalMistakes, totalMistakes) || other.totalMistakes == totalMistakes)&&(identical(other.totalHintsUsed, totalHintsUsed) || other.totalHintsUsed == totalHintsUsed)&&(identical(other.totalPlayTime, totalPlayTime) || other.totalPlayTime == totalPlayTime)&&const DeepCollectionEquality().equals(other.difficultyStats, difficultyStats)&&(identical(other.lastCompletedAt, lastCompletedAt) || other.lastCompletedAt == lastCompletedAt)&&(identical(other.lastDailyCompletedAt, lastDailyCompletedAt) || other.lastDailyCompletedAt == lastDailyCompletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,createdAt,updatedAt,gamesStarted,gamesCompleted,currentWinStreak,longestWinStreak,currentDailyStreak,longestDailyStreak,totalMistakes,totalHintsUsed,totalPlayTime,const DeepCollectionEquality().hash(difficultyStats),lastCompletedAt,lastDailyCompletedAt);

@override
String toString() {
  return 'UserStats(userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, gamesStarted: $gamesStarted, gamesCompleted: $gamesCompleted, currentWinStreak: $currentWinStreak, longestWinStreak: $longestWinStreak, currentDailyStreak: $currentDailyStreak, longestDailyStreak: $longestDailyStreak, totalMistakes: $totalMistakes, totalHintsUsed: $totalHintsUsed, totalPlayTime: $totalPlayTime, difficultyStats: $difficultyStats, lastCompletedAt: $lastCompletedAt, lastDailyCompletedAt: $lastDailyCompletedAt)';
}


}

/// @nodoc
abstract mixin class $UserStatsCopyWith<$Res>  {
  factory $UserStatsCopyWith(UserStats value, $Res Function(UserStats) _then) = _$UserStatsCopyWithImpl;
@useResult
$Res call({
 String userId, DateTime createdAt, DateTime updatedAt, int gamesStarted, int gamesCompleted, int currentWinStreak, int longestWinStreak, int currentDailyStreak, int longestDailyStreak, int totalMistakes, int totalHintsUsed,@DurationSecondsConverter() Duration totalPlayTime, List<DifficultyStats> difficultyStats, DateTime? lastCompletedAt, DateTime? lastDailyCompletedAt
});




}
/// @nodoc
class _$UserStatsCopyWithImpl<$Res>
    implements $UserStatsCopyWith<$Res> {
  _$UserStatsCopyWithImpl(this._self, this._then);

  final UserStats _self;
  final $Res Function(UserStats) _then;

/// Create a copy of UserStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? createdAt = null,Object? updatedAt = null,Object? gamesStarted = null,Object? gamesCompleted = null,Object? currentWinStreak = null,Object? longestWinStreak = null,Object? currentDailyStreak = null,Object? longestDailyStreak = null,Object? totalMistakes = null,Object? totalHintsUsed = null,Object? totalPlayTime = null,Object? difficultyStats = null,Object? lastCompletedAt = freezed,Object? lastDailyCompletedAt = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,gamesStarted: null == gamesStarted ? _self.gamesStarted : gamesStarted // ignore: cast_nullable_to_non_nullable
as int,gamesCompleted: null == gamesCompleted ? _self.gamesCompleted : gamesCompleted // ignore: cast_nullable_to_non_nullable
as int,currentWinStreak: null == currentWinStreak ? _self.currentWinStreak : currentWinStreak // ignore: cast_nullable_to_non_nullable
as int,longestWinStreak: null == longestWinStreak ? _self.longestWinStreak : longestWinStreak // ignore: cast_nullable_to_non_nullable
as int,currentDailyStreak: null == currentDailyStreak ? _self.currentDailyStreak : currentDailyStreak // ignore: cast_nullable_to_non_nullable
as int,longestDailyStreak: null == longestDailyStreak ? _self.longestDailyStreak : longestDailyStreak // ignore: cast_nullable_to_non_nullable
as int,totalMistakes: null == totalMistakes ? _self.totalMistakes : totalMistakes // ignore: cast_nullable_to_non_nullable
as int,totalHintsUsed: null == totalHintsUsed ? _self.totalHintsUsed : totalHintsUsed // ignore: cast_nullable_to_non_nullable
as int,totalPlayTime: null == totalPlayTime ? _self.totalPlayTime : totalPlayTime // ignore: cast_nullable_to_non_nullable
as Duration,difficultyStats: null == difficultyStats ? _self.difficultyStats : difficultyStats // ignore: cast_nullable_to_non_nullable
as List<DifficultyStats>,lastCompletedAt: freezed == lastCompletedAt ? _self.lastCompletedAt : lastCompletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,lastDailyCompletedAt: freezed == lastDailyCompletedAt ? _self.lastDailyCompletedAt : lastDailyCompletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserStats].
extension UserStatsPatterns on UserStats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserStats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserStats value)  $default,){
final _that = this;
switch (_that) {
case _UserStats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserStats value)?  $default,){
final _that = this;
switch (_that) {
case _UserStats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  DateTime createdAt,  DateTime updatedAt,  int gamesStarted,  int gamesCompleted,  int currentWinStreak,  int longestWinStreak,  int currentDailyStreak,  int longestDailyStreak,  int totalMistakes,  int totalHintsUsed, @DurationSecondsConverter()  Duration totalPlayTime,  List<DifficultyStats> difficultyStats,  DateTime? lastCompletedAt,  DateTime? lastDailyCompletedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserStats() when $default != null:
return $default(_that.userId,_that.createdAt,_that.updatedAt,_that.gamesStarted,_that.gamesCompleted,_that.currentWinStreak,_that.longestWinStreak,_that.currentDailyStreak,_that.longestDailyStreak,_that.totalMistakes,_that.totalHintsUsed,_that.totalPlayTime,_that.difficultyStats,_that.lastCompletedAt,_that.lastDailyCompletedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  DateTime createdAt,  DateTime updatedAt,  int gamesStarted,  int gamesCompleted,  int currentWinStreak,  int longestWinStreak,  int currentDailyStreak,  int longestDailyStreak,  int totalMistakes,  int totalHintsUsed, @DurationSecondsConverter()  Duration totalPlayTime,  List<DifficultyStats> difficultyStats,  DateTime? lastCompletedAt,  DateTime? lastDailyCompletedAt)  $default,) {final _that = this;
switch (_that) {
case _UserStats():
return $default(_that.userId,_that.createdAt,_that.updatedAt,_that.gamesStarted,_that.gamesCompleted,_that.currentWinStreak,_that.longestWinStreak,_that.currentDailyStreak,_that.longestDailyStreak,_that.totalMistakes,_that.totalHintsUsed,_that.totalPlayTime,_that.difficultyStats,_that.lastCompletedAt,_that.lastDailyCompletedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  DateTime createdAt,  DateTime updatedAt,  int gamesStarted,  int gamesCompleted,  int currentWinStreak,  int longestWinStreak,  int currentDailyStreak,  int longestDailyStreak,  int totalMistakes,  int totalHintsUsed, @DurationSecondsConverter()  Duration totalPlayTime,  List<DifficultyStats> difficultyStats,  DateTime? lastCompletedAt,  DateTime? lastDailyCompletedAt)?  $default,) {final _that = this;
switch (_that) {
case _UserStats() when $default != null:
return $default(_that.userId,_that.createdAt,_that.updatedAt,_that.gamesStarted,_that.gamesCompleted,_that.currentWinStreak,_that.longestWinStreak,_that.currentDailyStreak,_that.longestDailyStreak,_that.totalMistakes,_that.totalHintsUsed,_that.totalPlayTime,_that.difficultyStats,_that.lastCompletedAt,_that.lastDailyCompletedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserStats extends UserStats {
  const _UserStats({required this.userId, required this.createdAt, required this.updatedAt, this.gamesStarted = 0, this.gamesCompleted = 0, this.currentWinStreak = 0, this.longestWinStreak = 0, this.currentDailyStreak = 0, this.longestDailyStreak = 0, this.totalMistakes = 0, this.totalHintsUsed = 0, @DurationSecondsConverter() this.totalPlayTime = Duration.zero, final  List<DifficultyStats> difficultyStats = const <DifficultyStats>[], this.lastCompletedAt, this.lastDailyCompletedAt}): _difficultyStats = difficultyStats,super._();
  factory _UserStats.fromJson(Map<String, dynamic> json) => _$UserStatsFromJson(json);

@override final  String userId;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override@JsonKey() final  int gamesStarted;
@override@JsonKey() final  int gamesCompleted;
@override@JsonKey() final  int currentWinStreak;
@override@JsonKey() final  int longestWinStreak;
@override@JsonKey() final  int currentDailyStreak;
@override@JsonKey() final  int longestDailyStreak;
@override@JsonKey() final  int totalMistakes;
@override@JsonKey() final  int totalHintsUsed;
@override@JsonKey()@DurationSecondsConverter() final  Duration totalPlayTime;
 final  List<DifficultyStats> _difficultyStats;
@override@JsonKey() List<DifficultyStats> get difficultyStats {
  if (_difficultyStats is EqualUnmodifiableListView) return _difficultyStats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_difficultyStats);
}

@override final  DateTime? lastCompletedAt;
@override final  DateTime? lastDailyCompletedAt;

/// Create a copy of UserStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserStatsCopyWith<_UserStats> get copyWith => __$UserStatsCopyWithImpl<_UserStats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserStatsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserStats&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.gamesStarted, gamesStarted) || other.gamesStarted == gamesStarted)&&(identical(other.gamesCompleted, gamesCompleted) || other.gamesCompleted == gamesCompleted)&&(identical(other.currentWinStreak, currentWinStreak) || other.currentWinStreak == currentWinStreak)&&(identical(other.longestWinStreak, longestWinStreak) || other.longestWinStreak == longestWinStreak)&&(identical(other.currentDailyStreak, currentDailyStreak) || other.currentDailyStreak == currentDailyStreak)&&(identical(other.longestDailyStreak, longestDailyStreak) || other.longestDailyStreak == longestDailyStreak)&&(identical(other.totalMistakes, totalMistakes) || other.totalMistakes == totalMistakes)&&(identical(other.totalHintsUsed, totalHintsUsed) || other.totalHintsUsed == totalHintsUsed)&&(identical(other.totalPlayTime, totalPlayTime) || other.totalPlayTime == totalPlayTime)&&const DeepCollectionEquality().equals(other._difficultyStats, _difficultyStats)&&(identical(other.lastCompletedAt, lastCompletedAt) || other.lastCompletedAt == lastCompletedAt)&&(identical(other.lastDailyCompletedAt, lastDailyCompletedAt) || other.lastDailyCompletedAt == lastDailyCompletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,createdAt,updatedAt,gamesStarted,gamesCompleted,currentWinStreak,longestWinStreak,currentDailyStreak,longestDailyStreak,totalMistakes,totalHintsUsed,totalPlayTime,const DeepCollectionEquality().hash(_difficultyStats),lastCompletedAt,lastDailyCompletedAt);

@override
String toString() {
  return 'UserStats(userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, gamesStarted: $gamesStarted, gamesCompleted: $gamesCompleted, currentWinStreak: $currentWinStreak, longestWinStreak: $longestWinStreak, currentDailyStreak: $currentDailyStreak, longestDailyStreak: $longestDailyStreak, totalMistakes: $totalMistakes, totalHintsUsed: $totalHintsUsed, totalPlayTime: $totalPlayTime, difficultyStats: $difficultyStats, lastCompletedAt: $lastCompletedAt, lastDailyCompletedAt: $lastDailyCompletedAt)';
}


}

/// @nodoc
abstract mixin class _$UserStatsCopyWith<$Res> implements $UserStatsCopyWith<$Res> {
  factory _$UserStatsCopyWith(_UserStats value, $Res Function(_UserStats) _then) = __$UserStatsCopyWithImpl;
@override @useResult
$Res call({
 String userId, DateTime createdAt, DateTime updatedAt, int gamesStarted, int gamesCompleted, int currentWinStreak, int longestWinStreak, int currentDailyStreak, int longestDailyStreak, int totalMistakes, int totalHintsUsed,@DurationSecondsConverter() Duration totalPlayTime, List<DifficultyStats> difficultyStats, DateTime? lastCompletedAt, DateTime? lastDailyCompletedAt
});




}
/// @nodoc
class __$UserStatsCopyWithImpl<$Res>
    implements _$UserStatsCopyWith<$Res> {
  __$UserStatsCopyWithImpl(this._self, this._then);

  final _UserStats _self;
  final $Res Function(_UserStats) _then;

/// Create a copy of UserStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? createdAt = null,Object? updatedAt = null,Object? gamesStarted = null,Object? gamesCompleted = null,Object? currentWinStreak = null,Object? longestWinStreak = null,Object? currentDailyStreak = null,Object? longestDailyStreak = null,Object? totalMistakes = null,Object? totalHintsUsed = null,Object? totalPlayTime = null,Object? difficultyStats = null,Object? lastCompletedAt = freezed,Object? lastDailyCompletedAt = freezed,}) {
  return _then(_UserStats(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,gamesStarted: null == gamesStarted ? _self.gamesStarted : gamesStarted // ignore: cast_nullable_to_non_nullable
as int,gamesCompleted: null == gamesCompleted ? _self.gamesCompleted : gamesCompleted // ignore: cast_nullable_to_non_nullable
as int,currentWinStreak: null == currentWinStreak ? _self.currentWinStreak : currentWinStreak // ignore: cast_nullable_to_non_nullable
as int,longestWinStreak: null == longestWinStreak ? _self.longestWinStreak : longestWinStreak // ignore: cast_nullable_to_non_nullable
as int,currentDailyStreak: null == currentDailyStreak ? _self.currentDailyStreak : currentDailyStreak // ignore: cast_nullable_to_non_nullable
as int,longestDailyStreak: null == longestDailyStreak ? _self.longestDailyStreak : longestDailyStreak // ignore: cast_nullable_to_non_nullable
as int,totalMistakes: null == totalMistakes ? _self.totalMistakes : totalMistakes // ignore: cast_nullable_to_non_nullable
as int,totalHintsUsed: null == totalHintsUsed ? _self.totalHintsUsed : totalHintsUsed // ignore: cast_nullable_to_non_nullable
as int,totalPlayTime: null == totalPlayTime ? _self.totalPlayTime : totalPlayTime // ignore: cast_nullable_to_non_nullable
as Duration,difficultyStats: null == difficultyStats ? _self._difficultyStats : difficultyStats // ignore: cast_nullable_to_non_nullable
as List<DifficultyStats>,lastCompletedAt: freezed == lastCompletedAt ? _self.lastCompletedAt : lastCompletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,lastDailyCompletedAt: freezed == lastDailyCompletedAt ? _self.lastDailyCompletedAt : lastDailyCompletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
