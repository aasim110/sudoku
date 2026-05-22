// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sudoku_cell.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SudokuCell {

 int get index; int get row; int get column; int get box; int get solution; int? get value; bool get isGiven; List<int> get notes;
/// Create a copy of SudokuCell
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SudokuCellCopyWith<SudokuCell> get copyWith => _$SudokuCellCopyWithImpl<SudokuCell>(this as SudokuCell, _$identity);

  /// Serializes this SudokuCell to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SudokuCell&&(identical(other.index, index) || other.index == index)&&(identical(other.row, row) || other.row == row)&&(identical(other.column, column) || other.column == column)&&(identical(other.box, box) || other.box == box)&&(identical(other.solution, solution) || other.solution == solution)&&(identical(other.value, value) || other.value == value)&&(identical(other.isGiven, isGiven) || other.isGiven == isGiven)&&const DeepCollectionEquality().equals(other.notes, notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,index,row,column,box,solution,value,isGiven,const DeepCollectionEquality().hash(notes));

@override
String toString() {
  return 'SudokuCell(index: $index, row: $row, column: $column, box: $box, solution: $solution, value: $value, isGiven: $isGiven, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $SudokuCellCopyWith<$Res>  {
  factory $SudokuCellCopyWith(SudokuCell value, $Res Function(SudokuCell) _then) = _$SudokuCellCopyWithImpl;
@useResult
$Res call({
 int index, int row, int column, int box, int solution, int? value, bool isGiven, List<int> notes
});




}
/// @nodoc
class _$SudokuCellCopyWithImpl<$Res>
    implements $SudokuCellCopyWith<$Res> {
  _$SudokuCellCopyWithImpl(this._self, this._then);

  final SudokuCell _self;
  final $Res Function(SudokuCell) _then;

/// Create a copy of SudokuCell
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,Object? row = null,Object? column = null,Object? box = null,Object? solution = null,Object? value = freezed,Object? isGiven = null,Object? notes = null,}) {
  return _then(_self.copyWith(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,row: null == row ? _self.row : row // ignore: cast_nullable_to_non_nullable
as int,column: null == column ? _self.column : column // ignore: cast_nullable_to_non_nullable
as int,box: null == box ? _self.box : box // ignore: cast_nullable_to_non_nullable
as int,solution: null == solution ? _self.solution : solution // ignore: cast_nullable_to_non_nullable
as int,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int?,isGiven: null == isGiven ? _self.isGiven : isGiven // ignore: cast_nullable_to_non_nullable
as bool,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [SudokuCell].
extension SudokuCellPatterns on SudokuCell {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SudokuCell value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SudokuCell() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SudokuCell value)  $default,){
final _that = this;
switch (_that) {
case _SudokuCell():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SudokuCell value)?  $default,){
final _that = this;
switch (_that) {
case _SudokuCell() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int index,  int row,  int column,  int box,  int solution,  int? value,  bool isGiven,  List<int> notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SudokuCell() when $default != null:
return $default(_that.index,_that.row,_that.column,_that.box,_that.solution,_that.value,_that.isGiven,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int index,  int row,  int column,  int box,  int solution,  int? value,  bool isGiven,  List<int> notes)  $default,) {final _that = this;
switch (_that) {
case _SudokuCell():
return $default(_that.index,_that.row,_that.column,_that.box,_that.solution,_that.value,_that.isGiven,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int index,  int row,  int column,  int box,  int solution,  int? value,  bool isGiven,  List<int> notes)?  $default,) {final _that = this;
switch (_that) {
case _SudokuCell() when $default != null:
return $default(_that.index,_that.row,_that.column,_that.box,_that.solution,_that.value,_that.isGiven,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SudokuCell extends SudokuCell {
  const _SudokuCell({required this.index, required this.row, required this.column, required this.box, required this.solution, this.value, this.isGiven = false, final  List<int> notes = const <int>[]}): _notes = notes,super._();
  factory _SudokuCell.fromJson(Map<String, dynamic> json) => _$SudokuCellFromJson(json);

@override final  int index;
@override final  int row;
@override final  int column;
@override final  int box;
@override final  int solution;
@override final  int? value;
@override@JsonKey() final  bool isGiven;
 final  List<int> _notes;
@override@JsonKey() List<int> get notes {
  if (_notes is EqualUnmodifiableListView) return _notes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notes);
}


/// Create a copy of SudokuCell
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SudokuCellCopyWith<_SudokuCell> get copyWith => __$SudokuCellCopyWithImpl<_SudokuCell>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SudokuCellToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SudokuCell&&(identical(other.index, index) || other.index == index)&&(identical(other.row, row) || other.row == row)&&(identical(other.column, column) || other.column == column)&&(identical(other.box, box) || other.box == box)&&(identical(other.solution, solution) || other.solution == solution)&&(identical(other.value, value) || other.value == value)&&(identical(other.isGiven, isGiven) || other.isGiven == isGiven)&&const DeepCollectionEquality().equals(other._notes, _notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,index,row,column,box,solution,value,isGiven,const DeepCollectionEquality().hash(_notes));

@override
String toString() {
  return 'SudokuCell(index: $index, row: $row, column: $column, box: $box, solution: $solution, value: $value, isGiven: $isGiven, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$SudokuCellCopyWith<$Res> implements $SudokuCellCopyWith<$Res> {
  factory _$SudokuCellCopyWith(_SudokuCell value, $Res Function(_SudokuCell) _then) = __$SudokuCellCopyWithImpl;
@override @useResult
$Res call({
 int index, int row, int column, int box, int solution, int? value, bool isGiven, List<int> notes
});




}
/// @nodoc
class __$SudokuCellCopyWithImpl<$Res>
    implements _$SudokuCellCopyWith<$Res> {
  __$SudokuCellCopyWithImpl(this._self, this._then);

  final _SudokuCell _self;
  final $Res Function(_SudokuCell) _then;

/// Create a copy of SudokuCell
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,Object? row = null,Object? column = null,Object? box = null,Object? solution = null,Object? value = freezed,Object? isGiven = null,Object? notes = null,}) {
  return _then(_SudokuCell(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,row: null == row ? _self.row : row // ignore: cast_nullable_to_non_nullable
as int,column: null == column ? _self.column : column // ignore: cast_nullable_to_non_nullable
as int,box: null == box ? _self.box : box // ignore: cast_nullable_to_non_nullable
as int,solution: null == solution ? _self.solution : solution // ignore: cast_nullable_to_non_nullable
as int,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int?,isGiven: null == isGiven ? _self.isGiven : isGiven // ignore: cast_nullable_to_non_nullable
as bool,notes: null == notes ? _self._notes : notes // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
