// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sudoku_puzzle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SudokuPuzzle {

 String get id; List<int?> get initialGrid; List<int> get solutionGrid; SudokuDifficulty get difficulty; SudokuPuzzleSource get source; DateTime get createdAt; String? get seed; int get rating; int get generatorVersion; Map<String, Object?> get metadata;
/// Create a copy of SudokuPuzzle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SudokuPuzzleCopyWith<SudokuPuzzle> get copyWith => _$SudokuPuzzleCopyWithImpl<SudokuPuzzle>(this as SudokuPuzzle, _$identity);

  /// Serializes this SudokuPuzzle to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SudokuPuzzle&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.initialGrid, initialGrid)&&const DeepCollectionEquality().equals(other.solutionGrid, solutionGrid)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.source, source) || other.source == source)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.seed, seed) || other.seed == seed)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.generatorVersion, generatorVersion) || other.generatorVersion == generatorVersion)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(initialGrid),const DeepCollectionEquality().hash(solutionGrid),difficulty,source,createdAt,seed,rating,generatorVersion,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'SudokuPuzzle(id: $id, initialGrid: $initialGrid, solutionGrid: $solutionGrid, difficulty: $difficulty, source: $source, createdAt: $createdAt, seed: $seed, rating: $rating, generatorVersion: $generatorVersion, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $SudokuPuzzleCopyWith<$Res>  {
  factory $SudokuPuzzleCopyWith(SudokuPuzzle value, $Res Function(SudokuPuzzle) _then) = _$SudokuPuzzleCopyWithImpl;
@useResult
$Res call({
 String id, List<int?> initialGrid, List<int> solutionGrid, SudokuDifficulty difficulty, SudokuPuzzleSource source, DateTime createdAt, String? seed, int rating, int generatorVersion, Map<String, Object?> metadata
});




}
/// @nodoc
class _$SudokuPuzzleCopyWithImpl<$Res>
    implements $SudokuPuzzleCopyWith<$Res> {
  _$SudokuPuzzleCopyWithImpl(this._self, this._then);

  final SudokuPuzzle _self;
  final $Res Function(SudokuPuzzle) _then;

/// Create a copy of SudokuPuzzle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? initialGrid = null,Object? solutionGrid = null,Object? difficulty = null,Object? source = null,Object? createdAt = null,Object? seed = freezed,Object? rating = null,Object? generatorVersion = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,initialGrid: null == initialGrid ? _self.initialGrid : initialGrid // ignore: cast_nullable_to_non_nullable
as List<int?>,solutionGrid: null == solutionGrid ? _self.solutionGrid : solutionGrid // ignore: cast_nullable_to_non_nullable
as List<int>,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as SudokuDifficulty,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as SudokuPuzzleSource,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,seed: freezed == seed ? _self.seed : seed // ignore: cast_nullable_to_non_nullable
as String?,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,generatorVersion: null == generatorVersion ? _self.generatorVersion : generatorVersion // ignore: cast_nullable_to_non_nullable
as int,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [SudokuPuzzle].
extension SudokuPuzzlePatterns on SudokuPuzzle {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SudokuPuzzle value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SudokuPuzzle() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SudokuPuzzle value)  $default,){
final _that = this;
switch (_that) {
case _SudokuPuzzle():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SudokuPuzzle value)?  $default,){
final _that = this;
switch (_that) {
case _SudokuPuzzle() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<int?> initialGrid,  List<int> solutionGrid,  SudokuDifficulty difficulty,  SudokuPuzzleSource source,  DateTime createdAt,  String? seed,  int rating,  int generatorVersion,  Map<String, Object?> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SudokuPuzzle() when $default != null:
return $default(_that.id,_that.initialGrid,_that.solutionGrid,_that.difficulty,_that.source,_that.createdAt,_that.seed,_that.rating,_that.generatorVersion,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<int?> initialGrid,  List<int> solutionGrid,  SudokuDifficulty difficulty,  SudokuPuzzleSource source,  DateTime createdAt,  String? seed,  int rating,  int generatorVersion,  Map<String, Object?> metadata)  $default,) {final _that = this;
switch (_that) {
case _SudokuPuzzle():
return $default(_that.id,_that.initialGrid,_that.solutionGrid,_that.difficulty,_that.source,_that.createdAt,_that.seed,_that.rating,_that.generatorVersion,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<int?> initialGrid,  List<int> solutionGrid,  SudokuDifficulty difficulty,  SudokuPuzzleSource source,  DateTime createdAt,  String? seed,  int rating,  int generatorVersion,  Map<String, Object?> metadata)?  $default,) {final _that = this;
switch (_that) {
case _SudokuPuzzle() when $default != null:
return $default(_that.id,_that.initialGrid,_that.solutionGrid,_that.difficulty,_that.source,_that.createdAt,_that.seed,_that.rating,_that.generatorVersion,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SudokuPuzzle extends SudokuPuzzle {
  const _SudokuPuzzle({required this.id, required final  List<int?> initialGrid, required final  List<int> solutionGrid, required this.difficulty, required this.source, required this.createdAt, this.seed, this.rating = 0, this.generatorVersion = 1, final  Map<String, Object?> metadata = const <String, Object?>{}}): _initialGrid = initialGrid,_solutionGrid = solutionGrid,_metadata = metadata,super._();
  factory _SudokuPuzzle.fromJson(Map<String, dynamic> json) => _$SudokuPuzzleFromJson(json);

@override final  String id;
 final  List<int?> _initialGrid;
@override List<int?> get initialGrid {
  if (_initialGrid is EqualUnmodifiableListView) return _initialGrid;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_initialGrid);
}

 final  List<int> _solutionGrid;
@override List<int> get solutionGrid {
  if (_solutionGrid is EqualUnmodifiableListView) return _solutionGrid;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_solutionGrid);
}

@override final  SudokuDifficulty difficulty;
@override final  SudokuPuzzleSource source;
@override final  DateTime createdAt;
@override final  String? seed;
@override@JsonKey() final  int rating;
@override@JsonKey() final  int generatorVersion;
 final  Map<String, Object?> _metadata;
@override@JsonKey() Map<String, Object?> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of SudokuPuzzle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SudokuPuzzleCopyWith<_SudokuPuzzle> get copyWith => __$SudokuPuzzleCopyWithImpl<_SudokuPuzzle>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SudokuPuzzleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SudokuPuzzle&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._initialGrid, _initialGrid)&&const DeepCollectionEquality().equals(other._solutionGrid, _solutionGrid)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.source, source) || other.source == source)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.seed, seed) || other.seed == seed)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.generatorVersion, generatorVersion) || other.generatorVersion == generatorVersion)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_initialGrid),const DeepCollectionEquality().hash(_solutionGrid),difficulty,source,createdAt,seed,rating,generatorVersion,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'SudokuPuzzle(id: $id, initialGrid: $initialGrid, solutionGrid: $solutionGrid, difficulty: $difficulty, source: $source, createdAt: $createdAt, seed: $seed, rating: $rating, generatorVersion: $generatorVersion, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$SudokuPuzzleCopyWith<$Res> implements $SudokuPuzzleCopyWith<$Res> {
  factory _$SudokuPuzzleCopyWith(_SudokuPuzzle value, $Res Function(_SudokuPuzzle) _then) = __$SudokuPuzzleCopyWithImpl;
