// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_refresh_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ImageRefreshRespDto {

 String? get profileImageUrl;
/// Create a copy of ImageRefreshRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageRefreshRespDtoCopyWith<ImageRefreshRespDto> get copyWith => _$ImageRefreshRespDtoCopyWithImpl<ImageRefreshRespDto>(this as ImageRefreshRespDto, _$identity);

  /// Serializes this ImageRefreshRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageRefreshRespDto&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,profileImageUrl);

@override
String toString() {
  return 'ImageRefreshRespDto(profileImageUrl: $profileImageUrl)';
}


}

/// @nodoc
abstract mixin class $ImageRefreshRespDtoCopyWith<$Res>  {
  factory $ImageRefreshRespDtoCopyWith(ImageRefreshRespDto value, $Res Function(ImageRefreshRespDto) _then) = _$ImageRefreshRespDtoCopyWithImpl;
@useResult
$Res call({
 String? profileImageUrl
});




}
/// @nodoc
class _$ImageRefreshRespDtoCopyWithImpl<$Res>
    implements $ImageRefreshRespDtoCopyWith<$Res> {
  _$ImageRefreshRespDtoCopyWithImpl(this._self, this._then);

  final ImageRefreshRespDto _self;
  final $Res Function(ImageRefreshRespDto) _then;

/// Create a copy of ImageRefreshRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profileImageUrl = freezed,}) {
  return _then(_self.copyWith(
profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ImageRefreshRespDto].
extension ImageRefreshRespDtoPatterns on ImageRefreshRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImageRefreshRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImageRefreshRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImageRefreshRespDto value)  $default,){
final _that = this;
switch (_that) {
case _ImageRefreshRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImageRefreshRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _ImageRefreshRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? profileImageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImageRefreshRespDto() when $default != null:
return $default(_that.profileImageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? profileImageUrl)  $default,) {final _that = this;
switch (_that) {
case _ImageRefreshRespDto():
return $default(_that.profileImageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? profileImageUrl)?  $default,) {final _that = this;
switch (_that) {
case _ImageRefreshRespDto() when $default != null:
return $default(_that.profileImageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ImageRefreshRespDto implements ImageRefreshRespDto {
  const _ImageRefreshRespDto({this.profileImageUrl});
  factory _ImageRefreshRespDto.fromJson(Map<String, dynamic> json) => _$ImageRefreshRespDtoFromJson(json);

@override final  String? profileImageUrl;

/// Create a copy of ImageRefreshRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageRefreshRespDtoCopyWith<_ImageRefreshRespDto> get copyWith => __$ImageRefreshRespDtoCopyWithImpl<_ImageRefreshRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImageRefreshRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageRefreshRespDto&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,profileImageUrl);

@override
String toString() {
  return 'ImageRefreshRespDto(profileImageUrl: $profileImageUrl)';
}


}

/// @nodoc
abstract mixin class _$ImageRefreshRespDtoCopyWith<$Res> implements $ImageRefreshRespDtoCopyWith<$Res> {
  factory _$ImageRefreshRespDtoCopyWith(_ImageRefreshRespDto value, $Res Function(_ImageRefreshRespDto) _then) = __$ImageRefreshRespDtoCopyWithImpl;
@override @useResult
$Res call({
 String? profileImageUrl
});




}
/// @nodoc
class __$ImageRefreshRespDtoCopyWithImpl<$Res>
    implements _$ImageRefreshRespDtoCopyWith<$Res> {
  __$ImageRefreshRespDtoCopyWithImpl(this._self, this._then);

  final _ImageRefreshRespDto _self;
  final $Res Function(_ImageRefreshRespDto) _then;

/// Create a copy of ImageRefreshRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profileImageUrl = freezed,}) {
  return _then(_ImageRefreshRespDto(
profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
