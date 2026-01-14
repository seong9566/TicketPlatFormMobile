// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sell_schedule_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SellScheduleEntity {

 String get scheduleId; String get date; String get time; String get dayOfWeek;
/// Create a copy of SellScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellScheduleEntityCopyWith<SellScheduleEntity> get copyWith => _$SellScheduleEntityCopyWithImpl<SellScheduleEntity>(this as SellScheduleEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellScheduleEntity&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.date, date) || other.date == date)&&(identical(other.time, time) || other.time == time)&&(identical(other.dayOfWeek, dayOfWeek) || other.dayOfWeek == dayOfWeek));
}


@override
int get hashCode => Object.hash(runtimeType,scheduleId,date,time,dayOfWeek);

@override
String toString() {
  return 'SellScheduleEntity(scheduleId: $scheduleId, date: $date, time: $time, dayOfWeek: $dayOfWeek)';
}


}

/// @nodoc
abstract mixin class $SellScheduleEntityCopyWith<$Res>  {
  factory $SellScheduleEntityCopyWith(SellScheduleEntity value, $Res Function(SellScheduleEntity) _then) = _$SellScheduleEntityCopyWithImpl;
@useResult
$Res call({
 String scheduleId, String date, String time, String dayOfWeek
});




}
/// @nodoc
class _$SellScheduleEntityCopyWithImpl<$Res>
    implements $SellScheduleEntityCopyWith<$Res> {
  _$SellScheduleEntityCopyWithImpl(this._self, this._then);

  final SellScheduleEntity _self;
  final $Res Function(SellScheduleEntity) _then;

/// Create a copy of SellScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? scheduleId = null,Object? date = null,Object? time = null,Object? dayOfWeek = null,}) {
  return _then(_self.copyWith(
scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,dayOfWeek: null == dayOfWeek ? _self.dayOfWeek : dayOfWeek // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SellScheduleEntity].
extension SellScheduleEntityPatterns on SellScheduleEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellScheduleEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellScheduleEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellScheduleEntity value)  $default,){
final _that = this;
switch (_that) {
case _SellScheduleEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellScheduleEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SellScheduleEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String scheduleId,  String date,  String time,  String dayOfWeek)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellScheduleEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String scheduleId,  String date,  String time,  String dayOfWeek)  $default,) {final _that = this;
switch (_that) {
case _SellScheduleEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String scheduleId,  String date,  String time,  String dayOfWeek)?  $default,) {final _that = this;
switch (_that) {
case _SellScheduleEntity() when $default != null:
return $default(_that.scheduleId,_that.date,_that.time,_that.dayOfWeek);case _:
  return null;

}
}

}

/// @nodoc


class _SellScheduleEntity implements SellScheduleEntity {
  const _SellScheduleEntity({required this.scheduleId, required this.date, required this.time, required this.dayOfWeek});
  

@override final  String scheduleId;
@override final  String date;
@override final  String time;
@override final  String dayOfWeek;

/// Create a copy of SellScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellScheduleEntityCopyWith<_SellScheduleEntity> get copyWith => __$SellScheduleEntityCopyWithImpl<_SellScheduleEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellScheduleEntity&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.date, date) || other.date == date)&&(identical(other.time, time) || other.time == time)&&(identical(other.dayOfWeek, dayOfWeek) || other.dayOfWeek == dayOfWeek));
}


@override
int get hashCode => Object.hash(runtimeType,scheduleId,date,time,dayOfWeek);

@override
String toString() {
  return 'SellScheduleEntity(scheduleId: $scheduleId, date: $date, time: $time, dayOfWeek: $dayOfWeek)';
}


}

/// @nodoc
abstract mixin class _$SellScheduleEntityCopyWith<$Res> implements $SellScheduleEntityCopyWith<$Res> {
  factory _$SellScheduleEntityCopyWith(_SellScheduleEntity value, $Res Function(_SellScheduleEntity) _then) = __$SellScheduleEntityCopyWithImpl;
@override @useResult
$Res call({
 String scheduleId, String date, String time, String dayOfWeek
});




}
/// @nodoc
class __$SellScheduleEntityCopyWithImpl<$Res>
    implements _$SellScheduleEntityCopyWith<$Res> {
  __$SellScheduleEntityCopyWithImpl(this._self, this._then);

  final _SellScheduleEntity _self;
  final $Res Function(_SellScheduleEntity) _then;

/// Create a copy of SellScheduleEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? scheduleId = null,Object? date = null,Object? time = null,Object? dayOfWeek = null,}) {
  return _then(_SellScheduleEntity(
scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,dayOfWeek: null == dayOfWeek ? _self.dayOfWeek : dayOfWeek // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