@override @useResult
$Res call({
 String id, List<int?> initialGrid, List<int> solutionGrid, SudokuDifficulty difficulty, SudokuPuzzleSource source, DateTime createdAt, String? seed, int rating, int generatorVersion, Map<String, Object?> metadata
});




}
/// @nodoc
class __$SudokuPuzzleCopyWithImpl<$Res>
    implements _$SudokuPuzzleCopyWith<$Res> {
  __$SudokuPuzzleCopyWithImpl(this._self, this._then);

  final _SudokuPuzzle _self;
  final $Res Function(_SudokuPuzzle) _then;

/// Create a copy of SudokuPuzzle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? initialGrid = null,Object? solutionGrid = null,Object? difficulty = null,Object? source = null,Object? createdAt = null,Object? seed = freezed,Object? rating = null,Object? generatorVersion = null,Object? metadata = null,}) {
  return _then(_SudokuPuzzle(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,initialGrid: null == initialGrid ? _self._initialGrid : initialGrid // ignore: cast_nullable_to_non_nullable
as List<int?>,solutionGrid: null == solutionGrid ? _self._solutionGrid : solutionGrid // ignore: cast_nullable_to_non_nullable
as List<int>,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as SudokuDifficulty,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as SudokuPuzzleSource,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,seed: freezed == seed ? _self.seed : seed // ignore: cast_nullable_to_non_nullable
as String?,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,generatorVersion: null == generatorVersion ? _self.generatorVersion : generatorVersion // ignore: cast_nullable_to_non_nullable
as int,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}


}

// dart format on
