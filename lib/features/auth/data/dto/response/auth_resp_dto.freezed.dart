// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TokenRespDto {

 String get accessToken; String get refreshToken; int get expiresIn; String get tokenType; String get expiresAt;
/// Create a copy of TokenRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokenRespDtoCopyWith<TokenRespDto> get copyWith => _$TokenRespDtoCopyWithImpl<TokenRespDto>(this as TokenRespDto, _$identity);

  /// Serializes this TokenRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokenRespDto&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn)&&(identical(other.tokenType, tokenType) || other.tokenType == tokenType)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,expiresIn,tokenType,expiresAt);

@override
String toString() {
  return 'TokenRespDto(accessToken: $accessToken, refreshToken: $refreshToken, expiresIn: $expiresIn, tokenType: $tokenType, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class $TokenRespDtoCopyWith<$Res>  {
  factory $TokenRespDtoCopyWith(TokenRespDto value, $Res Function(TokenRespDto) _then) = _$TokenRespDtoCopyWithImpl;
@useResult
$Res call({
 String accessToken, String refreshToken, int expiresIn, String tokenType, String expiresAt
});




}
/// @nodoc
class _$TokenRespDtoCopyWithImpl<$Res>
    implements $TokenRespDtoCopyWith<$Res> {
  _$TokenRespDtoCopyWithImpl(this._self, this._then);

  final TokenRespDto _self;
  final $Res Function(TokenRespDto) _then;

/// Create a copy of TokenRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? refreshToken = null,Object? expiresIn = null,Object? tokenType = null,Object? expiresAt = null,}) {
  return _then(_self.copyWith(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,expiresIn: null == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int,tokenType: null == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TokenRespDto].
extension TokenRespDtoPatterns on TokenRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TokenRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TokenRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TokenRespDto value)  $default,){
final _that = this;
switch (_that) {
case _TokenRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TokenRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _TokenRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String accessToken,  String refreshToken,  int expiresIn,  String tokenType,  String expiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TokenRespDto() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.expiresIn,_that.tokenType,_that.expiresAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String accessToken,  String refreshToken,  int expiresIn,  String tokenType,  String expiresAt)  $default,) {final _that = this;
switch (_that) {
case _TokenRespDto():
return $default(_that.accessToken,_that.refreshToken,_that.expiresIn,_that.tokenType,_that.expiresAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String accessToken,  String refreshToken,  int expiresIn,  String tokenType,  String expiresAt)?  $default,) {final _that = this;
switch (_that) {
case _TokenRespDto() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.expiresIn,_that.tokenType,_that.expiresAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TokenRespDto implements TokenRespDto {
  const _TokenRespDto({required this.accessToken, required this.refreshToken, required this.expiresIn, required this.tokenType, required this.expiresAt});
  factory _TokenRespDto.fromJson(Map<String, dynamic> json) => _$TokenRespDtoFromJson(json);

@override final  String accessToken;
@override final  String refreshToken;
@override final  int expiresIn;
@override final  String tokenType;
@override final  String expiresAt;

/// Create a copy of TokenRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TokenRespDtoCopyWith<_TokenRespDto> get copyWith => __$TokenRespDtoCopyWithImpl<_TokenRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TokenRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TokenRespDto&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn)&&(identical(other.tokenType, tokenType) || other.tokenType == tokenType)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,expiresIn,tokenType,expiresAt);

@override
String toString() {
  return 'TokenRespDto(accessToken: $accessToken, refreshToken: $refreshToken, expiresIn: $expiresIn, tokenType: $tokenType, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class _$TokenRespDtoCopyWith<$Res> implements $TokenRespDtoCopyWith<$Res> {
  factory _$TokenRespDtoCopyWith(_TokenRespDto value, $Res Function(_TokenRespDto) _then) = __$TokenRespDtoCopyWithImpl;
@override @useResult
$Res call({
 String accessToken, String refreshToken, int expiresIn, String tokenType, String expiresAt
});




}
/// @nodoc
class __$TokenRespDtoCopyWithImpl<$Res>
    implements _$TokenRespDtoCopyWith<$Res> {
  __$TokenRespDtoCopyWithImpl(this._self, this._then);

  final _TokenRespDto _self;
  final $Res Function(_TokenRespDto) _then;

/// Create a copy of TokenRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? refreshToken = null,Object? expiresIn = null,Object? tokenType = null,Object? expiresAt = null,}) {
  return _then(_TokenRespDto(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,expiresIn: null == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int,tokenType: null == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AuthRespDto {

 int get id; String get email; String get role; String get provider; String? get lastLoginAt; String get accessToken; String get refreshToken; int get expiresIn; String get tokenType; String get expiresAt;
/// Create a copy of AuthRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthRespDtoCopyWith<AuthRespDto> get copyWith => _$AuthRespDtoCopyWithImpl<AuthRespDto>(this as AuthRespDto, _$identity);

  /// Serializes this AuthRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthRespDto&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.lastLoginAt, lastLoginAt) || other.lastLoginAt == lastLoginAt)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn)&&(identical(other.tokenType, tokenType) || other.tokenType == tokenType)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,role,provider,lastLoginAt,accessToken,refreshToken,expiresIn,tokenType,expiresAt);

@override
String toString() {
  return 'AuthRespDto(id: $id, email: $email, role: $role, provider: $provider, lastLoginAt: $lastLoginAt, accessToken: $accessToken, refreshToken: $refreshToken, expiresIn: $expiresIn, tokenType: $tokenType, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class $AuthRespDtoCopyWith<$Res>  {
  factory $AuthRespDtoCopyWith(AuthRespDto value, $Res Function(AuthRespDto) _then) = _$AuthRespDtoCopyWithImpl;
@useResult
$Res call({
 int id, String email, String role, String provider, String? lastLoginAt, String accessToken, String refreshToken, int expiresIn, String tokenType, String expiresAt
});




}
/// @nodoc
class _$AuthRespDtoCopyWithImpl<$Res>
    implements $AuthRespDtoCopyWith<$Res> {
  _$AuthRespDtoCopyWithImpl(this._self, this._then);

  final AuthRespDto _self;
  final $Res Function(AuthRespDto) _then;

/// Create a copy of AuthRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? role = null,Object? provider = null,Object? lastLoginAt = freezed,Object? accessToken = null,Object? refreshToken = null,Object? expiresIn = null,Object? tokenType = null,Object? expiresAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,lastLoginAt: freezed == lastLoginAt ? _self.lastLoginAt : lastLoginAt // ignore: cast_nullable_to_non_nullable
as String?,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,expiresIn: null == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int,tokenType: null == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthRespDto].
extension AuthRespDtoPatterns on AuthRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthRespDto value)  $default,){
final _that = this;
switch (_that) {
case _AuthRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _AuthRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String email,  String role,  String provider,  String? lastLoginAt,  String accessToken,  String refreshToken,  int expiresIn,  String tokenType,  String expiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthRespDto() when $default != null:
return $default(_that.id,_that.email,_that.role,_that.provider,_that.lastLoginAt,_that.accessToken,_that.refreshToken,_that.expiresIn,_that.tokenType,_that.expiresAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String email,  String role,  String provider,  String? lastLoginAt,  String accessToken,  String refreshToken,  int expiresIn,  String tokenType,  String expiresAt)  $default,) {final _that = this;
switch (_that) {
case _AuthRespDto():
return $default(_that.id,_that.email,_that.role,_that.provider,_that.lastLoginAt,_that.accessToken,_that.refreshToken,_that.expiresIn,_that.tokenType,_that.expiresAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String email,  String role,  String provider,  String? lastLoginAt,  String accessToken,  String refreshToken,  int expiresIn,  String tokenType,  String expiresAt)?  $default,) {final _that = this;
switch (_that) {
case _AuthRespDto() when $default != null:
return $default(_that.id,_that.email,_that.role,_that.provider,_that.lastLoginAt,_that.accessToken,_that.refreshToken,_that.expiresIn,_that.tokenType,_that.expiresAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthRespDto implements AuthRespDto {
  const _AuthRespDto({required this.id, required this.email, required this.role, required this.provider, this.lastLoginAt, required this.accessToken, required this.refreshToken, required this.expiresIn, required this.tokenType, required this.expiresAt});
  factory _AuthRespDto.fromJson(Map<String, dynamic> json) => _$AuthRespDtoFromJson(json);

@override final  int id;
@override final  String email;
@override final  String role;
@override final  String provider;
@override final  String? lastLoginAt;
@override final  String accessToken;
@override final  String refreshToken;
@override final  int expiresIn;
@override final  String tokenType;
@override final  String expiresAt;

/// Create a copy of AuthRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthRespDtoCopyWith<_AuthRespDto> get copyWith => __$AuthRespDtoCopyWithImpl<_AuthRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthRespDto&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.lastLoginAt, lastLoginAt) || other.lastLoginAt == lastLoginAt)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn)&&(identical(other.tokenType, tokenType) || other.tokenType == tokenType)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,role,provider,lastLoginAt,accessToken,refreshToken,expiresIn,tokenType,expiresAt);

@override
String toString() {
  return 'AuthRespDto(id: $id, email: $email, role: $role, provider: $provider, lastLoginAt: $lastLoginAt, accessToken: $accessToken, refreshToken: $refreshToken, expiresIn: $expiresIn, tokenType: $tokenType, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class _$AuthRespDtoCopyWith<$Res> implements $AuthRespDtoCopyWith<$Res> {
  factory _$AuthRespDtoCopyWith(_AuthRespDto value, $Res Function(_AuthRespDto) _then) = __$AuthRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String email, String role, String provider, String? lastLoginAt, String accessToken, String refreshToken, int expiresIn, String tokenType, String expiresAt
});




}
/// @nodoc
class __$AuthRespDtoCopyWithImpl<$Res>
    implements _$AuthRespDtoCopyWith<$Res> {
  __$AuthRespDtoCopyWithImpl(this._self, this._then);

  final _AuthRespDto _self;
  final $Res Function(_AuthRespDto) _then;

/// Create a copy of AuthRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? role = null,Object? provider = null,Object? lastLoginAt = freezed,Object? accessToken = null,Object? refreshToken = null,Object? expiresIn = null,Object? tokenType = null,Object? expiresAt = null,}) {
  return _then(_AuthRespDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,lastLoginAt: freezed == lastLoginAt ? _self.lastLoginAt : lastLoginAt // ignore: cast_nullable_to_non_nullable
as String?,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,expiresIn: null == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int,tokenType: null == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SignUpRespDto {

 String get email; String get phone; String get role; String get provider;
/// Create a copy of SignUpRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpRespDtoCopyWith<SignUpRespDto> get copyWith => _$SignUpRespDtoCopyWithImpl<SignUpRespDto>(this as SignUpRespDto, _$identity);

  /// Serializes this SignUpRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpRespDto&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.role, role) || other.role == role)&&(identical(other.provider, provider) || other.provider == provider));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,phone,role,provider);

@override
String toString() {
  return 'SignUpRespDto(email: $email, phone: $phone, role: $role, provider: $provider)';
}


}

/// @nodoc
abstract mixin class $SignUpRespDtoCopyWith<$Res>  {
  factory $SignUpRespDtoCopyWith(SignUpRespDto value, $Res Function(SignUpRespDto) _then) = _$SignUpRespDtoCopyWithImpl;
@useResult
$Res call({
 String email, String phone, String role, String provider
});




}
/// @nodoc
class _$SignUpRespDtoCopyWithImpl<$Res>
    implements $SignUpRespDtoCopyWith<$Res> {
  _$SignUpRespDtoCopyWithImpl(this._self, this._then);

  final SignUpRespDto _self;
  final $Res Function(SignUpRespDto) _then;

/// Create a copy of SignUpRespDto
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


/// Adds pattern-matching-related methods to [SignUpRespDto].
extension SignUpRespDtoPatterns on SignUpRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignUpRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignUpRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignUpRespDto value)  $default,){
final _that = this;
switch (_that) {
case _SignUpRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignUpRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _SignUpRespDto() when $default != null:
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
case _SignUpRespDto() when $default != null:
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
case _SignUpRespDto():
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
case _SignUpRespDto() when $default != null:
return $default(_that.email,_that.phone,_that.role,_that.provider);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignUpRespDto implements SignUpRespDto {
  const _SignUpRespDto({required this.email, required this.phone, required this.role, required this.provider});
  factory _SignUpRespDto.fromJson(Map<String, dynamic> json) => _$SignUpRespDtoFromJson(json);

@override final  String email;
@override final  String phone;
@override final  String role;
@override final  String provider;

/// Create a copy of SignUpRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpRespDtoCopyWith<_SignUpRespDto> get copyWith => __$SignUpRespDtoCopyWithImpl<_SignUpRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignUpRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpRespDto&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.role, role) || other.role == role)&&(identical(other.provider, provider) || other.provider == provider));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,phone,role,provider);

@override
String toString() {
  return 'SignUpRespDto(email: $email, phone: $phone, role: $role, provider: $provider)';
}


}

/// @nodoc
abstract mixin class _$SignUpRespDtoCopyWith<$Res> implements $SignUpRespDtoCopyWith<$Res> {
  factory _$SignUpRespDtoCopyWith(_SignUpRespDto value, $Res Function(_SignUpRespDto) _then) = __$SignUpRespDtoCopyWithImpl;
@override @useResult
$Res call({
 String email, String phone, String role, String provider
});




}
/// @nodoc
class __$SignUpRespDtoCopyWithImpl<$Res>
    implements _$SignUpRespDtoCopyWith<$Res> {
  __$SignUpRespDtoCopyWithImpl(this._self, this._then);

  final _SignUpRespDto _self;
  final $Res Function(_SignUpRespDto) _then;

/// Create a copy of SignUpRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? phone = null,Object? role = null,Object? provider = null,}) {
  return _then(_SignUpRespDto(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
