// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameMove {

 String get id; GameMoveType get type; int get cellIndex; DateTime get createdAt; int? get previousValue; int? get nextValue; List<int> get previousNotes; List<int> get nextNotes; HintResult? get hint;
/// Create a copy of GameMove
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameMoveCopyWith<GameMove> get copyWith => _$GameMoveCopyWithImpl<GameMove>(this as GameMove, _$identity);

  /// Serializes this GameMove to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameMove&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.cellIndex, cellIndex) || other.cellIndex == cellIndex)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.previousValue, previousValue) || other.previousValue == previousValue)&&(identical(other.nextValue, nextValue) || other.nextValue == nextValue)&&const DeepCollectionEquality().equals(other.previousNotes, previousNotes)&&const DeepCollectionEquality().equals(other.nextNotes, nextNotes)&&(identical(other.hint, hint) || other.hint == hint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,cellIndex,createdAt,previousValue,nextValue,const DeepCollectionEquality().hash(previousNotes),const DeepCollectionEquality().hash(nextNotes),hint);

@override
String toString() {
  return 'GameMove(id: $id, type: $type, cellIndex: $cellIndex, createdAt: $createdAt, previousValue: $previousValue, nextValue: $nextValue, previousNotes: $previousNotes, nextNotes: $nextNotes, hint: $hint)';
}


}

/// @nodoc
abstract mixin class $GameMoveCopyWith<$Res>  {
  factory $GameMoveCopyWith(GameMove value, $Res Function(GameMove) _then) = _$GameMoveCopyWithImpl;
@useResult
$Res call({
 String id, GameMoveType type, int cellIndex, DateTime createdAt, int? previousValue, int? nextValue, List<int> previousNotes, List<int> nextNotes, HintResult? hint
});


$HintResultCopyWith<$Res>? get hint;

}
/// @nodoc
class _$GameMoveCopyWithImpl<$Res>
    implements $GameMoveCopyWith<$Res> {
  _$GameMoveCopyWithImpl(this._self, this._then);

  final GameMove _self;
  final $Res Function(GameMove) _then;

/// Create a copy of GameMove
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? cellIndex = null,Object? createdAt = null,Object? previousValue = freezed,Object? nextValue = freezed,Object? previousNotes = null,Object? nextNotes = null,Object? hint = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as GameMoveType,cellIndex: null == cellIndex ? _self.cellIndex : cellIndex // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,previousValue: freezed == previousValue ? _self.previousValue : previousValue // ignore: cast_nullable_to_non_nullable
as int?,nextValue: freezed == nextValue ? _self.nextValue : nextValue // ignore: cast_nullable_to_non_nullable
as int?,previousNotes: null == previousNotes ? _self.previousNotes : previousNotes // ignore: cast_nullable_to_non_nullable
as List<int>,nextNotes: null == nextNotes ? _self.nextNotes : nextNotes // ignore: cast_nullable_to_non_nullable
as List<int>,hint: freezed == hint ? _self.hint : hint // ignore: cast_nullable_to_non_nullable
as HintResult?,
  ));
}
/// Create a copy of GameMove
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HintResultCopyWith<$Res>? get hint {
    if (_self.hint == null) {
    return null;
  }

  return $HintResultCopyWith<$Res>(_self.hint!, (value) {
    return _then(_self.copyWith(hint: value));
  });
}
}


