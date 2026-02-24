// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_profile_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyProfileUiModel {

 int get userId; String get email; String? get provider; String get nickname; String? get profileImageUrl; String? get bio; String get mannerTemperatureText; String get totalTradeCountText; double? get averageRating; int get reviewCount;
/// Create a copy of MyProfileUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyProfileUiModelCopyWith<MyProfileUiModel> get copyWith => _$MyProfileUiModelCopyWithImpl<MyProfileUiModel>(this as MyProfileUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyProfileUiModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.email, email) || other.email == email)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.mannerTemperatureText, mannerTemperatureText) || other.mannerTemperatureText == mannerTemperatureText)&&(identical(other.totalTradeCountText, totalTradeCountText) || other.totalTradeCountText == totalTradeCountText)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount));
}


@override
int get hashCode => Object.hash(runtimeType,userId,email,provider,nickname,profileImageUrl,bio,mannerTemperatureText,totalTradeCountText,averageRating,reviewCount);

@override
String toString() {
  return 'MyProfileUiModel(userId: $userId, email: $email, provider: $provider, nickname: $nickname, profileImageUrl: $profileImageUrl, bio: $bio, mannerTemperatureText: $mannerTemperatureText, totalTradeCountText: $totalTradeCountText, averageRating: $averageRating, reviewCount: $reviewCount)';
}


}

/// @nodoc
abstract mixin class $MyProfileUiModelCopyWith<$Res>  {
  factory $MyProfileUiModelCopyWith(MyProfileUiModel value, $Res Function(MyProfileUiModel) _then) = _$MyProfileUiModelCopyWithImpl;
@useResult
$Res call({
 int userId, String email, String? provider, String nickname, String? profileImageUrl, String? bio, String mannerTemperatureText, String totalTradeCountText, double? averageRating, int reviewCount
});




}
/// @nodoc
class _$MyProfileUiModelCopyWithImpl<$Res>
    implements $MyProfileUiModelCopyWith<$Res> {
  _$MyProfileUiModelCopyWithImpl(this._self, this._then);

  final MyProfileUiModel _self;
  final $Res Function(MyProfileUiModel) _then;

/// Create a copy of MyProfileUiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? email = null,Object? provider = freezed,Object? nickname = null,Object? profileImageUrl = freezed,Object? bio = freezed,Object? mannerTemperatureText = null,Object? totalTradeCountText = null,Object? averageRating = freezed,Object? reviewCount = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,mannerTemperatureText: null == mannerTemperatureText ? _self.mannerTemperatureText : mannerTemperatureText // ignore: cast_nullable_to_non_nullable
as String,totalTradeCountText: null == totalTradeCountText ? _self.totalTradeCountText : totalTradeCountText // ignore: cast_nullable_to_non_nullable
as String,averageRating: freezed == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as double?,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MyProfileUiModel].
extension MyProfileUiModelPatterns on MyProfileUiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyProfileUiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyProfileUiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyProfileUiModel value)  $default,){
final _that = this;
switch (_that) {
case _MyProfileUiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyProfileUiModel value)?  $default,){
final _that = this;
switch (_that) {
case _MyProfileUiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userId,  String email,  String? provider,  String nickname,  String? profileImageUrl,  String? bio,  String mannerTemperatureText,  String totalTradeCountText,  double? averageRating,  int reviewCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyProfileUiModel() when $default != null:
return $default(_that.userId,_that.email,_that.provider,_that.nickname,_that.profileImageUrl,_that.bio,_that.mannerTemperatureText,_that.totalTradeCountText,_that.averageRating,_that.reviewCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userId,  String email,  String? provider,  String nickname,  String? profileImageUrl,  String? bio,  String mannerTemperatureText,  String totalTradeCountText,  double? averageRating,  int reviewCount)  $default,) {final _that = this;
switch (_that) {
case _MyProfileUiModel():
return $default(_that.userId,_that.email,_that.provider,_that.nickname,_that.profileImageUrl,_that.bio,_that.mannerTemperatureText,_that.totalTradeCountText,_that.averageRating,_that.reviewCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userId,  String email,  String? provider,  String nickname,  String? profileImageUrl,  String? bio,  String mannerTemperatureText,  String totalTradeCountText,  double? averageRating,  int reviewCount)?  $default,) {final _that = this;
switch (_that) {
case _MyProfileUiModel() when $default != null:
return $default(_that.userId,_that.email,_that.provider,_that.nickname,_that.profileImageUrl,_that.bio,_that.mannerTemperatureText,_that.totalTradeCountText,_that.averageRating,_that.reviewCount);case _:
  return null;

}
}

}

/// @nodoc


class _MyProfileUiModel implements MyProfileUiModel {
  const _MyProfileUiModel({required this.userId, required this.email, this.provider, required this.nickname, this.profileImageUrl, this.bio, required this.mannerTemperatureText, required this.totalTradeCountText, this.averageRating, this.reviewCount = 0});
  

@override final  int userId;
@override final  String email;
@override final  String? provider;
@override final  String nickname;
@override final  String? profileImageUrl;
@override final  String? bio;
@override final  String mannerTemperatureText;
@override final  String totalTradeCountText;
@override final  double? averageRating;
@override@JsonKey() final  int reviewCount;

/// Create a copy of MyProfileUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyProfileUiModelCopyWith<_MyProfileUiModel> get copyWith => __$MyProfileUiModelCopyWithImpl<_MyProfileUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyProfileUiModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.email, email) || other.email == email)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.mannerTemperatureText, mannerTemperatureText) || other.mannerTemperatureText == mannerTemperatureText)&&(identical(other.totalTradeCountText, totalTradeCountText) || other.totalTradeCountText == totalTradeCountText)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount));
}


@override
int get hashCode => Object.hash(runtimeType,userId,email,provider,nickname,profileImageUrl,bio,mannerTemperatureText,totalTradeCountText,averageRating,reviewCount);

@override
String toString() {
  return 'MyProfileUiModel(userId: $userId, email: $email, provider: $provider, nickname: $nickname, profileImageUrl: $profileImageUrl, bio: $bio, mannerTemperatureText: $mannerTemperatureText, totalTradeCountText: $totalTradeCountText, averageRating: $averageRating, reviewCount: $reviewCount)';
}


}

