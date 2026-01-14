// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sell_date_time_selection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SellDateTimeSelectionState {

 List<SellScheduleUiModel> get schedules; DateTime? get selectedDate; String? get selectedScheduleId;
/// Create a copy of SellDateTimeSelectionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellDateTimeSelectionStateCopyWith<SellDateTimeSelectionState> get copyWith => _$SellDateTimeSelectionStateCopyWithImpl<SellDateTimeSelectionState>(this as SellDateTimeSelectionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellDateTimeSelectionState&&const DeepCollectionEquality().equals(other.schedules, schedules)&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate)&&(identical(other.selectedScheduleId, selectedScheduleId) || other.selectedScheduleId == selectedScheduleId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(schedules),selectedDate,selectedScheduleId);

@override
String toString() {
  return 'SellDateTimeSelectionState(schedules: $schedules, selectedDate: $selectedDate, selectedScheduleId: $selectedScheduleId)';
}


}

/// @nodoc
abstract mixin class $SellDateTimeSelectionStateCopyWith<$Res>  {
  factory $SellDateTimeSelectionStateCopyWith(SellDateTimeSelectionState value, $Res Function(SellDateTimeSelectionState) _then) = _$SellDateTimeSelectionStateCopyWithImpl;
@useResult
$Res call({
 List<SellScheduleUiModel> schedules, DateTime? selectedDate, String? selectedScheduleId
});




}
/// @nodoc
class _$SellDateTimeSelectionStateCopyWithImpl<$Res>
    implements $SellDateTimeSelectionStateCopyWith<$Res> {
  _$SellDateTimeSelectionStateCopyWithImpl(this._self, this._then);

  final SellDateTimeSelectionState _self;
  final $Res Function(SellDateTimeSelectionState) _then;

/// Create a copy of SellDateTimeSelectionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? schedules = null,Object? selectedDate = freezed,Object? selectedScheduleId = freezed,}) {
  return _then(_self.copyWith(
schedules: null == schedules ? _self.schedules : schedules // ignore: cast_nullable_to_non_nullable
as List<SellScheduleUiModel>,selectedDate: freezed == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,selectedScheduleId: freezed == selectedScheduleId ? _self.selectedScheduleId : selectedScheduleId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SellDateTimeSelectionState].
extension SellDateTimeSelectionStatePatterns on SellDateTimeSelectionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellDateTimeSelectionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellDateTimeSelectionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellDateTimeSelectionState value)  $default,){
final _that = this;
switch (_that) {
case _SellDateTimeSelectionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellDateTimeSelectionState value)?  $default,){
final _that = this;
switch (_that) {
case _SellDateTimeSelectionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SellScheduleUiModel> schedules,  DateTime? selectedDate,  String? selectedScheduleId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellDateTimeSelectionState() when $default != null:
return $default(_that.schedules,_that.selectedDate,_that.selectedScheduleId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SellScheduleUiModel> schedules,  DateTime? selectedDate,  String? selectedScheduleId)  $default,) {final _that = this;
switch (_that) {
case _SellDateTimeSelectionState():
return $default(_that.schedules,_that.selectedDate,_that.selectedScheduleId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SellScheduleUiModel> schedules,  DateTime? selectedDate,  String? selectedScheduleId)?  $default,) {final _that = this;
switch (_that) {
case _SellDateTimeSelectionState() when $default != null:
return $default(_that.schedules,_that.selectedDate,_that.selectedScheduleId);case _:
  return null;

}
}

}

/// @nodoc


class _SellDateTimeSelectionState implements SellDateTimeSelectionState {
  const _SellDateTimeSelectionState({final  List<SellScheduleUiModel> schedules = const [], this.selectedDate = null, this.selectedScheduleId = null}): _schedules = schedules;
  

 final  List<SellScheduleUiModel> _schedules;
@override@JsonKey() List<SellScheduleUiModel> get schedules {
  if (_schedules is EqualUnmodifiableListView) return _schedules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_schedules);
}

@override@JsonKey() final  DateTime? selectedDate;
@override@JsonKey() final  String? selectedScheduleId;

/// Create a copy of SellDateTimeSelectionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellDateTimeSelectionStateCopyWith<_SellDateTimeSelectionState> get copyWith => __$SellDateTimeSelectionStateCopyWithImpl<_SellDateTimeSelectionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellDateTimeSelectionState&&const DeepCollectionEquality().equals(other._schedules, _schedules)&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate)&&(identical(other.selectedScheduleId, selectedScheduleId) || other.selectedScheduleId == selectedScheduleId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_schedules),selectedDate,selectedScheduleId);

@override
String toString() {
  return 'SellDateTimeSelectionState(schedules: $schedules, selectedDate: $selectedDate, selectedScheduleId: $selectedScheduleId)';
}


}

/// @nodoc
abstract mixin class _$SellDateTimeSelectionStateCopyWith<$Res> implements $SellDateTimeSelectionStateCopyWith<$Res> {
  factory _$SellDateTimeSelectionStateCopyWith(_SellDateTimeSelectionState value, $Res Function(_SellDateTimeSelectionState) _then) = __$SellDateTimeSelectionStateCopyWithImpl;
@override @useResult
$Res call({
 List<SellScheduleUiModel> schedules, DateTime? selectedDate, String? selectedScheduleId
});




}
/// @nodoc
class __$SellDateTimeSelectionStateCopyWithImpl<$Res>
    implements _$SellDateTimeSelectionStateCopyWith<$Res> {
  __$SellDateTimeSelectionStateCopyWithImpl(this._self, this._then);

  final _SellDateTimeSelectionState _self;
  final $Res Function(_SellDateTimeSelectionState) _then;

/// Create a copy of SellDateTimeSelectionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? schedules = null,Object? selectedDate = freezed,Object? selectedScheduleId = freezed,}) {
  return _then(_SellDateTimeSelectionState(
schedules: null == schedules ? _self._schedules : schedules // ignore: cast_nullable_to_non_nullable
as List<SellScheduleUiModel>,selectedDate: freezed == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,selectedScheduleId: freezed == selectedScheduleId ? _self.selectedScheduleId : selectedScheduleId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