/// Adds pattern-matching-related methods to [GameMove].
extension GameMovePatterns on GameMove {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameMove value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameMove() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameMove value)  $default,){
final _that = this;
switch (_that) {
case _GameMove():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameMove value)?  $default,){
final _that = this;
switch (_that) {
case _GameMove() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  GameMoveType type,  int cellIndex,  DateTime createdAt,  int? previousValue,  int? nextValue,  List<int> previousNotes,  List<int> nextNotes,  HintResult? hint)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameMove() when $default != null:
return $default(_that.id,_that.type,_that.cellIndex,_that.createdAt,_that.previousValue,_that.nextValue,_that.previousNotes,_that.nextNotes,_that.hint);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  GameMoveType type,  int cellIndex,  DateTime createdAt,  int? previousValue,  int? nextValue,  List<int> previousNotes,  List<int> nextNotes,  HintResult? hint)  $default,) {final _that = this;
switch (_that) {
case _GameMove():
return $default(_that.id,_that.type,_that.cellIndex,_that.createdAt,_that.previousValue,_that.nextValue,_that.previousNotes,_that.nextNotes,_that.hint);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  GameMoveType type,  int cellIndex,  DateTime createdAt,  int? previousValue,  int? nextValue,  List<int> previousNotes,  List<int> nextNotes,  HintResult? hint)?  $default,) {final _that = this;
switch (_that) {
case _GameMove() when $default != null:
return $default(_that.id,_that.type,_that.cellIndex,_that.createdAt,_that.previousValue,_that.nextValue,_that.previousNotes,_that.nextNotes,_that.hint);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameMove implements GameMove {
  const _GameMove({required this.id, required this.type, required this.cellIndex, required this.createdAt, this.previousValue, this.nextValue, final  List<int> previousNotes = const <int>[], final  List<int> nextNotes = const <int>[], this.hint}): _previousNotes = previousNotes,_nextNotes = nextNotes;
  factory _GameMove.fromJson(Map<String, dynamic> json) => _$GameMoveFromJson(json);

@override final  String id;
@override final  GameMoveType type;
@override final  int cellIndex;
@override final  DateTime createdAt;
@override final  int? previousValue;
@override final  int? nextValue;
 final  List<int> _previousNotes;
@override@JsonKey() List<int> get previousNotes {
  if (_previousNotes is EqualUnmodifiableListView) return _previousNotes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_previousNotes);
}

 final  List<int> _nextNotes;
@override@JsonKey() List<int> get nextNotes {
  if (_nextNotes is EqualUnmodifiableListView) return _nextNotes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_nextNotes);
}

@override final  HintResult? hint;

/// Create a copy of GameMove
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameMoveCopyWith<_GameMove> get copyWith => __$GameMoveCopyWithImpl<_GameMove>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameMoveToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameMove&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.cellIndex, cellIndex) || other.cellIndex == cellIndex)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.previousValue, previousValue) || other.previousValue == previousValue)&&(identical(other.nextValue, nextValue) || other.nextValue == nextValue)&&const DeepCollectionEquality().equals(other._previousNotes, _previousNotes)&&const DeepCollectionEquality().equals(other._nextNotes, _nextNotes)&&(identical(other.hint, hint) || other.hint == hint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,cellIndex,createdAt,previousValue,nextValue,const DeepCollectionEquality().hash(_previousNotes),const DeepCollectionEquality().hash(_nextNotes),hint);

@override
String toString() {
  return 'GameMove(id: $id, type: $type, cellIndex: $cellIndex, createdAt: $createdAt, previousValue: $previousValue, nextValue: $nextValue, previousNotes: $previousNotes, nextNotes: $nextNotes, hint: $hint)';
}


}

/// @nodoc
abstract mixin class _$GameMoveCopyWith<$Res> implements $GameMoveCopyWith<$Res> {
  factory _$GameMoveCopyWith(_GameMove value, $Res Function(_GameMove) _then) = __$GameMoveCopyWithImpl;
@override @useResult
$Res call({
 String id, GameMoveType type, int cellIndex, DateTime createdAt, int? previousValue, int? nextValue, List<int> previousNotes, List<int> nextNotes, HintResult? hint
});


@override $HintResultCopyWith<$Res>? get hint;

}
/// @nodoc
class __$GameMoveCopyWithImpl<$Res>
    implements _$GameMoveCopyWith<$Res> {
  __$GameMoveCopyWithImpl(this._self, this._then);

  final _GameMove _self;
  final $Res Function(_GameMove) _then;

/// Create a copy of GameMove
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? cellIndex = null,Object? createdAt = null,Object? previousValue = freezed,Object? nextValue = freezed,Object? previousNotes = null,Object? nextNotes = null,Object? hint = freezed,}) {
  return _then(_GameMove(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as GameMoveType,cellIndex: null == cellIndex ? _self.cellIndex : cellIndex // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,previousValue: freezed == previousValue ? _self.previousValue : previousValue // ignore: cast_nullable_to_non_nullable
as int?,nextValue: freezed == nextValue ? _self.nextValue : nextValue // ignore: cast_nullable_to_non_nullable
as int?,previousNotes: null == previousNotes ? _self._previousNotes : previousNotes // ignore: cast_nullable_to_non_nullable
as List<int>,nextNotes: null == nextNotes ? _self._nextNotes : nextNotes // ignore: cast_nullable_to_non_nullable
as List<int>,hint: freezed == hint ? _self.hint : hint // ignore: cast_nullable_to_non_nullable
as HintResult?,
  ));
}

