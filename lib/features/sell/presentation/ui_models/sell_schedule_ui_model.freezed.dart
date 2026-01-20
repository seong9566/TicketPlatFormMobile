// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sell_schedule_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SellScheduleUiModel {

 String get scheduleId; DateTime get date; String get time; String get dayOfWeek;
/// Create a copy of SellScheduleUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellScheduleUiModelCopyWith<SellScheduleUiModel> get copyWith => _$SellScheduleUiModelCopyWithImpl<SellScheduleUiModel>(this as SellScheduleUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellScheduleUiModel&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.date, date) || other.date == date)&&(identical(other.time, time) || other.time == time)&&(identical(other.dayOfWeek, dayOfWeek) || other.dayOfWeek == dayOfWeek));
}


@override
int get hashCode => Object.hash(runtimeType,scheduleId,date,time,dayOfWeek);

@override
String toString() {
  return 'SellScheduleUiModel(scheduleId: $scheduleId, date: $date, time: $time, dayOfWeek: $dayOfWeek)';
}


}

/// @nodoc
abstract mixin class $SellScheduleUiModelCopyWith<$Res>  {
  factory $SellScheduleUiModelCopyWith(SellScheduleUiModel value, $Res Function(SellScheduleUiModel) _then) = _$SellScheduleUiModelCopyWithImpl;
@useResult
$Res call({
 String scheduleId, DateTime date, String time, String dayOfWeek
});




}
/// @nodoc
class _$SellScheduleUiModelCopyWithImpl<$Res>
    implements $SellScheduleUiModelCopyWith<$Res> {
  _$SellScheduleUiModelCopyWithImpl(this._self, this._then);

  final SellScheduleUiModel _self;
  final $Res Function(SellScheduleUiModel) _then;

/// Create a copy of SellScheduleUiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? scheduleId = null,Object? date = null,Object? time = null,Object? dayOfWeek = null,}) {
  return _then(_self.copyWith(
scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,dayOfWeek: null == dayOfWeek ? _self.dayOfWeek : dayOfWeek // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SellScheduleUiModel].
extension SellScheduleUiModelPatterns on SellScheduleUiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellScheduleUiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellScheduleUiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellScheduleUiModel value)  $default,){
final _that = this;
switch (_that) {
case _SellScheduleUiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellScheduleUiModel value)?  $default,){
final _that = this;
switch (_that) {
case _SellScheduleUiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String scheduleId,  DateTime date,  String time,  String dayOfWeek)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellScheduleUiModel() when $default != null:
return $default(_that.scheduleId,_that.date,_that.time,_that.dayOfWeek);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String scheduleId,  DateTime date,  String time,  String dayOfWeek)  $default,) {final _that = this;
switch (_that) {
case _SellScheduleUiModel():
return $default(_that.scheduleId,_that.date,_that.time,_that.dayOfWeek);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String scheduleId,  DateTime date,  String time,  String dayOfWeek)?  $default,) {final _that = this;
switch (_that) {
case _SellScheduleUiModel() when $default != null:
return $default(_that.scheduleId,_that.date,_that.time,_that.dayOfWeek);case _:
  return null;

}
}

}

/// @nodoc


class _SellScheduleUiModel extends SellScheduleUiModel {
  const _SellScheduleUiModel({required this.scheduleId, required this.date, required this.time, required this.dayOfWeek}): super._();
  

@override final  String scheduleId;
@override final  DateTime date;
@override final  String time;
@override final  String dayOfWeek;

/// Create a copy of SellScheduleUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellScheduleUiModelCopyWith<_SellScheduleUiModel> get copyWith => __$SellScheduleUiModelCopyWithImpl<_SellScheduleUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellScheduleUiModel&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.date, date) || other.date == date)&&(identical(other.time, time) || other.time == time)&&(identical(other.dayOfWeek, dayOfWeek) || other.dayOfWeek == dayOfWeek));
}


@override
int get hashCode => Object.hash(runtimeType,scheduleId,date,time,dayOfWeek);

@override
String toString() {
  return 'SellScheduleUiModel(scheduleId: $scheduleId, date: $date, time: $time, dayOfWeek: $dayOfWeek)';
}


}

/// @nodoc
abstract mixin class _$SellScheduleUiModelCopyWith<$Res> implements $SellScheduleUiModelCopyWith<$Res> {
  factory _$SellScheduleUiModelCopyWith(_SellScheduleUiModel value, $Res Function(_SellScheduleUiModel) _then) = __$SellScheduleUiModelCopyWithImpl;
@override @useResult
$Res call({
 String scheduleId, DateTime date, String time, String dayOfWeek
});




}
/// @nodoc
class __$SellScheduleUiModelCopyWithImpl<$Res>
    implements _$SellScheduleUiModelCopyWith<$Res> {
  __$SellScheduleUiModelCopyWithImpl(this._self, this._then);

  final _SellScheduleUiModel _self;
  final $Res Function(_SellScheduleUiModel) _then;

/// Create a copy of SellScheduleUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? scheduleId = null,Object? date = null,Object? time = null,Object? dayOfWeek = null,}) {
  return _then(_SellScheduleUiModel(
scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,dayOfWeek: null == dayOfWeek ? _self.dayOfWeek : dayOfWeek // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
