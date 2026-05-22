// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_challenge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DailyChallenge {

 String get id; DateTime get challengeDate; SudokuPuzzle get puzzle; DailyChallengeStatus get status; DateTime get createdAt; DateTime get updatedAt; String? get activeSessionId; DateTime? get startedAt; DateTime? get completedAt;@NullableDurationSecondsConverter() Duration? get completionTime; int get mistakes; int get hintsUsed; int get score; bool get rewardClaimed; int get generatorVersion;
/// Create a copy of DailyChallenge
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyChallengeCopyWith<DailyChallenge> get copyWith => _$DailyChallengeCopyWithImpl<DailyChallenge>(this as DailyChallenge, _$identity);

  /// Serializes this DailyChallenge to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyChallenge&&(identical(other.id, id) || other.id == id)&&(identical(other.challengeDate, challengeDate) || other.challengeDate == challengeDate)&&(identical(other.puzzle, puzzle) || other.puzzle == puzzle)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.activeSessionId, activeSessionId) || other.activeSessionId == activeSessionId)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.completionTime, completionTime) || other.completionTime == completionTime)&&(identical(other.mistakes, mistakes) || other.mistakes == mistakes)&&(identical(other.hintsUsed, hintsUsed) || other.hintsUsed == hintsUsed)&&(identical(other.score, score) || other.score == score)&&(identical(other.rewardClaimed, rewardClaimed) || other.rewardClaimed == rewardClaimed)&&(identical(other.generatorVersion, generatorVersion) || other.generatorVersion == generatorVersion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,challengeDate,puzzle,status,createdAt,updatedAt,activeSessionId,startedAt,completedAt,completionTime,mistakes,hintsUsed,score,rewardClaimed,generatorVersion);

@override
String toString() {
  return 'DailyChallenge(id: $id, challengeDate: $challengeDate, puzzle: $puzzle, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, activeSessionId: $activeSessionId, startedAt: $startedAt, completedAt: $completedAt, completionTime: $completionTime, mistakes: $mistakes, hintsUsed: $hintsUsed, score: $score, rewardClaimed: $rewardClaimed, generatorVersion: $generatorVersion)';
}


}

/// @nodoc
abstract mixin class $DailyChallengeCopyWith<$Res>  {
  factory $DailyChallengeCopyWith(DailyChallenge value, $Res Function(DailyChallenge) _then) = _$DailyChallengeCopyWithImpl;
@useResult
$Res call({
 String id, DateTime challengeDate, SudokuPuzzle puzzle, DailyChallengeStatus status, DateTime createdAt, DateTime updatedAt, String? activeSessionId, DateTime? startedAt, DateTime? completedAt,@NullableDurationSecondsConverter() Duration? completionTime, int mistakes, int hintsUsed, int score, bool rewardClaimed, int generatorVersion
});


$SudokuPuzzleCopyWith<$Res> get puzzle;

}
/// @nodoc
class _$DailyChallengeCopyWithImpl<$Res>
    implements $DailyChallengeCopyWith<$Res> {
  _$DailyChallengeCopyWithImpl(this._self, this._then);

  final DailyChallenge _self;
  final $Res Function(DailyChallenge) _then;

/// Create a copy of DailyChallenge
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? challengeDate = null,Object? puzzle = null,Object? status = null,Object? createdAt = null,Object? updatedAt = null,Object? activeSessionId = freezed,Object? startedAt = freezed,Object? completedAt = freezed,Object? completionTime = freezed,Object? mistakes = null,Object? hintsUsed = null,Object? score = null,Object? rewardClaimed = null,Object? generatorVersion = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,challengeDate: null == challengeDate ? _self.challengeDate : challengeDate // ignore: cast_nullable_to_non_nullable
as DateTime,puzzle: null == puzzle ? _self.puzzle : puzzle // ignore: cast_nullable_to_non_nullable
as SudokuPuzzle,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DailyChallengeStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,activeSessionId: freezed == activeSessionId ? _self.activeSessionId : activeSessionId // ignore: cast_nullable_to_non_nullable
as String?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completionTime: freezed == completionTime ? _self.completionTime : completionTime // ignore: cast_nullable_to_non_nullable
as Duration?,mistakes: null == mistakes ? _self.mistakes : mistakes // ignore: cast_nullable_to_non_nullable
as int,hintsUsed: null == hintsUsed ? _self.hintsUsed : hintsUsed // ignore: cast_nullable_to_non_nullable
as int,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,rewardClaimed: null == rewardClaimed ? _self.rewardClaimed : rewardClaimed // ignore: cast_nullable_to_non_nullable
as bool,generatorVersion: null == generatorVersion ? _self.generatorVersion : generatorVersion // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of DailyChallenge
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SudokuPuzzleCopyWith<$Res> get puzzle {
  
  return $SudokuPuzzleCopyWith<$Res>(_self.puzzle, (value) {
    return _then(_self.copyWith(puzzle: value));
  });
}
}


