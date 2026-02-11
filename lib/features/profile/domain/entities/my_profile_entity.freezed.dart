// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_profile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyProfileEntity {

 int get userId; String get email; String? get provider; String get nickname; String? get profileImageUrl; String? get bio; double get mannerTemperature; int get totalTradeCount;
/// Create a copy of MyProfileEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyProfileEntityCopyWith<MyProfileEntity> get copyWith => _$MyProfileEntityCopyWithImpl<MyProfileEntity>(this as MyProfileEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyProfileEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.email, email) || other.email == email)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.mannerTemperature, mannerTemperature) || other.mannerTemperature == mannerTemperature)&&(identical(other.totalTradeCount, totalTradeCount) || other.totalTradeCount == totalTradeCount));
}


@override
int get hashCode => Object.hash(runtimeType,userId,email,provider,nickname,profileImageUrl,bio,mannerTemperature,totalTradeCount);

@override
String toString() {
  return 'MyProfileEntity(userId: $userId, email: $email, provider: $provider, nickname: $nickname, profileImageUrl: $profileImageUrl, bio: $bio, mannerTemperature: $mannerTemperature, totalTradeCount: $totalTradeCount)';
}


}

/// @nodoc
abstract mixin class $MyProfileEntityCopyWith<$Res>  {
  factory $MyProfileEntityCopyWith(MyProfileEntity value, $Res Function(MyProfileEntity) _then) = _$MyProfileEntityCopyWithImpl;
@useResult
$Res call({
 int userId, String email, String? provider, String nickname, String? profileImageUrl, String? bio, double mannerTemperature, int totalTradeCount
});




}
/// @nodoc
class _$MyProfileEntityCopyWithImpl<$Res>
    implements $MyProfileEntityCopyWith<$Res> {
  _$MyProfileEntityCopyWithImpl(this._self, this._then);

  final MyProfileEntity _self;
  final $Res Function(MyProfileEntity) _then;

/// Create a copy of MyProfileEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? email = null,Object? provider = freezed,Object? nickname = null,Object? profileImageUrl = freezed,Object? bio = freezed,Object? mannerTemperature = null,Object? totalTradeCount = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,mannerTemperature: null == mannerTemperature ? _self.mannerTemperature : mannerTemperature // ignore: cast_nullable_to_non_nullable
as double,totalTradeCount: null == totalTradeCount ? _self.totalTradeCount : totalTradeCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MyProfileEntity].
extension MyProfileEntityPatterns on MyProfileEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyProfileEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyProfileEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyProfileEntity value)  $default,){
final _that = this;
switch (_that) {
case _MyProfileEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyProfileEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MyProfileEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userId,  String email,  String? provider,  String nickname,  String? profileImageUrl,  String? bio,  double mannerTemperature,  int totalTradeCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyProfileEntity() when $default != null:
return $default(_that.userId,_that.email,_that.provider,_that.nickname,_that.profileImageUrl,_that.bio,_that.mannerTemperature,_that.totalTradeCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userId,  String email,  String? provider,  String nickname,  String? profileImageUrl,  String? bio,  double mannerTemperature,  int totalTradeCount)  $default,) {final _that = this;
switch (_that) {
case _MyProfileEntity():
return $default(_that.userId,_that.email,_that.provider,_that.nickname,_that.profileImageUrl,_that.bio,_that.mannerTemperature,_that.totalTradeCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userId,  String email,  String? provider,  String nickname,  String? profileImageUrl,  String? bio,  double mannerTemperature,  int totalTradeCount)?  $default,) {final _that = this;
switch (_that) {
case _MyProfileEntity() when $default != null:
return $default(_that.userId,_that.email,_that.provider,_that.nickname,_that.profileImageUrl,_that.bio,_that.mannerTemperature,_that.totalTradeCount);case _:
  return null;

}
}

}

/// @nodoc


class _MyProfileEntity implements MyProfileEntity {
  const _MyProfileEntity({required this.userId, required this.email, this.provider, required this.nickname, this.profileImageUrl, this.bio, required this.mannerTemperature, required this.totalTradeCount});
  

@override final  int userId;
@override final  String email;
@override final  String? provider;
@override final  String nickname;
@override final  String? profileImageUrl;
@override final  String? bio;
@override final  double mannerTemperature;
@override final  int totalTradeCount;

/// Create a copy of MyProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyProfileEntityCopyWith<_MyProfileEntity> get copyWith => __$MyProfileEntityCopyWithImpl<_MyProfileEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyProfileEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.email, email) || other.email == email)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.mannerTemperature, mannerTemperature) || other.mannerTemperature == mannerTemperature)&&(identical(other.totalTradeCount, totalTradeCount) || other.totalTradeCount == totalTradeCount));
}


@override
int get hashCode => Object.hash(runtimeType,userId,email,provider,nickname,profileImageUrl,bio,mannerTemperature,totalTradeCount);

@override
String toString() {
  return 'MyProfileEntity(userId: $userId, email: $email, provider: $provider, nickname: $nickname, profileImageUrl: $profileImageUrl, bio: $bio, mannerTemperature: $mannerTemperature, totalTradeCount: $totalTradeCount)';
}


}

/// @nodoc
abstract mixin class _$MyProfileEntityCopyWith<$Res> implements $MyProfileEntityCopyWith<$Res> {
  factory _$MyProfileEntityCopyWith(_MyProfileEntity value, $Res Function(_MyProfileEntity) _then) = __$MyProfileEntityCopyWithImpl;
@override @useResult
$Res call({
 int userId, String email, String? provider, String nickname, String? profileImageUrl, String? bio, double mannerTemperature, int totalTradeCount
});




}
/// @nodoc
class __$MyProfileEntityCopyWithImpl<$Res>
    implements _$MyProfileEntityCopyWith<$Res> {
  __$MyProfileEntityCopyWithImpl(this._self, this._then);

  final _MyProfileEntity _self;
  final $Res Function(_MyProfileEntity) _then;

/// Create a copy of MyProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? email = null,Object? provider = freezed,Object? nickname = null,Object? profileImageUrl = freezed,Object? bio = freezed,Object? mannerTemperature = null,Object? totalTradeCount = null,}) {
  return _then(_MyProfileEntity(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,mannerTemperature: null == mannerTemperature ? _self.mannerTemperature : mannerTemperature // ignore: cast_nullable_to_non_nullable
as double,totalTradeCount: null == totalTradeCount ? _self.totalTradeCount : totalTradeCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