/// Create a copy of GameMove
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HintResultCopyWith<$Res>? get hint {
    if (_self.hint == null) {
    return null;
  }

  return $HintResultCopyWith<$Res>(_self.hint!, (value) {
    return _then(_self.copyWith(hint: value));
  });
}
}


/// @nodoc
mixin _$GameSession {

 String get id; SudokuPuzzle get puzzle; List<SudokuCell> get cells; GameSessionStatus get status; DateTime get createdAt; DateTime get updatedAt; DateTime? get startedAt; DateTime? get completedAt; int? get selectedCellIndex;@DurationSecondsConverter() Duration get elapsedTime; bool get notesModeEnabled; int get mistakeCount; int get mistakeLimit; int get hintCount; bool get isDailyChallenge; List<GameMove> get undoStack; List<GameMove> get redoStack;
/// Create a copy of GameSession
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameSessionCopyWith<GameSession> get copyWith => _$GameSessionCopyWithImpl<GameSession>(this as GameSession, _$identity);

  /// Serializes this GameSession to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameSession&&(identical(other.id, id) || other.id == id)&&(identical(other.puzzle, puzzle) || other.puzzle == puzzle)&&const DeepCollectionEquality().equals(other.cells, cells)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.selectedCellIndex, selectedCellIndex) || other.selectedCellIndex == selectedCellIndex)&&(identical(other.elapsedTime, elapsedTime) || other.elapsedTime == elapsedTime)&&(identical(other.notesModeEnabled, notesModeEnabled) || other.notesModeEnabled == notesModeEnabled)&&(identical(other.mistakeCount, mistakeCount) || other.mistakeCount == mistakeCount)&&(identical(other.mistakeLimit, mistakeLimit) || other.mistakeLimit == mistakeLimit)&&(identical(other.hintCount, hintCount) || other.hintCount == hintCount)&&(identical(other.isDailyChallenge, isDailyChallenge) || other.isDailyChallenge == isDailyChallenge)&&const DeepCollectionEquality().equals(other.undoStack, undoStack)&&const DeepCollectionEquality().equals(other.redoStack, redoStack));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,puzzle,const DeepCollectionEquality().hash(cells),status,createdAt,updatedAt,startedAt,completedAt,selectedCellIndex,elapsedTime,notesModeEnabled,mistakeCount,mistakeLimit,hintCount,isDailyChallenge,const DeepCollectionEquality().hash(undoStack),const DeepCollectionEquality().hash(redoStack));

@override
String toString() {
  return 'GameSession(id: $id, puzzle: $puzzle, cells: $cells, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, startedAt: $startedAt, completedAt: $completedAt, selectedCellIndex: $selectedCellIndex, elapsedTime: $elapsedTime, notesModeEnabled: $notesModeEnabled, mistakeCount: $mistakeCount, mistakeLimit: $mistakeLimit, hintCount: $hintCount, isDailyChallenge: $isDailyChallenge, undoStack: $undoStack, redoStack: $redoStack)';
}


}