/// Adds pattern-matching-related methods to [DailyChallenge].
extension DailyChallengePatterns on DailyChallenge {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyChallenge value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyChallenge() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyChallenge value)  $default,){
final _that = this;
switch (_that) {
case _DailyChallenge():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyChallenge value)?  $default,){
final _that = this;
switch (_that) {
case _DailyChallenge() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime challengeDate,  SudokuPuzzle puzzle,  DailyChallengeStatus status,  DateTime createdAt,  DateTime updatedAt,  String? activeSessionId,  DateTime? startedAt,  DateTime? completedAt, @NullableDurationSecondsConverter()  Duration? completionTime,  int mistakes,  int hintsUsed,  int score,  bool rewardClaimed,  int generatorVersion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyChallenge() when $default != null:
return $default(_that.id,_that.challengeDate,_that.puzzle,_that.status,_that.createdAt,_that.updatedAt,_that.activeSessionId,_that.startedAt,_that.completedAt,_that.completionTime,_that.mistakes,_that.hintsUsed,_that.score,_that.rewardClaimed,_that.generatorVersion);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime challengeDate,  SudokuPuzzle puzzle,  DailyChallengeStatus status,  DateTime createdAt,  DateTime updatedAt,  String? activeSessionId,  DateTime? startedAt,  DateTime? completedAt, @NullableDurationSecondsConverter()  Duration? completionTime,  int mistakes,  int hintsUsed,  int score,  bool rewardClaimed,  int generatorVersion)  $default,) {final _that = this;
switch (_that) {
case _DailyChallenge():
return $default(_that.id,_that.challengeDate,_that.puzzle,_that.status,_that.createdAt,_that.updatedAt,_that.activeSessionId,_that.startedAt,_that.completedAt,_that.completionTime,_that.mistakes,_that.hintsUsed,_that.score,_that.rewardClaimed,_that.generatorVersion);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime challengeDate,  SudokuPuzzle puzzle,  DailyChallengeStatus status,  DateTime createdAt,  DateTime updatedAt,  String? activeSessionId,  DateTime? startedAt,  DateTime? completedAt, @NullableDurationSecondsConverter()  Duration? completionTime,  int mistakes,  int hintsUsed,  int score,  bool rewardClaimed,  int generatorVersion)?  $default,) {final _that = this;
switch (_that) {
case _DailyChallenge() when $default != null:
return $default(_that.id,_that.challengeDate,_that.puzzle,_that.status,_that.createdAt,_that.updatedAt,_that.activeSessionId,_that.startedAt,_that.completedAt,_that.completionTime,_that.mistakes,_that.hintsUsed,_that.score,_that.rewardClaimed,_that.generatorVersion);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyChallenge extends DailyChallenge {
  const _DailyChallenge({required this.id, required this.challengeDate, required this.puzzle, required this.status, required this.createdAt, required this.updatedAt, this.activeSessionId, this.startedAt, this.completedAt, @NullableDurationSecondsConverter() this.completionTime, this.mistakes = 0, this.hintsUsed = 0, this.score = 0, this.rewardClaimed = false, this.generatorVersion = 1}): super._();
  factory _DailyChallenge.fromJson(Map<String, dynamic> json) => _$DailyChallengeFromJson(json);

@override final  String id;
@override final  DateTime challengeDate;
@override final  SudokuPuzzle puzzle;
@override final  DailyChallengeStatus status;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String? activeSessionId;
@override final  DateTime? startedAt;
@override final  DateTime? completedAt;
@override@NullableDurationSecondsConverter() final  Duration? completionTime;
@override@JsonKey() final  int mistakes;
@override@JsonKey() final  int hintsUsed;
@override@JsonKey() final  int score;
@override@JsonKey() final  bool rewardClaimed;
@override@JsonKey() final  int generatorVersion;

/// Create a copy of DailyChallenge
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyChallengeCopyWith<_DailyChallenge> get copyWith => __$DailyChallengeCopyWithImpl<_DailyChallenge>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyChallengeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyChallenge&&(identical(other.id, id) || other.id == id)&&(identical(other.challengeDate, challengeDate) || other.challengeDate == challengeDate)&&(identical(other.puzzle, puzzle) || other.puzzle == puzzle)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.activeSessionId, activeSessionId) || other.activeSessionId == activeSessionId)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.completionTime, completionTime) || other.completionTime == completionTime)&&(identical(other.mistakes, mistakes) || other.mistakes == mistakes)&&(identical(other.hintsUsed, hintsUsed) || other.hintsUsed == hintsUsed)&&(identical(other.score, score) || other.score == score)&&(identical(other.rewardClaimed, rewardClaimed) || other.rewardClaimed == rewardClaimed)&&(identical(other.generatorVersion, generatorVersion) || other.generatorVersion == generatorVersion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,challengeDate,puzzle,status,createdAt,updatedAt,activeSessionId,startedAt,completedAt,completionTime,mistakes,hintsUsed,score,rewardClaimed,generatorVersion);