/// @nodoc
abstract mixin class _$MyProfileUiModelCopyWith<$Res> implements $MyProfileUiModelCopyWith<$Res> {
  factory _$MyProfileUiModelCopyWith(_MyProfileUiModel value, $Res Function(_MyProfileUiModel) _then) = __$MyProfileUiModelCopyWithImpl;
@override @useResult
$Res call({
 int userId, String email, String? provider, String nickname, String? profileImageUrl, String? bio, String mannerTemperatureText, String totalTradeCountText, double? averageRating, int reviewCount
});




}
/// @nodoc
class __$MyProfileUiModelCopyWithImpl<$Res>
    implements _$MyProfileUiModelCopyWith<$Res> {
  __$MyProfileUiModelCopyWithImpl(this._self, this._then);

  final _MyProfileUiModel _self;
  final $Res Function(_MyProfileUiModel) _then;

/// Create a copy of MyProfileUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? email = null,Object? provider = freezed,Object? nickname = null,Object? profileImageUrl = freezed,Object? bio = freezed,Object? mannerTemperatureText = null,Object? totalTradeCountText = null,Object? averageRating = freezed,Object? reviewCount = null,}) {
  return _then(_MyProfileUiModel(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,mannerTemperatureText: null == mannerTemperatureText ? _self.mannerTemperatureText : mannerTemperatureText // ignore: cast_nullable_to_non_nullable
as String,totalTradeCountText: null == totalTradeCountText ? _self.totalTradeCountText : totalTradeCountText // ignore: cast_nullable_to_non_nullable
as String,averageRating: freezed == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as double?,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