/// @nodoc
abstract mixin class $GameSessionCopyWith<$Res>  {
  factory $GameSessionCopyWith(GameSession value, $Res Function(GameSession) _then) = _$GameSessionCopyWithImpl;
@useResult
$Res call({
 String id, SudokuPuzzle puzzle, List<SudokuCell> cells, GameSessionStatus status, DateTime createdAt, DateTime updatedAt, DateTime? startedAt, DateTime? completedAt, int? selectedCellIndex,@DurationSecondsConverter() Duration elapsedTime, bool notesModeEnabled, int mistakeCount, int mistakeLimit, int hintCount, bool isDailyChallenge, List<GameMove> undoStack, List<GameMove> redoStack
});


$SudokuPuzzleCopyWith<$Res> get puzzle;

}
/// @nodoc
class _$GameSessionCopyWithImpl<$Res>
    implements $GameSessionCopyWith<$Res> {
  _$GameSessionCopyWithImpl(this._self, this._then);

  final GameSession _self;
  final $Res Function(GameSession) _then;

/// Create a copy of GameSession
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? puzzle = null,Object? cells = null,Object? status = null,Object? createdAt = null,Object? updatedAt = null,Object? startedAt = freezed,Object? completedAt = freezed,Object? selectedCellIndex = freezed,Object? elapsedTime = null,Object? notesModeEnabled = null,Object? mistakeCount = null,Object? mistakeLimit = null,Object? hintCount = null,Object? isDailyChallenge = null,Object? undoStack = null,Object? redoStack = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,puzzle: null == puzzle ? _self.puzzle : puzzle // ignore: cast_nullable_to_non_nullable
as SudokuPuzzle,cells: null == cells ? _self.cells : cells // ignore: cast_nullable_to_non_nullable
as List<SudokuCell>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GameSessionStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,selectedCellIndex: freezed == selectedCellIndex ? _self.selectedCellIndex : selectedCellIndex // ignore: cast_nullable_to_non_nullable
as int?,elapsedTime: null == elapsedTime ? _self.elapsedTime : elapsedTime // ignore: cast_nullable_to_non_nullable
as Duration,notesModeEnabled: null == notesModeEnabled ? _self.notesModeEnabled : notesModeEnabled // ignore: cast_nullable_to_non_nullable
as bool,mistakeCount: null == mistakeCount ? _self.mistakeCount : mistakeCount // ignore: cast_nullable_to_non_nullable
as int,mistakeLimit: null == mistakeLimit ? _self.mistakeLimit : mistakeLimit // ignore: cast_nullable_to_non_nullable
as int,hintCount: null == hintCount ? _self.hintCount : hintCount // ignore: cast_nullable_to_non_nullable
as int,isDailyChallenge: null == isDailyChallenge ? _self.isDailyChallenge : isDailyChallenge // ignore: cast_nullable_to_non_nullable
as bool,undoStack: null == undoStack ? _self.undoStack : undoStack // ignore: cast_nullable_to_non_nullable
as List<GameMove>,redoStack: null == redoStack ? _self.redoStack : redoStack // ignore: cast_nullable_to_non_nullable
as List<GameMove>,
  ));
}
/// Create a copy of GameSession
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SudokuPuzzleCopyWith<$Res> get puzzle {
  
  return $SudokuPuzzleCopyWith<$Res>(_self.puzzle, (value) {
    return _then(_self.copyWith(puzzle: value));
  });
}
}