@override
String toString() {
  return 'DailyChallenge(id: $id, challengeDate: $challengeDate, puzzle: $puzzle, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, activeSessionId: $activeSessionId, startedAt: $startedAt, completedAt: $completedAt, completionTime: $completionTime, mistakes: $mistakes, hintsUsed: $hintsUsed, score: $score, rewardClaimed: $rewardClaimed, generatorVersion: $generatorVersion)';
}


}

/// @nodoc
abstract mixin class _$DailyChallengeCopyWith<$Res> implements $DailyChallengeCopyWith<$Res> {
  factory _$DailyChallengeCopyWith(_DailyChallenge value, $Res Function(_DailyChallenge) _then) = __$DailyChallengeCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime challengeDate, SudokuPuzzle puzzle, DailyChallengeStatus status, DateTime createdAt, DateTime updatedAt, String? activeSessionId, DateTime? startedAt, DateTime? completedAt,@NullableDurationSecondsConverter() Duration? completionTime, int mistakes, int hintsUsed, int score, bool rewardClaimed, int generatorVersion
});


@override $SudokuPuzzleCopyWith<$Res> get puzzle;

}
/// @nodoc
class __$DailyChallengeCopyWithImpl<$Res>
    implements _$DailyChallengeCopyWith<$Res> {
  __$DailyChallengeCopyWithImpl(this._self, this._then);

  final _DailyChallenge _self;
  final $Res Function(_DailyChallenge) _then;

/// Create a copy of DailyChallenge
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? challengeDate = null,Object? puzzle = null,Object? status = null,Object? createdAt = null,Object? updatedAt = null,Object? activeSessionId = freezed,Object? startedAt = freezed,Object? completedAt = freezed,Object? completionTime = freezed,Object? mistakes = null,Object? hintsUsed = null,Object? score = null,Object? rewardClaimed = null,Object? generatorVersion = null,}) {
  return _then(_DailyChallenge(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,challengeDate: null == challengeDate ? _self.challengeDate : challengeDate // ignore: cast_nullable_to_non_nullable
as DateTime,puzzle: null == puzzle ? _self.puzzle : puzzle // ignore: cast_nullable_to_non_nullable
as SudokuPuzzle,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DailyChallengeStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,activeSessionId: freezed == activeSessionId ? _self.activeSessionId : activeSessionId // ignore: cast_nullable_to_non_nullable
as String?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completionTime: freezed == completionTime ? _self.completionTime : completionTime // ignore: cast_nullable_to_non_nullable
as Duration?,mistakes: null == mistakes ? _self.mistakes : mistakes // ignore: cast_nullable_to_non_nullable
as int,hintsUsed: null == hintsUsed ? _self.hintsUsed : hintsUsed // ignore: cast_nullable_to_non_nullable
as int,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,rewardClaimed: null == rewardClaimed ? _self.rewardClaimed : rewardClaimed // ignore: cast_nullable_to_non_nullable
as bool,generatorVersion: null == generatorVersion ? _self.generatorVersion : generatorVersion // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of DailyChallenge
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SudokuPuzzleCopyWith<$Res> get puzzle {
  
  return $SudokuPuzzleCopyWith<$Res>(_self.puzzle, (value) {
    return _then(_self.copyWith(puzzle: value));
  });
}
}

// dart format on
