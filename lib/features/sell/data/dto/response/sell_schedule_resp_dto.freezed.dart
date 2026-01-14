// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sell_schedule_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SellScheduleRespDto {

 String get scheduleId; String get date; String get time; String get dayOfWeek;
/// Create a copy of SellScheduleRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellScheduleRespDtoCopyWith<SellScheduleRespDto> get copyWith => _$SellScheduleRespDtoCopyWithImpl<SellScheduleRespDto>(this as SellScheduleRespDto, _$identity);

  /// Serializes this SellScheduleRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellScheduleRespDto&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.date, date) || other.date == date)&&(identical(other.time, time) || other.time == time)&&(identical(other.dayOfWeek, dayOfWeek) || other.dayOfWeek == dayOfWeek));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,scheduleId,date,time,dayOfWeek);

@override
String toString() {
  return 'SellScheduleRespDto(scheduleId: $scheduleId, date: $date, time: $time, dayOfWeek: $dayOfWeek)';
}


}

/// @nodoc
abstract mixin class $SellScheduleRespDtoCopyWith<$Res>  {
  factory $SellScheduleRespDtoCopyWith(SellScheduleRespDto value, $Res Function(SellScheduleRespDto) _then) = _$SellScheduleRespDtoCopyWithImpl;
@useResult
$Res call({
 String scheduleId, String date, String time, String dayOfWeek
});




}
/// @nodoc
class _$SellScheduleRespDtoCopyWithImpl<$Res>
    implements $SellScheduleRespDtoCopyWith<$Res> {
  _$SellScheduleRespDtoCopyWithImpl(this._self, this._then);

  final SellScheduleRespDto _self;
  final $Res Function(SellScheduleRespDto) _then;

/// Create a copy of SellScheduleRespDto
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


/// Adds pattern-matching-related methods to [SellScheduleRespDto].
extension SellScheduleRespDtoPatterns on SellScheduleRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellScheduleRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellScheduleRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellScheduleRespDto value)  $default,){
final _that = this;
switch (_that) {
case _SellScheduleRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellScheduleRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _SellScheduleRespDto() when $default != null:
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
case _SellScheduleRespDto() when $default != null:
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
case _SellScheduleRespDto():
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
case _SellScheduleRespDto() when $default != null:
return $default(_that.scheduleId,_that.date,_that.time,_that.dayOfWeek);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SellScheduleRespDto implements SellScheduleRespDto {
  const _SellScheduleRespDto({required this.scheduleId, required this.date, required this.time, required this.dayOfWeek});
  factory _SellScheduleRespDto.fromJson(Map<String, dynamic> json) => _$SellScheduleRespDtoFromJson(json);

@override final  String scheduleId;
@override final  String date;
@override final  String time;
@override final  String dayOfWeek;

/// Create a copy of SellScheduleRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellScheduleRespDtoCopyWith<_SellScheduleRespDto> get copyWith => __$SellScheduleRespDtoCopyWithImpl<_SellScheduleRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SellScheduleRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellScheduleRespDto&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.date, date) || other.date == date)&&(identical(other.time, time) || other.time == time)&&(identical(other.dayOfWeek, dayOfWeek) || other.dayOfWeek == dayOfWeek));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,scheduleId,date,time,dayOfWeek);

@override
String toString() {
  return 'SellScheduleRespDto(scheduleId: $scheduleId, date: $date, time: $time, dayOfWeek: $dayOfWeek)';
}


}

/// @nodoc
abstract mixin class _$SellScheduleRespDtoCopyWith<$Res> implements $SellScheduleRespDtoCopyWith<$Res> {
  factory _$SellScheduleRespDtoCopyWith(_SellScheduleRespDto value, $Res Function(_SellScheduleRespDto) _then) = __$SellScheduleRespDtoCopyWithImpl;
@override @useResult
$Res call({
 String scheduleId, String date, String time, String dayOfWeek
});




}
/// @nodoc
class __$SellScheduleRespDtoCopyWithImpl<$Res>
    implements _$SellScheduleRespDtoCopyWith<$Res> {
  __$SellScheduleRespDtoCopyWithImpl(this._self, this._then);

  final _SellScheduleRespDto _self;
  final $Res Function(_SellScheduleRespDto) _then;

/// Create a copy of SellScheduleRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? scheduleId = null,Object? date = null,Object? time = null,Object? dayOfWeek = null,}) {
  return _then(_SellScheduleRespDto(
scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,dayOfWeek: null == dayOfWeek ? _self.dayOfWeek : dayOfWeek // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SellSchedulesRespDto {

 List<SellScheduleRespDto> get schedules;
/// Create a copy of SellSchedulesRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellSchedulesRespDtoCopyWith<SellSchedulesRespDto> get copyWith => _$SellSchedulesRespDtoCopyWithImpl<SellSchedulesRespDto>(this as SellSchedulesRespDto, _$identity);

  /// Serializes this SellSchedulesRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellSchedulesRespDto&&const DeepCollectionEquality().equals(other.schedules, schedules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(schedules));

@override
String toString() {
  return 'SellSchedulesRespDto(schedules: $schedules)';
}


}

/// @nodoc
abstract mixin class $SellSchedulesRespDtoCopyWith<$Res>  {
  factory $SellSchedulesRespDtoCopyWith(SellSchedulesRespDto value, $Res Function(SellSchedulesRespDto) _then) = _$SellSchedulesRespDtoCopyWithImpl;
@useResult
$Res call({
 List<SellScheduleRespDto> schedules
});




}
/// @nodoc
class _$SellSchedulesRespDtoCopyWithImpl<$Res>
    implements $SellSchedulesRespDtoCopyWith<$Res> {
  _$SellSchedulesRespDtoCopyWithImpl(this._self, this._then);

  final SellSchedulesRespDto _self;
  final $Res Function(SellSchedulesRespDto) _then;

/// Create a copy of SellSchedulesRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? schedules = null,}) {
  return _then(_self.copyWith(
schedules: null == schedules ? _self.schedules : schedules // ignore: cast_nullable_to_non_nullable
as List<SellScheduleRespDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [SellSchedulesRespDto].
extension SellSchedulesRespDtoPatterns on SellSchedulesRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellSchedulesRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellSchedulesRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellSchedulesRespDto value)  $default,){
final _that = this;
switch (_that) {
case _SellSchedulesRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellSchedulesRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _SellSchedulesRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SellScheduleRespDto> schedules)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellSchedulesRespDto() when $default != null:
return $default(_that.schedules);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SellScheduleRespDto> schedules)  $default,) {final _that = this;
switch (_that) {
case _SellSchedulesRespDto():
return $default(_that.schedules);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SellScheduleRespDto> schedules)?  $default,) {final _that = this;
switch (_that) {
case _SellSchedulesRespDto() when $default != null:
return $default(_that.schedules);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SellSchedulesRespDto implements SellSchedulesRespDto {
  const _SellSchedulesRespDto({required final  List<SellScheduleRespDto> schedules}): _schedules = schedules;
  factory _SellSchedulesRespDto.fromJson(Map<String, dynamic> json) => _$SellSchedulesRespDtoFromJson(json);

 final  List<SellScheduleRespDto> _schedules;
@override List<SellScheduleRespDto> get schedules {
  if (_schedules is EqualUnmodifiableListView) return _schedules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_schedules);
}


/// Create a copy of SellSchedulesRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellSchedulesRespDtoCopyWith<_SellSchedulesRespDto> get copyWith => __$SellSchedulesRespDtoCopyWithImpl<_SellSchedulesRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SellSchedulesRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellSchedulesRespDto&&const DeepCollectionEquality().equals(other._schedules, _schedules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_schedules));

@override
String toString() {
  return 'SellSchedulesRespDto(schedules: $schedules)';
}


}

/// @nodoc
abstract mixin class _$SellSchedulesRespDtoCopyWith<$Res> implements $SellSchedulesRespDtoCopyWith<$Res> {
  factory _$SellSchedulesRespDtoCopyWith(_SellSchedulesRespDto value, $Res Function(_SellSchedulesRespDto) _then) = __$SellSchedulesRespDtoCopyWithImpl;
@override @useResult
$Res call({
 List<SellScheduleRespDto> schedules
});




}
/// @nodoc
class __$SellSchedulesRespDtoCopyWithImpl<$Res>
    implements _$SellSchedulesRespDtoCopyWith<$Res> {
  __$SellSchedulesRespDtoCopyWithImpl(this._self, this._then);

  final _SellSchedulesRespDto _self;
  final $Res Function(_SellSchedulesRespDto) _then;

/// Create a copy of SellSchedulesRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? schedules = null,}) {
  return _then(_SellSchedulesRespDto(
schedules: null == schedules ? _self._schedules : schedules // ignore: cast_nullable_to_non_nullable
as List<SellScheduleRespDto>,
  ));
}


}

// dart format on
