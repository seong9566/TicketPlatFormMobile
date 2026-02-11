// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unread_count_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UnreadCountRespDto {

 int get unreadCount;
/// Create a copy of UnreadCountRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnreadCountRespDtoCopyWith<UnreadCountRespDto> get copyWith => _$UnreadCountRespDtoCopyWithImpl<UnreadCountRespDto>(this as UnreadCountRespDto, _$identity);

  /// Serializes this UnreadCountRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnreadCountRespDto&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,unreadCount);

@override
String toString() {
  return 'UnreadCountRespDto(unreadCount: $unreadCount)';
}


}

/// @nodoc
abstract mixin class $UnreadCountRespDtoCopyWith<$Res>  {
  factory $UnreadCountRespDtoCopyWith(UnreadCountRespDto value, $Res Function(UnreadCountRespDto) _then) = _$UnreadCountRespDtoCopyWithImpl;
@useResult
$Res call({
 int unreadCount
});




}
/// @nodoc
class _$UnreadCountRespDtoCopyWithImpl<$Res>
    implements $UnreadCountRespDtoCopyWith<$Res> {
  _$UnreadCountRespDtoCopyWithImpl(this._self, this._then);

  final UnreadCountRespDto _self;
  final $Res Function(UnreadCountRespDto) _then;

/// Create a copy of UnreadCountRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? unreadCount = null,}) {
  return _then(_self.copyWith(
unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UnreadCountRespDto].
extension UnreadCountRespDtoPatterns on UnreadCountRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UnreadCountRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UnreadCountRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UnreadCountRespDto value)  $default,){
final _that = this;
switch (_that) {
case _UnreadCountRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UnreadCountRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _UnreadCountRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int unreadCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UnreadCountRespDto() when $default != null:
return $default(_that.unreadCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int unreadCount)  $default,) {final _that = this;
switch (_that) {
case _UnreadCountRespDto():
return $default(_that.unreadCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int unreadCount)?  $default,) {final _that = this;
switch (_that) {
case _UnreadCountRespDto() when $default != null:
return $default(_that.unreadCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UnreadCountRespDto implements UnreadCountRespDto {
  const _UnreadCountRespDto({this.unreadCount = 0});
  factory _UnreadCountRespDto.fromJson(Map<String, dynamic> json) => _$UnreadCountRespDtoFromJson(json);

@override@JsonKey() final  int unreadCount;

/// Create a copy of UnreadCountRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnreadCountRespDtoCopyWith<_UnreadCountRespDto> get copyWith => __$UnreadCountRespDtoCopyWithImpl<_UnreadCountRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UnreadCountRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnreadCountRespDto&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,unreadCount);

@override
String toString() {
  return 'UnreadCountRespDto(unreadCount: $unreadCount)';
}


}

/// @nodoc
abstract mixin class _$UnreadCountRespDtoCopyWith<$Res> implements $UnreadCountRespDtoCopyWith<$Res> {
  factory _$UnreadCountRespDtoCopyWith(_UnreadCountRespDto value, $Res Function(_UnreadCountRespDto) _then) = __$UnreadCountRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int unreadCount
});




}
/// @nodoc
class __$UnreadCountRespDtoCopyWithImpl<$Res>
    implements _$UnreadCountRespDtoCopyWith<$Res> {
  __$UnreadCountRespDtoCopyWithImpl(this._self, this._then);

  final _UnreadCountRespDto _self;
  final $Res Function(_UnreadCountRespDto) _then;

/// Create a copy of UnreadCountRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? unreadCount = null,}) {
  return _then(_UnreadCountRespDto(
unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
