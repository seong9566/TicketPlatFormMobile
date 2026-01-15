// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_profile_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyProfileRespDto {

 int get userId; String get email; String get nickname; String? get profileImageUrl; String? get bio; double? get mannerTemperature; int? get totalTradeCount;
/// Create a copy of MyProfileRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyProfileRespDtoCopyWith<MyProfileRespDto> get copyWith => _$MyProfileRespDtoCopyWithImpl<MyProfileRespDto>(this as MyProfileRespDto, _$identity);

  /// Serializes this MyProfileRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyProfileRespDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.email, email) || other.email == email)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.mannerTemperature, mannerTemperature) || other.mannerTemperature == mannerTemperature)&&(identical(other.totalTradeCount, totalTradeCount) || other.totalTradeCount == totalTradeCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,email,nickname,profileImageUrl,bio,mannerTemperature,totalTradeCount);

@override
String toString() {
  return 'MyProfileRespDto(userId: $userId, email: $email, nickname: $nickname, profileImageUrl: $profileImageUrl, bio: $bio, mannerTemperature: $mannerTemperature, totalTradeCount: $totalTradeCount)';
}


}

/// @nodoc
abstract mixin class $MyProfileRespDtoCopyWith<$Res>  {
  factory $MyProfileRespDtoCopyWith(MyProfileRespDto value, $Res Function(MyProfileRespDto) _then) = _$MyProfileRespDtoCopyWithImpl;
@useResult
$Res call({
 int userId, String email, String nickname, String? profileImageUrl, String? bio, double? mannerTemperature, int? totalTradeCount
});




}
/// @nodoc
class _$MyProfileRespDtoCopyWithImpl<$Res>
    implements $MyProfileRespDtoCopyWith<$Res> {
  _$MyProfileRespDtoCopyWithImpl(this._self, this._then);

  final MyProfileRespDto _self;
  final $Res Function(MyProfileRespDto) _then;

/// Create a copy of MyProfileRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? email = null,Object? nickname = null,Object? profileImageUrl = freezed,Object? bio = freezed,Object? mannerTemperature = freezed,Object? totalTradeCount = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,mannerTemperature: freezed == mannerTemperature ? _self.mannerTemperature : mannerTemperature // ignore: cast_nullable_to_non_nullable
as double?,totalTradeCount: freezed == totalTradeCount ? _self.totalTradeCount : totalTradeCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [MyProfileRespDto].
extension MyProfileRespDtoPatterns on MyProfileRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyProfileRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyProfileRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyProfileRespDto value)  $default,){
final _that = this;
switch (_that) {
case _MyProfileRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyProfileRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _MyProfileRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userId,  String email,  String nickname,  String? profileImageUrl,  String? bio,  double? mannerTemperature,  int? totalTradeCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyProfileRespDto() when $default != null:
return $default(_that.userId,_that.email,_that.nickname,_that.profileImageUrl,_that.bio,_that.mannerTemperature,_that.totalTradeCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userId,  String email,  String nickname,  String? profileImageUrl,  String? bio,  double? mannerTemperature,  int? totalTradeCount)  $default,) {final _that = this;
switch (_that) {
case _MyProfileRespDto():
return $default(_that.userId,_that.email,_that.nickname,_that.profileImageUrl,_that.bio,_that.mannerTemperature,_that.totalTradeCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userId,  String email,  String nickname,  String? profileImageUrl,  String? bio,  double? mannerTemperature,  int? totalTradeCount)?  $default,) {final _that = this;
switch (_that) {
case _MyProfileRespDto() when $default != null:
return $default(_that.userId,_that.email,_that.nickname,_that.profileImageUrl,_that.bio,_that.mannerTemperature,_that.totalTradeCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyProfileRespDto implements MyProfileRespDto {
  const _MyProfileRespDto({required this.userId, required this.email, required this.nickname, this.profileImageUrl, this.bio, this.mannerTemperature, this.totalTradeCount});
  factory _MyProfileRespDto.fromJson(Map<String, dynamic> json) => _$MyProfileRespDtoFromJson(json);

@override final  int userId;
@override final  String email;
@override final  String nickname;
@override final  String? profileImageUrl;
@override final  String? bio;
@override final  double? mannerTemperature;
@override final  int? totalTradeCount;

/// Create a copy of MyProfileRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyProfileRespDtoCopyWith<_MyProfileRespDto> get copyWith => __$MyProfileRespDtoCopyWithImpl<_MyProfileRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyProfileRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyProfileRespDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.email, email) || other.email == email)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.mannerTemperature, mannerTemperature) || other.mannerTemperature == mannerTemperature)&&(identical(other.totalTradeCount, totalTradeCount) || other.totalTradeCount == totalTradeCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,email,nickname,profileImageUrl,bio,mannerTemperature,totalTradeCount);

@override
String toString() {
  return 'MyProfileRespDto(userId: $userId, email: $email, nickname: $nickname, profileImageUrl: $profileImageUrl, bio: $bio, mannerTemperature: $mannerTemperature, totalTradeCount: $totalTradeCount)';
}


}

/// @nodoc
abstract mixin class _$MyProfileRespDtoCopyWith<$Res> implements $MyProfileRespDtoCopyWith<$Res> {
  factory _$MyProfileRespDtoCopyWith(_MyProfileRespDto value, $Res Function(_MyProfileRespDto) _then) = __$MyProfileRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int userId, String email, String nickname, String? profileImageUrl, String? bio, double? mannerTemperature, int? totalTradeCount
});




}
/// @nodoc
class __$MyProfileRespDtoCopyWithImpl<$Res>
    implements _$MyProfileRespDtoCopyWith<$Res> {
  __$MyProfileRespDtoCopyWithImpl(this._self, this._then);

  final _MyProfileRespDto _self;
  final $Res Function(_MyProfileRespDto) _then;

/// Create a copy of MyProfileRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? email = null,Object? nickname = null,Object? profileImageUrl = freezed,Object? bio = freezed,Object? mannerTemperature = freezed,Object? totalTradeCount = freezed,}) {
  return _then(_MyProfileRespDto(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,mannerTemperature: freezed == mannerTemperature ? _self.mannerTemperature : mannerTemperature // ignore: cast_nullable_to_non_nullable
as double?,totalTradeCount: freezed == totalTradeCount ? _self.totalTradeCount : totalTradeCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
