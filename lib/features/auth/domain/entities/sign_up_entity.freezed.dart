// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpEntity {

 String get email; String get phone; String get role; String get provider;
/// Create a copy of SignUpEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpEntityCopyWith<SignUpEntity> get copyWith => _$SignUpEntityCopyWithImpl<SignUpEntity>(this as SignUpEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpEntity&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.role, role) || other.role == role)&&(identical(other.provider, provider) || other.provider == provider));
}


@override
int get hashCode => Object.hash(runtimeType,email,phone,role,provider);

@override
String toString() {
  return 'SignUpEntity(email: $email, phone: $phone, role: $role, provider: $provider)';
}


}

/// @nodoc
abstract mixin class $SignUpEntityCopyWith<$Res>  {
  factory $SignUpEntityCopyWith(SignUpEntity value, $Res Function(SignUpEntity) _then) = _$SignUpEntityCopyWithImpl;
@useResult
$Res call({
 String email, String phone, String role, String provider
});




}
/// @nodoc
class _$SignUpEntityCopyWithImpl<$Res>
    implements $SignUpEntityCopyWith<$Res> {
  _$SignUpEntityCopyWithImpl(this._self, this._then);

  final SignUpEntity _self;
  final $Res Function(SignUpEntity) _then;

/// Create a copy of SignUpEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? phone = null,Object? role = null,Object? provider = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SignUpEntity].
extension SignUpEntityPatterns on SignUpEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignUpEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignUpEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignUpEntity value)  $default,){
final _that = this;
switch (_that) {
case _SignUpEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignUpEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SignUpEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String phone,  String role,  String provider)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignUpEntity() when $default != null:
return $default(_that.email,_that.phone,_that.role,_that.provider);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String phone,  String role,  String provider)  $default,) {final _that = this;
switch (_that) {
case _SignUpEntity():
return $default(_that.email,_that.phone,_that.role,_that.provider);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String phone,  String role,  String provider)?  $default,) {final _that = this;
switch (_that) {
case _SignUpEntity() when $default != null:
return $default(_that.email,_that.phone,_that.role,_that.provider);case _:
  return null;

}
}

}

/// @nodoc


class _SignUpEntity implements SignUpEntity {
  const _SignUpEntity({required this.email, required this.phone, required this.role, required this.provider});
  

@override final  String email;
@override final  String phone;
@override final  String role;
@override final  String provider;

/// Create a copy of SignUpEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpEntityCopyWith<_SignUpEntity> get copyWith => __$SignUpEntityCopyWithImpl<_SignUpEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpEntity&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.role, role) || other.role == role)&&(identical(other.provider, provider) || other.provider == provider));
}


@override
int get hashCode => Object.hash(runtimeType,email,phone,role,provider);

@override
String toString() {
  return 'SignUpEntity(email: $email, phone: $phone, role: $role, provider: $provider)';
}


}

/// @nodoc
abstract mixin class _$SignUpEntityCopyWith<$Res> implements $SignUpEntityCopyWith<$Res> {
  factory _$SignUpEntityCopyWith(_SignUpEntity value, $Res Function(_SignUpEntity) _then) = __$SignUpEntityCopyWithImpl;
@override @useResult
$Res call({
 String email, String phone, String role, String provider
});




}
/// @nodoc
class __$SignUpEntityCopyWithImpl<$Res>
    implements _$SignUpEntityCopyWith<$Res> {
  __$SignUpEntityCopyWithImpl(this._self, this._then);

  final _SignUpEntity _self;
  final $Res Function(_SignUpEntity) _then;

/// Create a copy of SignUpEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? phone = null,Object? role = null,Object? provider = null,}) {
  return _then(_SignUpEntity(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
