// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_account_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyAccountRespDto {

 bool get verified; String get message; String? get provider; String? get verificationStatus; String? get verificationTier; String? get reasonCode;
/// Create a copy of VerifyAccountRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyAccountRespDtoCopyWith<VerifyAccountRespDto> get copyWith => _$VerifyAccountRespDtoCopyWithImpl<VerifyAccountRespDto>(this as VerifyAccountRespDto, _$identity);

  /// Serializes this VerifyAccountRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyAccountRespDto&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.message, message) || other.message == message)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.verificationStatus, verificationStatus) || other.verificationStatus == verificationStatus)&&(identical(other.verificationTier, verificationTier) || other.verificationTier == verificationTier)&&(identical(other.reasonCode, reasonCode) || other.reasonCode == reasonCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,verified,message,provider,verificationStatus,verificationTier,reasonCode);

@override
String toString() {
  return 'VerifyAccountRespDto(verified: $verified, message: $message, provider: $provider, verificationStatus: $verificationStatus, verificationTier: $verificationTier, reasonCode: $reasonCode)';
}


}

/// @nodoc
abstract mixin class $VerifyAccountRespDtoCopyWith<$Res>  {
  factory $VerifyAccountRespDtoCopyWith(VerifyAccountRespDto value, $Res Function(VerifyAccountRespDto) _then) = _$VerifyAccountRespDtoCopyWithImpl;
@useResult
$Res call({
 bool verified, String message, String? provider, String? verificationStatus, String? verificationTier, String? reasonCode
});




}
/// @nodoc
class _$VerifyAccountRespDtoCopyWithImpl<$Res>
    implements $VerifyAccountRespDtoCopyWith<$Res> {
  _$VerifyAccountRespDtoCopyWithImpl(this._self, this._then);

  final VerifyAccountRespDto _self;
  final $Res Function(VerifyAccountRespDto) _then;

/// Create a copy of VerifyAccountRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? verified = null,Object? message = null,Object? provider = freezed,Object? verificationStatus = freezed,Object? verificationTier = freezed,Object? reasonCode = freezed,}) {
  return _then(_self.copyWith(
verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,verificationStatus: freezed == verificationStatus ? _self.verificationStatus : verificationStatus // ignore: cast_nullable_to_non_nullable
as String?,verificationTier: freezed == verificationTier ? _self.verificationTier : verificationTier // ignore: cast_nullable_to_non_nullable
as String?,reasonCode: freezed == reasonCode ? _self.reasonCode : reasonCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifyAccountRespDto].
extension VerifyAccountRespDtoPatterns on VerifyAccountRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyAccountRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyAccountRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyAccountRespDto value)  $default,){
final _that = this;
switch (_that) {
case _VerifyAccountRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyAccountRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyAccountRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool verified,  String message,  String? provider,  String? verificationStatus,  String? verificationTier,  String? reasonCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyAccountRespDto() when $default != null:
return $default(_that.verified,_that.message,_that.provider,_that.verificationStatus,_that.verificationTier,_that.reasonCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool verified,  String message,  String? provider,  String? verificationStatus,  String? verificationTier,  String? reasonCode)  $default,) {final _that = this;
switch (_that) {
case _VerifyAccountRespDto():
return $default(_that.verified,_that.message,_that.provider,_that.verificationStatus,_that.verificationTier,_that.reasonCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool verified,  String message,  String? provider,  String? verificationStatus,  String? verificationTier,  String? reasonCode)?  $default,) {final _that = this;
switch (_that) {
case _VerifyAccountRespDto() when $default != null:
return $default(_that.verified,_that.message,_that.provider,_that.verificationStatus,_that.verificationTier,_that.reasonCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifyAccountRespDto implements VerifyAccountRespDto {
  const _VerifyAccountRespDto({required this.verified, required this.message, this.provider, this.verificationStatus, this.verificationTier, this.reasonCode});
  factory _VerifyAccountRespDto.fromJson(Map<String, dynamic> json) => _$VerifyAccountRespDtoFromJson(json);

@override final  bool verified;
@override final  String message;
@override final  String? provider;
@override final  String? verificationStatus;
@override final  String? verificationTier;
@override final  String? reasonCode;

/// Create a copy of VerifyAccountRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyAccountRespDtoCopyWith<_VerifyAccountRespDto> get copyWith => __$VerifyAccountRespDtoCopyWithImpl<_VerifyAccountRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyAccountRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyAccountRespDto&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.message, message) || other.message == message)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.verificationStatus, verificationStatus) || other.verificationStatus == verificationStatus)&&(identical(other.verificationTier, verificationTier) || other.verificationTier == verificationTier)&&(identical(other.reasonCode, reasonCode) || other.reasonCode == reasonCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,verified,message,provider,verificationStatus,verificationTier,reasonCode);

@override
String toString() {
  return 'VerifyAccountRespDto(verified: $verified, message: $message, provider: $provider, verificationStatus: $verificationStatus, verificationTier: $verificationTier, reasonCode: $reasonCode)';
}


}

/// @nodoc
abstract mixin class _$VerifyAccountRespDtoCopyWith<$Res> implements $VerifyAccountRespDtoCopyWith<$Res> {
  factory _$VerifyAccountRespDtoCopyWith(_VerifyAccountRespDto value, $Res Function(_VerifyAccountRespDto) _then) = __$VerifyAccountRespDtoCopyWithImpl;
@override @useResult
$Res call({
 bool verified, String message, String? provider, String? verificationStatus, String? verificationTier, String? reasonCode
});




}
/// @nodoc
class __$VerifyAccountRespDtoCopyWithImpl<$Res>
    implements _$VerifyAccountRespDtoCopyWith<$Res> {
  __$VerifyAccountRespDtoCopyWithImpl(this._self, this._then);

  final _VerifyAccountRespDto _self;
  final $Res Function(_VerifyAccountRespDto) _then;

/// Create a copy of VerifyAccountRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? verified = null,Object? message = null,Object? provider = freezed,Object? verificationStatus = freezed,Object? verificationTier = freezed,Object? reasonCode = freezed,}) {
  return _then(_VerifyAccountRespDto(
verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,verificationStatus: freezed == verificationStatus ? _self.verificationStatus : verificationStatus // ignore: cast_nullable_to_non_nullable
as String?,verificationTier: freezed == verificationTier ? _self.verificationTier : verificationTier // ignore: cast_nullable_to_non_nullable
as String?,reasonCode: freezed == reasonCode ? _self.reasonCode : reasonCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
