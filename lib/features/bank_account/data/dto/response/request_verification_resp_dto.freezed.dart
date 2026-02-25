// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_verification_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RequestVerificationRespDto {

 String? get expiresAt; String get message; String? get provider; String? get verificationStatus; String? get verificationTier; String? get reasonCode;
/// Create a copy of RequestVerificationRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestVerificationRespDtoCopyWith<RequestVerificationRespDto> get copyWith => _$RequestVerificationRespDtoCopyWithImpl<RequestVerificationRespDto>(this as RequestVerificationRespDto, _$identity);

  /// Serializes this RequestVerificationRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestVerificationRespDto&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.message, message) || other.message == message)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.verificationStatus, verificationStatus) || other.verificationStatus == verificationStatus)&&(identical(other.verificationTier, verificationTier) || other.verificationTier == verificationTier)&&(identical(other.reasonCode, reasonCode) || other.reasonCode == reasonCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,expiresAt,message,provider,verificationStatus,verificationTier,reasonCode);

@override
String toString() {
  return 'RequestVerificationRespDto(expiresAt: $expiresAt, message: $message, provider: $provider, verificationStatus: $verificationStatus, verificationTier: $verificationTier, reasonCode: $reasonCode)';
}


}

/// @nodoc
abstract mixin class $RequestVerificationRespDtoCopyWith<$Res>  {
  factory $RequestVerificationRespDtoCopyWith(RequestVerificationRespDto value, $Res Function(RequestVerificationRespDto) _then) = _$RequestVerificationRespDtoCopyWithImpl;
@useResult
$Res call({
 String? expiresAt, String message, String? provider, String? verificationStatus, String? verificationTier, String? reasonCode
});




}
/// @nodoc
class _$RequestVerificationRespDtoCopyWithImpl<$Res>
    implements $RequestVerificationRespDtoCopyWith<$Res> {
  _$RequestVerificationRespDtoCopyWithImpl(this._self, this._then);

  final RequestVerificationRespDto _self;
  final $Res Function(RequestVerificationRespDto) _then;

/// Create a copy of RequestVerificationRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? expiresAt = freezed,Object? message = null,Object? provider = freezed,Object? verificationStatus = freezed,Object? verificationTier = freezed,Object? reasonCode = freezed,}) {
  return _then(_self.copyWith(
expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,verificationStatus: freezed == verificationStatus ? _self.verificationStatus : verificationStatus // ignore: cast_nullable_to_non_nullable
as String?,verificationTier: freezed == verificationTier ? _self.verificationTier : verificationTier // ignore: cast_nullable_to_non_nullable
as String?,reasonCode: freezed == reasonCode ? _self.reasonCode : reasonCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestVerificationRespDto].
extension RequestVerificationRespDtoPatterns on RequestVerificationRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestVerificationRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestVerificationRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestVerificationRespDto value)  $default,){
final _that = this;
switch (_that) {
case _RequestVerificationRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestVerificationRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _RequestVerificationRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? expiresAt,  String message,  String? provider,  String? verificationStatus,  String? verificationTier,  String? reasonCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestVerificationRespDto() when $default != null:
return $default(_that.expiresAt,_that.message,_that.provider,_that.verificationStatus,_that.verificationTier,_that.reasonCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? expiresAt,  String message,  String? provider,  String? verificationStatus,  String? verificationTier,  String? reasonCode)  $default,) {final _that = this;
switch (_that) {
case _RequestVerificationRespDto():
return $default(_that.expiresAt,_that.message,_that.provider,_that.verificationStatus,_that.verificationTier,_that.reasonCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? expiresAt,  String message,  String? provider,  String? verificationStatus,  String? verificationTier,  String? reasonCode)?  $default,) {final _that = this;
switch (_that) {
case _RequestVerificationRespDto() when $default != null:
return $default(_that.expiresAt,_that.message,_that.provider,_that.verificationStatus,_that.verificationTier,_that.reasonCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestVerificationRespDto implements RequestVerificationRespDto {
  const _RequestVerificationRespDto({this.expiresAt, required this.message, this.provider, this.verificationStatus, this.verificationTier, this.reasonCode});
  factory _RequestVerificationRespDto.fromJson(Map<String, dynamic> json) => _$RequestVerificationRespDtoFromJson(json);

@override final  String? expiresAt;
@override final  String message;
@override final  String? provider;
@override final  String? verificationStatus;
@override final  String? verificationTier;
@override final  String? reasonCode;

/// Create a copy of RequestVerificationRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestVerificationRespDtoCopyWith<_RequestVerificationRespDto> get copyWith => __$RequestVerificationRespDtoCopyWithImpl<_RequestVerificationRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestVerificationRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestVerificationRespDto&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.message, message) || other.message == message)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.verificationStatus, verificationStatus) || other.verificationStatus == verificationStatus)&&(identical(other.verificationTier, verificationTier) || other.verificationTier == verificationTier)&&(identical(other.reasonCode, reasonCode) || other.reasonCode == reasonCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,expiresAt,message,provider,verificationStatus,verificationTier,reasonCode);

@override
String toString() {
  return 'RequestVerificationRespDto(expiresAt: $expiresAt, message: $message, provider: $provider, verificationStatus: $verificationStatus, verificationTier: $verificationTier, reasonCode: $reasonCode)';
}


}

/// @nodoc
abstract mixin class _$RequestVerificationRespDtoCopyWith<$Res> implements $RequestVerificationRespDtoCopyWith<$Res> {
  factory _$RequestVerificationRespDtoCopyWith(_RequestVerificationRespDto value, $Res Function(_RequestVerificationRespDto) _then) = __$RequestVerificationRespDtoCopyWithImpl;
@override @useResult
$Res call({
 String? expiresAt, String message, String? provider, String? verificationStatus, String? verificationTier, String? reasonCode
});




}
/// @nodoc
class __$RequestVerificationRespDtoCopyWithImpl<$Res>
    implements _$RequestVerificationRespDtoCopyWith<$Res> {
  __$RequestVerificationRespDtoCopyWithImpl(this._self, this._then);

  final _RequestVerificationRespDto _self;
  final $Res Function(_RequestVerificationRespDto) _then;

/// Create a copy of RequestVerificationRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? expiresAt = freezed,Object? message = null,Object? provider = freezed,Object? verificationStatus = freezed,Object? verificationTier = freezed,Object? reasonCode = freezed,}) {
  return _then(_RequestVerificationRespDto(
expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,verificationStatus: freezed == verificationStatus ? _self.verificationStatus : verificationStatus // ignore: cast_nullable_to_non_nullable
as String?,verificationTier: freezed == verificationTier ? _self.verificationTier : verificationTier // ignore: cast_nullable_to_non_nullable
as String?,reasonCode: freezed == reasonCode ? _self.reasonCode : reasonCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