/// Adds pattern-matching-related methods to [GameSession].
extension GameSessionPatterns on GameSession {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameSession value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameSession() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameSession value)  $default,){
final _that = this;
switch (_that) {
case _GameSession():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameSession value)?  $default,){
final _that = this;
switch (_that) {
case _GameSession() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  SudokuPuzzle puzzle,  List<SudokuCell> cells,  GameSessionStatus status,  DateTime createdAt,  DateTime updatedAt,  DateTime? startedAt,  DateTime? completedAt,  int? selectedCellIndex, @DurationSecondsConverter()  Duration elapsedTime,  bool notesModeEnabled,  int mistakeCount,  int mistakeLimit,  int hintCount,  bool isDailyChallenge,  List<GameMove> undoStack,  List<GameMove> redoStack)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameSession() when $default != null:
return $default(_that.id,_that.puzzle,_that.cells,_that.status,_that.createdAt,_that.updatedAt,_that.startedAt,_that.completedAt,_that.selectedCellIndex,_that.elapsedTime,_that.notesModeEnabled,_that.mistakeCount,_that.mistakeLimit,_that.hintCount,_that.isDailyChallenge,_that.undoStack,_that.redoStack);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  SudokuPuzzle puzzle,  List<SudokuCell> cells,  GameSessionStatus status,  DateTime createdAt,  DateTime updatedAt,  DateTime? startedAt,  DateTime? completedAt,  int? selectedCellIndex, @DurationSecondsConverter()  Duration elapsedTime,  bool notesModeEnabled,  int mistakeCount,  int mistakeLimit,  int hintCount,  bool isDailyChallenge,  List<GameMove> undoStack,  List<GameMove> redoStack)  $default,) {final _that = this;
switch (_that) {
case _GameSession():
return $default(_that.id,_that.puzzle,_that.cells,_that.status,_that.createdAt,_that.updatedAt,_that.startedAt,_that.completedAt,_that.selectedCellIndex,_that.elapsedTime,_that.notesModeEnabled,_that.mistakeCount,_that.mistakeLimit,_that.hintCount,_that.isDailyChallenge,_that.undoStack,_that.redoStack);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  SudokuPuzzle puzzle,  List<SudokuCell> cells,  GameSessionStatus status,  DateTime createdAt,  DateTime updatedAt,  DateTime? startedAt,  DateTime? completedAt,  int? selectedCellIndex, @DurationSecondsConverter()  Duration elapsedTime,  bool notesModeEnabled,  int mistakeCount,  int mistakeLimit,  int hintCount,  bool isDailyChallenge,  List<GameMove> undoStack,  List<GameMove> redoStack)?  $default,) {final _that = this;
switch (_that) {
case _GameSession() when $default != null:
return $default(_that.id,_that.puzzle,_that.cells,_that.status,_that.createdAt,_that.updatedAt,_that.startedAt,_that.completedAt,_that.selectedCellIndex,_that.elapsedTime,_that.notesModeEnabled,_that.mistakeCount,_that.mistakeLimit,_that.hintCount,_that.isDailyChallenge,_that.undoStack,_that.redoStack);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameSession extends GameSession {
  const _GameSession({required this.id, required this.puzzle, required final  List<SudokuCell> cells, required this.status, required this.createdAt, required this.updatedAt, this.startedAt, this.completedAt, this.selectedCellIndex, @DurationSecondsConverter() this.elapsedTime = Duration.zero, this.notesModeEnabled = false, this.mistakeCount = 0, this.mistakeLimit = 3, this.hintCount = 0, this.isDailyChallenge = false, final  List<GameMove> undoStack = const <GameMove>[], final  List<GameMove> redoStack = const <GameMove>[]}): _cells = cells,_undoStack = undoStack,_redoStack = redoStack,super._();
  factory _GameSession.fromJson(Map<String, dynamic> json) => _$GameSessionFromJson(json);

@override final  String id;
@override final  SudokuPuzzle puzzle;
 final  List<SudokuCell> _cells;
@override List<SudokuCell> get cells {
  if (_cells is EqualUnmodifiableListView) return _cells;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cells);
}

@override final  GameSessionStatus status;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  DateTime? startedAt;
@override final  DateTime? completedAt;
@override final  int? selectedCellIndex;
@override@JsonKey()@DurationSecondsConverter() final  Duration elapsedTime;
@override@JsonKey() final  bool notesModeEnabled;
@override@JsonKey() final  int mistakeCount;
@override@JsonKey() final  int mistakeLimit;
@override@JsonKey() final  int hintCount;
@override@JsonKey() final  bool isDailyChallenge;
 final  List<GameMove> _undoStack;
@override@JsonKey() List<GameMove> get undoStack {
  if (_undoStack is EqualUnmodifiableListView) return _undoStack;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_undoStack);
}

 final  List<GameMove> _redoStack;
@override@JsonKey() List<GameMove> get redoStack {
  if (_redoStack is EqualUnmodifiableListView) return _redoStack;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_redoStack);
}


/// Create a copy of GameSession
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameSessionCopyWith<_GameSession> get copyWith => __$GameSessionCopyWithImpl<_GameSession>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameSessionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameSession&&(identical(other.id, id) || other.id == id)&&(identical(other.puzzle, puzzle) || other.puzzle == puzzle)&&const DeepCollectionEquality().equals(other._cells, _cells)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.selectedCellIndex, selectedCellIndex) || other.selectedCellIndex == selectedCellIndex)&&(identical(other.elapsedTime, elapsedTime) || other.elapsedTime == elapsedTime)&&(identical(other.notesModeEnabled, notesModeEnabled) || other.notesModeEnabled == notesModeEnabled)&&(identical(other.mistakeCount, mistakeCount) || other.mistakeCount == mistakeCount)&&(identical(other.mistakeLimit, mistakeLimit) || other.mistakeLimit == mistakeLimit)&&(identical(other.hintCount, hintCount) || other.hintCount == hintCount)&&(identical(other.isDailyChallenge, isDailyChallenge) || other.isDailyChallenge == isDailyChallenge)&&const DeepCollectionEquality().equals(other._undoStack, _undoStack)&&const DeepCollectionEquality().equals(other._redoStack, _redoStack));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,puzzle,const DeepCollectionEquality().hash(_cells),status,createdAt,updatedAt,startedAt,completedAt,selectedCellIndex,elapsedTime,notesModeEnabled,mistakeCount,mistakeLimit,hintCount,isDailyChallenge,const DeepCollectionEquality().hash(_undoStack),const DeepCollectionEquality().hash(_redoStack));

