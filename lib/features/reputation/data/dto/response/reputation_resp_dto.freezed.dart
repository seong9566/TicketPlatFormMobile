// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reputation_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReputationRespDto {

 int get id; String get reviewerNickname; String? get reviewerProfileImageUrl; int get score; DateTime get createdAt;
/// Create a copy of ReputationRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReputationRespDtoCopyWith<ReputationRespDto> get copyWith => _$ReputationRespDtoCopyWithImpl<ReputationRespDto>(this as ReputationRespDto, _$identity);

  /// Serializes this ReputationRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReputationRespDto&&(identical(other.id, id) || other.id == id)&&(identical(other.reviewerNickname, reviewerNickname) || other.reviewerNickname == reviewerNickname)&&(identical(other.reviewerProfileImageUrl, reviewerProfileImageUrl) || other.reviewerProfileImageUrl == reviewerProfileImageUrl)&&(identical(other.score, score) || other.score == score)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reviewerNickname,reviewerProfileImageUrl,score,createdAt);

@override
String toString() {
  return 'ReputationRespDto(id: $id, reviewerNickname: $reviewerNickname, reviewerProfileImageUrl: $reviewerProfileImageUrl, score: $score, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ReputationRespDtoCopyWith<$Res>  {
  factory $ReputationRespDtoCopyWith(ReputationRespDto value, $Res Function(ReputationRespDto) _then) = _$ReputationRespDtoCopyWithImpl;
@useResult
$Res call({
 int id, String reviewerNickname, String? reviewerProfileImageUrl, int score, DateTime createdAt
});




}
/// @nodoc
class _$ReputationRespDtoCopyWithImpl<$Res>
    implements $ReputationRespDtoCopyWith<$Res> {
  _$ReputationRespDtoCopyWithImpl(this._self, this._then);

  final ReputationRespDto _self;
  final $Res Function(ReputationRespDto) _then;

/// Create a copy of ReputationRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? reviewerNickname = null,Object? reviewerProfileImageUrl = freezed,Object? score = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,reviewerNickname: null == reviewerNickname ? _self.reviewerNickname : reviewerNickname // ignore: cast_nullable_to_non_nullable
as String,reviewerProfileImageUrl: freezed == reviewerProfileImageUrl ? _self.reviewerProfileImageUrl : reviewerProfileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ReputationRespDto].
extension ReputationRespDtoPatterns on ReputationRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReputationRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReputationRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReputationRespDto value)  $default,){
final _that = this;
switch (_that) {
case _ReputationRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReputationRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _ReputationRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String reviewerNickname,  String? reviewerProfileImageUrl,  int score,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReputationRespDto() when $default != null:
return $default(_that.id,_that.reviewerNickname,_that.reviewerProfileImageUrl,_that.score,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String reviewerNickname,  String? reviewerProfileImageUrl,  int score,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _ReputationRespDto():
return $default(_that.id,_that.reviewerNickname,_that.reviewerProfileImageUrl,_that.score,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String reviewerNickname,  String? reviewerProfileImageUrl,  int score,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ReputationRespDto() when $default != null:
return $default(_that.id,_that.reviewerNickname,_that.reviewerProfileImageUrl,_that.score,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReputationRespDto implements ReputationRespDto {
  const _ReputationRespDto({required this.id, required this.reviewerNickname, this.reviewerProfileImageUrl, required this.score, required this.createdAt});
  factory _ReputationRespDto.fromJson(Map<String, dynamic> json) => _$ReputationRespDtoFromJson(json);

@override final  int id;
@override final  String reviewerNickname;
@override final  String? reviewerProfileImageUrl;
@override final  int score;
@override final  DateTime createdAt;

/// Create a copy of ReputationRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReputationRespDtoCopyWith<_ReputationRespDto> get copyWith => __$ReputationRespDtoCopyWithImpl<_ReputationRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReputationRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReputationRespDto&&(identical(other.id, id) || other.id == id)&&(identical(other.reviewerNickname, reviewerNickname) || other.reviewerNickname == reviewerNickname)&&(identical(other.reviewerProfileImageUrl, reviewerProfileImageUrl) || other.reviewerProfileImageUrl == reviewerProfileImageUrl)&&(identical(other.score, score) || other.score == score)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,reviewerNickname,reviewerProfileImageUrl,score,createdAt);

@override
String toString() {
  return 'ReputationRespDto(id: $id, reviewerNickname: $reviewerNickname, reviewerProfileImageUrl: $reviewerProfileImageUrl, score: $score, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ReputationRespDtoCopyWith<$Res> implements $ReputationRespDtoCopyWith<$Res> {
  factory _$ReputationRespDtoCopyWith(_ReputationRespDto value, $Res Function(_ReputationRespDto) _then) = __$ReputationRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String reviewerNickname, String? reviewerProfileImageUrl, int score, DateTime createdAt
});




}
/// @nodoc
class __$ReputationRespDtoCopyWithImpl<$Res>
    implements _$ReputationRespDtoCopyWith<$Res> {
  __$ReputationRespDtoCopyWithImpl(this._self, this._then);

  final _ReputationRespDto _self;
  final $Res Function(_ReputationRespDto) _then;

/// Create a copy of ReputationRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? reviewerNickname = null,Object? reviewerProfileImageUrl = freezed,Object? score = null,Object? createdAt = null,}) {
  return _then(_ReputationRespDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,reviewerNickname: null == reviewerNickname ? _self.reviewerNickname : reviewerNickname // ignore: cast_nullable_to_non_nullable
as String,reviewerProfileImageUrl: freezed == reviewerProfileImageUrl ? _self.reviewerProfileImageUrl : reviewerProfileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
