// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_all_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReadAllRespDto {

 int get updatedCount;
/// Create a copy of ReadAllRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReadAllRespDtoCopyWith<ReadAllRespDto> get copyWith => _$ReadAllRespDtoCopyWithImpl<ReadAllRespDto>(this as ReadAllRespDto, _$identity);

  /// Serializes this ReadAllRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReadAllRespDto&&(identical(other.updatedCount, updatedCount) || other.updatedCount == updatedCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,updatedCount);

@override
String toString() {
  return 'ReadAllRespDto(updatedCount: $updatedCount)';
}


}

/// @nodoc
abstract mixin class $ReadAllRespDtoCopyWith<$Res>  {
  factory $ReadAllRespDtoCopyWith(ReadAllRespDto value, $Res Function(ReadAllRespDto) _then) = _$ReadAllRespDtoCopyWithImpl;
@useResult
$Res call({
 int updatedCount
});




}
/// @nodoc
class _$ReadAllRespDtoCopyWithImpl<$Res>
    implements $ReadAllRespDtoCopyWith<$Res> {
  _$ReadAllRespDtoCopyWithImpl(this._self, this._then);

  final ReadAllRespDto _self;
  final $Res Function(ReadAllRespDto) _then;

/// Create a copy of ReadAllRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? updatedCount = null,}) {
  return _then(_self.copyWith(
updatedCount: null == updatedCount ? _self.updatedCount : updatedCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ReadAllRespDto].
extension ReadAllRespDtoPatterns on ReadAllRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReadAllRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReadAllRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReadAllRespDto value)  $default,){
final _that = this;
switch (_that) {
case _ReadAllRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReadAllRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _ReadAllRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int updatedCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReadAllRespDto() when $default != null:
return $default(_that.updatedCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int updatedCount)  $default,) {final _that = this;
switch (_that) {
case _ReadAllRespDto():
return $default(_that.updatedCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int updatedCount)?  $default,) {final _that = this;
switch (_that) {
case _ReadAllRespDto() when $default != null:
return $default(_that.updatedCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReadAllRespDto implements ReadAllRespDto {
  const _ReadAllRespDto({this.updatedCount = 0});
  factory _ReadAllRespDto.fromJson(Map<String, dynamic> json) => _$ReadAllRespDtoFromJson(json);

@override@JsonKey() final  int updatedCount;

/// Create a copy of ReadAllRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReadAllRespDtoCopyWith<_ReadAllRespDto> get copyWith => __$ReadAllRespDtoCopyWithImpl<_ReadAllRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReadAllRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReadAllRespDto&&(identical(other.updatedCount, updatedCount) || other.updatedCount == updatedCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,updatedCount);

@override
String toString() {
  return 'ReadAllRespDto(updatedCount: $updatedCount)';
}


}

/// @nodoc
abstract mixin class _$ReadAllRespDtoCopyWith<$Res> implements $ReadAllRespDtoCopyWith<$Res> {
  factory _$ReadAllRespDtoCopyWith(_ReadAllRespDto value, $Res Function(_ReadAllRespDto) _then) = __$ReadAllRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int updatedCount
});




}
/// @nodoc
class __$ReadAllRespDtoCopyWithImpl<$Res>
    implements _$ReadAllRespDtoCopyWith<$Res> {
  __$ReadAllRespDtoCopyWithImpl(this._self, this._then);

  final _ReadAllRespDto _self;
  final $Res Function(_ReadAllRespDto) _then;

/// Create a copy of ReadAllRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? updatedCount = null,}) {
  return _then(_ReadAllRespDto(
updatedCount: null == updatedCount ? _self.updatedCount : updatedCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