@override
String toString() {
  return 'GameSession(id: $id, puzzle: $puzzle, cells: $cells, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, startedAt: $startedAt, completedAt: $completedAt, selectedCellIndex: $selectedCellIndex, elapsedTime: $elapsedTime, notesModeEnabled: $notesModeEnabled, mistakeCount: $mistakeCount, mistakeLimit: $mistakeLimit, hintCount: $hintCount, isDailyChallenge: $isDailyChallenge, undoStack: $undoStack, redoStack: $redoStack)';
}


}

/// @nodoc
abstract mixin class _$GameSessionCopyWith<$Res> implements $GameSessionCopyWith<$Res> {
  factory _$GameSessionCopyWith(_GameSession value, $Res Function(_GameSession) _then) = __$GameSessionCopyWithImpl;
@override @useResult
$Res call({
 String id, SudokuPuzzle puzzle, List<SudokuCell> cells, GameSessionStatus status, DateTime createdAt, DateTime updatedAt, DateTime? startedAt, DateTime? completedAt, int? selectedCellIndex,@DurationSecondsConverter() Duration elapsedTime, bool notesModeEnabled, int mistakeCount, int mistakeLimit, int hintCount, bool isDailyChallenge, List<GameMove> undoStack, List<GameMove> redoStack
});


@override $SudokuPuzzleCopyWith<$Res> get puzzle;

}
/// @nodoc
class __$GameSessionCopyWithImpl<$Res>
    implements _$GameSessionCopyWith<$Res> {
  __$GameSessionCopyWithImpl(this._self, this._then);

  final _GameSession _self;
  final $Res Function(_GameSession) _then;

/// Create a copy of GameSession
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? puzzle = null,Object? cells = null,Object? status = null,Object? createdAt = null,Object? updatedAt = null,Object? startedAt = freezed,Object? completedAt = freezed,Object? selectedCellIndex = freezed,Object? elapsedTime = null,Object? notesModeEnabled = null,Object? mistakeCount = null,Object? mistakeLimit = null,Object? hintCount = null,Object? isDailyChallenge = null,Object? undoStack = null,Object? redoStack = null,}) {
  return _then(_GameSession(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,puzzle: null == puzzle ? _self.puzzle : puzzle // ignore: cast_nullable_to_non_nullable
as SudokuPuzzle,cells: null == cells ? _self._cells : cells // ignore: cast_nullable_to_non_nullable
as List<SudokuCell>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GameSessionStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,selectedCellIndex: freezed == selectedCellIndex ? _self.selectedCellIndex : selectedCellIndex // ignore: cast_nullable_to_non_nullable
as int?,elapsedTime: null == elapsedTime ? _self.elapsedTime : elapsedTime // ignore: cast_nullable_to_non_nullable
as Duration,notesModeEnabled: null == notesModeEnabled ? _self.notesModeEnabled : notesModeEnabled // ignore: cast_nullable_to_non_nullable
as bool,mistakeCount: null == mistakeCount ? _self.mistakeCount : mistakeCount // ignore: cast_nullable_to_non_nullable
as int,mistakeLimit: null == mistakeLimit ? _self.mistakeLimit : mistakeLimit // ignore: cast_nullable_to_non_nullable
as int,hintCount: null == hintCount ? _self.hintCount : hintCount // ignore: cast_nullable_to_non_nullable
as int,isDailyChallenge: null == isDailyChallenge ? _self.isDailyChallenge : isDailyChallenge // ignore: cast_nullable_to_non_nullable
as bool,undoStack: null == undoStack ? _self._undoStack : undoStack // ignore: cast_nullable_to_non_nullable
as List<GameMove>,redoStack: null == redoStack ? _self._redoStack : redoStack // ignore: cast_nullable_to_non_nullable
as List<GameMove>,
  ));
}

/// Create a copy of GameSession
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
