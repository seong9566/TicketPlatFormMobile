// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_toggle_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FavoriteToggleRespDto {

 int get ticketId; bool get isFavorited;
/// Create a copy of FavoriteToggleRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteToggleRespDtoCopyWith<FavoriteToggleRespDto> get copyWith => _$FavoriteToggleRespDtoCopyWithImpl<FavoriteToggleRespDto>(this as FavoriteToggleRespDto, _$identity);

  /// Serializes this FavoriteToggleRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteToggleRespDto&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.isFavorited, isFavorited) || other.isFavorited == isFavorited));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketId,isFavorited);

@override
String toString() {
  return 'FavoriteToggleRespDto(ticketId: $ticketId, isFavorited: $isFavorited)';
}


}

/// @nodoc
abstract mixin class $FavoriteToggleRespDtoCopyWith<$Res>  {
  factory $FavoriteToggleRespDtoCopyWith(FavoriteToggleRespDto value, $Res Function(FavoriteToggleRespDto) _then) = _$FavoriteToggleRespDtoCopyWithImpl;
@useResult
$Res call({
 int ticketId, bool isFavorited
});




}
/// @nodoc
class _$FavoriteToggleRespDtoCopyWithImpl<$Res>
    implements $FavoriteToggleRespDtoCopyWith<$Res> {
  _$FavoriteToggleRespDtoCopyWithImpl(this._self, this._then);

  final FavoriteToggleRespDto _self;
  final $Res Function(FavoriteToggleRespDto) _then;

/// Create a copy of FavoriteToggleRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,Object? isFavorited = null,}) {
  return _then(_self.copyWith(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,isFavorited: null == isFavorited ? _self.isFavorited : isFavorited // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FavoriteToggleRespDto].
extension FavoriteToggleRespDtoPatterns on FavoriteToggleRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoriteToggleRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoriteToggleRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoriteToggleRespDto value)  $default,){
final _that = this;
switch (_that) {
case _FavoriteToggleRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoriteToggleRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _FavoriteToggleRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int ticketId,  bool isFavorited)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoriteToggleRespDto() when $default != null:
return $default(_that.ticketId,_that.isFavorited);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int ticketId,  bool isFavorited)  $default,) {final _that = this;
switch (_that) {
case _FavoriteToggleRespDto():
return $default(_that.ticketId,_that.isFavorited);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int ticketId,  bool isFavorited)?  $default,) {final _that = this;
switch (_that) {
case _FavoriteToggleRespDto() when $default != null:
return $default(_that.ticketId,_that.isFavorited);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FavoriteToggleRespDto implements FavoriteToggleRespDto {
  const _FavoriteToggleRespDto({required this.ticketId, required this.isFavorited});
  factory _FavoriteToggleRespDto.fromJson(Map<String, dynamic> json) => _$FavoriteToggleRespDtoFromJson(json);

@override final  int ticketId;
@override final  bool isFavorited;

/// Create a copy of FavoriteToggleRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoriteToggleRespDtoCopyWith<_FavoriteToggleRespDto> get copyWith => __$FavoriteToggleRespDtoCopyWithImpl<_FavoriteToggleRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FavoriteToggleRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoriteToggleRespDto&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.isFavorited, isFavorited) || other.isFavorited == isFavorited));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketId,isFavorited);

@override
String toString() {
  return 'FavoriteToggleRespDto(ticketId: $ticketId, isFavorited: $isFavorited)';
}


}

/// @nodoc
abstract mixin class _$FavoriteToggleRespDtoCopyWith<$Res> implements $FavoriteToggleRespDtoCopyWith<$Res> {
  factory _$FavoriteToggleRespDtoCopyWith(_FavoriteToggleRespDto value, $Res Function(_FavoriteToggleRespDto) _then) = __$FavoriteToggleRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int ticketId, bool isFavorited
});




}
/// @nodoc
class __$FavoriteToggleRespDtoCopyWithImpl<$Res>
    implements _$FavoriteToggleRespDtoCopyWith<$Res> {
  __$FavoriteToggleRespDtoCopyWithImpl(this._self, this._then);

  final _FavoriteToggleRespDto _self;
  final $Res Function(_FavoriteToggleRespDto) _then;

/// Create a copy of FavoriteToggleRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,Object? isFavorited = null,}) {
  return _then(_FavoriteToggleRespDto(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,isFavorited: null == isFavorited ? _self.isFavorited : isFavorited // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
