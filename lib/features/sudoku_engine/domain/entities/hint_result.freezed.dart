// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hint_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HintResult {

 HintType get type; String get title; String get explanation; int? get cellIndex; int? get value; List<int> get candidates; List<int> get affectedCellIndexes; List<int> get eliminatedCandidates; int get cost; bool get changesBoard;
/// Create a copy of HintResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HintResultCopyWith<HintResult> get copyWith => _$HintResultCopyWithImpl<HintResult>(this as HintResult, _$identity);

  /// Serializes this HintResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HintResult&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.explanation, explanation) || other.explanation == explanation)&&(identical(other.cellIndex, cellIndex) || other.cellIndex == cellIndex)&&(identical(other.value, value) || other.value == value)&&const DeepCollectionEquality().equals(other.candidates, candidates)&&const DeepCollectionEquality().equals(other.affectedCellIndexes, affectedCellIndexes)&&const DeepCollectionEquality().equals(other.eliminatedCandidates, eliminatedCandidates)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.changesBoard, changesBoard) || other.changesBoard == changesBoard));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,title,explanation,cellIndex,value,const DeepCollectionEquality().hash(candidates),const DeepCollectionEquality().hash(affectedCellIndexes),const DeepCollectionEquality().hash(eliminatedCandidates),cost,changesBoard);

@override
String toString() {
  return 'HintResult(type: $type, title: $title, explanation: $explanation, cellIndex: $cellIndex, value: $value, candidates: $candidates, affectedCellIndexes: $affectedCellIndexes, eliminatedCandidates: $eliminatedCandidates, cost: $cost, changesBoard: $changesBoard)';
}


}

/// @nodoc
abstract mixin class $HintResultCopyWith<$Res>  {
  factory $HintResultCopyWith(HintResult value, $Res Function(HintResult) _then) = _$HintResultCopyWithImpl;
@useResult
$Res call({
 HintType type, String title, String explanation, int? cellIndex, int? value, List<int> candidates, List<int> affectedCellIndexes, List<int> eliminatedCandidates, int cost, bool changesBoard
});




}
/// @nodoc
class _$HintResultCopyWithImpl<$Res>
    implements $HintResultCopyWith<$Res> {
  _$HintResultCopyWithImpl(this._self, this._then);

  final HintResult _self;
  final $Res Function(HintResult) _then;

/// Create a copy of HintResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? title = null,Object? explanation = null,Object? cellIndex = freezed,Object? value = freezed,Object? candidates = null,Object? affectedCellIndexes = null,Object? eliminatedCandidates = null,Object? cost = null,Object? changesBoard = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as HintType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,explanation: null == explanation ? _self.explanation : explanation // ignore: cast_nullable_to_non_nullable
as String,cellIndex: freezed == cellIndex ? _self.cellIndex : cellIndex // ignore: cast_nullable_to_non_nullable
as int?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int?,candidates: null == candidates ? _self.candidates : candidates // ignore: cast_nullable_to_non_nullable
as List<int>,affectedCellIndexes: null == affectedCellIndexes ? _self.affectedCellIndexes : affectedCellIndexes // ignore: cast_nullable_to_non_nullable
as List<int>,eliminatedCandidates: null == eliminatedCandidates ? _self.eliminatedCandidates : eliminatedCandidates // ignore: cast_nullable_to_non_nullable
as List<int>,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as int,changesBoard: null == changesBoard ? _self.changesBoard : changesBoard // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [HintResult].
extension HintResultPatterns on HintResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HintResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HintResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HintResult value)  $default,){
final _that = this;
switch (_that) {
case _HintResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HintResult value)?  $default,){
final _that = this;
switch (_that) {
case _HintResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( HintType type,  String title,  String explanation,  int? cellIndex,  int? value,  List<int> candidates,  List<int> affectedCellIndexes,  List<int> eliminatedCandidates,  int cost,  bool changesBoard)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HintResult() when $default != null:
return $default(_that.type,_that.title,_that.explanation,_that.cellIndex,_that.value,_that.candidates,_that.affectedCellIndexes,_that.eliminatedCandidates,_that.cost,_that.changesBoard);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( HintType type,  String title,  String explanation,  int? cellIndex,  int? value,  List<int> candidates,  List<int> affectedCellIndexes,  List<int> eliminatedCandidates,  int cost,  bool changesBoard)  $default,) {final _that = this;
switch (_that) {
case _HintResult():
return $default(_that.type,_that.title,_that.explanation,_that.cellIndex,_that.value,_that.candidates,_that.affectedCellIndexes,_that.eliminatedCandidates,_that.cost,_that.changesBoard);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( HintType type,  String title,  String explanation,  int? cellIndex,  int? value,  List<int> candidates,  List<int> affectedCellIndexes,  List<int> eliminatedCandidates,  int cost,  bool changesBoard)?  $default,) {final _that = this;
switch (_that) {
case _HintResult() when $default != null:
return $default(_that.type,_that.title,_that.explanation,_that.cellIndex,_that.value,_that.candidates,_that.affectedCellIndexes,_that.eliminatedCandidates,_that.cost,_that.changesBoard);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HintResult extends HintResult {
  const _HintResult({required this.type, required this.title, required this.explanation, this.cellIndex, this.value, final  List<int> candidates = const <int>[], final  List<int> affectedCellIndexes = const <int>[], final  List<int> eliminatedCandidates = const <int>[], this.cost = 1, this.changesBoard = false}): _candidates = candidates,_affectedCellIndexes = affectedCellIndexes,_eliminatedCandidates = eliminatedCandidates,super._();
  factory _HintResult.fromJson(Map<String, dynamic> json) => _$HintResultFromJson(json);

@override final  HintType type;
@override final  String title;
@override final  String explanation;
@override final  int? cellIndex;
@override final  int? value;
 final  List<int> _candidates;
@override@JsonKey() List<int> get candidates {
  if (_candidates is EqualUnmodifiableListView) return _candidates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_candidates);
}

 final  List<int> _affectedCellIndexes;
@override@JsonKey() List<int> get affectedCellIndexes {
  if (_affectedCellIndexes is EqualUnmodifiableListView) return _affectedCellIndexes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_affectedCellIndexes);
}

 final  List<int> _eliminatedCandidates;
@override@JsonKey() List<int> get eliminatedCandidates {
  if (_eliminatedCandidates is EqualUnmodifiableListView) return _eliminatedCandidates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_eliminatedCandidates);
}

@override@JsonKey() final  int cost;
@override@JsonKey() final  bool changesBoard;

/// Create a copy of HintResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HintResultCopyWith<_HintResult> get copyWith => __$HintResultCopyWithImpl<_HintResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HintResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HintResult&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.explanation, explanation) || other.explanation == explanation)&&(identical(other.cellIndex, cellIndex) || other.cellIndex == cellIndex)&&(identical(other.value, value) || other.value == value)&&const DeepCollectionEquality().equals(other._candidates, _candidates)&&const DeepCollectionEquality().equals(other._affectedCellIndexes, _affectedCellIndexes)&&const DeepCollectionEquality().equals(other._eliminatedCandidates, _eliminatedCandidates)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.changesBoard, changesBoard) || other.changesBoard == changesBoard));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,title,explanation,cellIndex,value,const DeepCollectionEquality().hash(_candidates),const DeepCollectionEquality().hash(_affectedCellIndexes),const DeepCollectionEquality().hash(_eliminatedCandidates),cost,changesBoard);

@override
String toString() {
  return 'HintResult(type: $type, title: $title, explanation: $explanation, cellIndex: $cellIndex, value: $value, candidates: $candidates, affectedCellIndexes: $affectedCellIndexes, eliminatedCandidates: $eliminatedCandidates, cost: $cost, changesBoard: $changesBoard)';
}


}

/// @nodoc
abstract mixin class _$HintResultCopyWith<$Res> implements $HintResultCopyWith<$Res> {
  factory _$HintResultCopyWith(_HintResult value, $Res Function(_HintResult) _then) = __$HintResultCopyWithImpl;
@override @useResult
$Res call({
 HintType type, String title, String explanation, int? cellIndex, int? value, List<int> candidates, List<int> affectedCellIndexes, List<int> eliminatedCandidates, int cost, bool changesBoard
});




}
/// @nodoc
class __$HintResultCopyWithImpl<$Res>
    implements _$HintResultCopyWith<$Res> {
  __$HintResultCopyWithImpl(this._self, this._then);

  final _HintResult _self;
  final $Res Function(_HintResult) _then;

/// Create a copy of HintResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? title = null,Object? explanation = null,Object? cellIndex = freezed,Object? value = freezed,Object? candidates = null,Object? affectedCellIndexes = null,Object? eliminatedCandidates = null,Object? cost = null,Object? changesBoard = null,}) {
  return _then(_HintResult(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as HintType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,explanation: null == explanation ? _self.explanation : explanation // ignore: cast_nullable_to_non_nullable
as String,cellIndex: freezed == cellIndex ? _self.cellIndex : cellIndex // ignore: cast_nullable_to_non_nullable
as int?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int?,candidates: null == candidates ? _self._candidates : candidates // ignore: cast_nullable_to_non_nullable
as List<int>,affectedCellIndexes: null == affectedCellIndexes ? _self._affectedCellIndexes : affectedCellIndexes // ignore: cast_nullable_to_non_nullable
as List<int>,eliminatedCandidates: null == eliminatedCandidates ? _self._eliminatedCandidates : eliminatedCandidates // ignore: cast_nullable_to_non_nullable
as List<int>,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as int,changesBoard: null == changesBoard ? _self.changesBoard : changesBoard // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
