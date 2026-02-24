// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reputation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReputationEntity {

 int get id; String get reviewerNickname; String? get reviewerProfileImageUrl; int get score; DateTime get createdAt;
/// Create a copy of ReputationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReputationEntityCopyWith<ReputationEntity> get copyWith => _$ReputationEntityCopyWithImpl<ReputationEntity>(this as ReputationEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReputationEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.reviewerNickname, reviewerNickname) || other.reviewerNickname == reviewerNickname)&&(identical(other.reviewerProfileImageUrl, reviewerProfileImageUrl) || other.reviewerProfileImageUrl == reviewerProfileImageUrl)&&(identical(other.score, score) || other.score == score)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,reviewerNickname,reviewerProfileImageUrl,score,createdAt);

@override
String toString() {
  return 'ReputationEntity(id: $id, reviewerNickname: $reviewerNickname, reviewerProfileImageUrl: $reviewerProfileImageUrl, score: $score, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ReputationEntityCopyWith<$Res>  {
  factory $ReputationEntityCopyWith(ReputationEntity value, $Res Function(ReputationEntity) _then) = _$ReputationEntityCopyWithImpl;
@useResult
$Res call({
 int id, String reviewerNickname, String? reviewerProfileImageUrl, int score, DateTime createdAt
});




}
/// @nodoc
class _$ReputationEntityCopyWithImpl<$Res>
    implements $ReputationEntityCopyWith<$Res> {
  _$ReputationEntityCopyWithImpl(this._self, this._then);

  final ReputationEntity _self;
  final $Res Function(ReputationEntity) _then;

/// Create a copy of ReputationEntity
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


/// Adds pattern-matching-related methods to [ReputationEntity].
extension ReputationEntityPatterns on ReputationEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReputationEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReputationEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReputationEntity value)  $default,){
final _that = this;
switch (_that) {
case _ReputationEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReputationEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ReputationEntity() when $default != null:
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
case _ReputationEntity() when $default != null:
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
case _ReputationEntity():
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
case _ReputationEntity() when $default != null:
return $default(_that.id,_that.reviewerNickname,_that.reviewerProfileImageUrl,_that.score,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _ReputationEntity implements ReputationEntity {
  const _ReputationEntity({required this.id, required this.reviewerNickname, this.reviewerProfileImageUrl, required this.score, required this.createdAt});
  

@override final  int id;
@override final  String reviewerNickname;
@override final  String? reviewerProfileImageUrl;
@override final  int score;
@override final  DateTime createdAt;

/// Create a copy of ReputationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReputationEntityCopyWith<_ReputationEntity> get copyWith => __$ReputationEntityCopyWithImpl<_ReputationEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReputationEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.reviewerNickname, reviewerNickname) || other.reviewerNickname == reviewerNickname)&&(identical(other.reviewerProfileImageUrl, reviewerProfileImageUrl) || other.reviewerProfileImageUrl == reviewerProfileImageUrl)&&(identical(other.score, score) || other.score == score)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,reviewerNickname,reviewerProfileImageUrl,score,createdAt);

@override
String toString() {
  return 'ReputationEntity(id: $id, reviewerNickname: $reviewerNickname, reviewerProfileImageUrl: $reviewerProfileImageUrl, score: $score, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ReputationEntityCopyWith<$Res> implements $ReputationEntityCopyWith<$Res> {
  factory _$ReputationEntityCopyWith(_ReputationEntity value, $Res Function(_ReputationEntity) _then) = __$ReputationEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String reviewerNickname, String? reviewerProfileImageUrl, int score, DateTime createdAt
});




}
/// @nodoc
class __$ReputationEntityCopyWithImpl<$Res>
    implements _$ReputationEntityCopyWith<$Res> {
  __$ReputationEntityCopyWithImpl(this._self, this._then);

  final _ReputationEntity _self;
  final $Res Function(_ReputationEntity) _then;

/// Create a copy of ReputationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? reviewerNickname = null,Object? reviewerProfileImageUrl = freezed,Object? score = null,Object? createdAt = null,}) {
  return _then(_ReputationEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,reviewerNickname: null == reviewerNickname ? _self.reviewerNickname : reviewerNickname // ignore: cast_nullable_to_non_nullable
as String,reviewerProfileImageUrl: freezed == reviewerProfileImageUrl ? _self.reviewerProfileImageUrl : reviewerProfileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc
mixin _$ReputationCheckEntity {

 bool get canReview; bool get hasReviewed; DateTime? get reviewDeadline;
/// Create a copy of ReputationCheckEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReputationCheckEntityCopyWith<ReputationCheckEntity> get copyWith => _$ReputationCheckEntityCopyWithImpl<ReputationCheckEntity>(this as ReputationCheckEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReputationCheckEntity&&(identical(other.canReview, canReview) || other.canReview == canReview)&&(identical(other.hasReviewed, hasReviewed) || other.hasReviewed == hasReviewed)&&(identical(other.reviewDeadline, reviewDeadline) || other.reviewDeadline == reviewDeadline));
}


@override
int get hashCode => Object.hash(runtimeType,canReview,hasReviewed,reviewDeadline);

@override
String toString() {
  return 'ReputationCheckEntity(canReview: $canReview, hasReviewed: $hasReviewed, reviewDeadline: $reviewDeadline)';
}


}

/// @nodoc
abstract mixin class $ReputationCheckEntityCopyWith<$Res>  {
  factory $ReputationCheckEntityCopyWith(ReputationCheckEntity value, $Res Function(ReputationCheckEntity) _then) = _$ReputationCheckEntityCopyWithImpl;
@useResult
$Res call({
 bool canReview, bool hasReviewed, DateTime? reviewDeadline
});




}
/// @nodoc
class _$ReputationCheckEntityCopyWithImpl<$Res>
    implements $ReputationCheckEntityCopyWith<$Res> {
  _$ReputationCheckEntityCopyWithImpl(this._self, this._then);

  final ReputationCheckEntity _self;
  final $Res Function(ReputationCheckEntity) _then;

/// Create a copy of ReputationCheckEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? canReview = null,Object? hasReviewed = null,Object? reviewDeadline = freezed,}) {
  return _then(_self.copyWith(
canReview: null == canReview ? _self.canReview : canReview // ignore: cast_nullable_to_non_nullable
as bool,hasReviewed: null == hasReviewed ? _self.hasReviewed : hasReviewed // ignore: cast_nullable_to_non_nullable
as bool,reviewDeadline: freezed == reviewDeadline ? _self.reviewDeadline : reviewDeadline // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReputationCheckEntity].
extension ReputationCheckEntityPatterns on ReputationCheckEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReputationCheckEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReputationCheckEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReputationCheckEntity value)  $default,){
final _that = this;
switch (_that) {
case _ReputationCheckEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReputationCheckEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ReputationCheckEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool canReview,  bool hasReviewed,  DateTime? reviewDeadline)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReputationCheckEntity() when $default != null:
return $default(_that.canReview,_that.hasReviewed,_that.reviewDeadline);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool canReview,  bool hasReviewed,  DateTime? reviewDeadline)  $default,) {final _that = this;
switch (_that) {
case _ReputationCheckEntity():
return $default(_that.canReview,_that.hasReviewed,_that.reviewDeadline);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool canReview,  bool hasReviewed,  DateTime? reviewDeadline)?  $default,) {final _that = this;
switch (_that) {
case _ReputationCheckEntity() when $default != null:
return $default(_that.canReview,_that.hasReviewed,_that.reviewDeadline);case _:
  return null;

}
}

}

/// @nodoc


class _ReputationCheckEntity implements ReputationCheckEntity {
  const _ReputationCheckEntity({required this.canReview, required this.hasReviewed, this.reviewDeadline});
  

@override final  bool canReview;
@override final  bool hasReviewed;
@override final  DateTime? reviewDeadline;

/// Create a copy of ReputationCheckEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReputationCheckEntityCopyWith<_ReputationCheckEntity> get copyWith => __$ReputationCheckEntityCopyWithImpl<_ReputationCheckEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReputationCheckEntity&&(identical(other.canReview, canReview) || other.canReview == canReview)&&(identical(other.hasReviewed, hasReviewed) || other.hasReviewed == hasReviewed)&&(identical(other.reviewDeadline, reviewDeadline) || other.reviewDeadline == reviewDeadline));
}


@override
int get hashCode => Object.hash(runtimeType,canReview,hasReviewed,reviewDeadline);

@override
String toString() {
  return 'ReputationCheckEntity(canReview: $canReview, hasReviewed: $hasReviewed, reviewDeadline: $reviewDeadline)';
}


}

/// @nodoc
abstract mixin class _$ReputationCheckEntityCopyWith<$Res> implements $ReputationCheckEntityCopyWith<$Res> {
  factory _$ReputationCheckEntityCopyWith(_ReputationCheckEntity value, $Res Function(_ReputationCheckEntity) _then) = __$ReputationCheckEntityCopyWithImpl;
@override @useResult
$Res call({
 bool canReview, bool hasReviewed, DateTime? reviewDeadline
});




}
/// @nodoc
class __$ReputationCheckEntityCopyWithImpl<$Res>
    implements _$ReputationCheckEntityCopyWith<$Res> {
  __$ReputationCheckEntityCopyWithImpl(this._self, this._then);

  final _ReputationCheckEntity _self;
  final $Res Function(_ReputationCheckEntity) _then;

/// Create a copy of ReputationCheckEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? canReview = null,Object? hasReviewed = null,Object? reviewDeadline = freezed,}) {
  return _then(_ReputationCheckEntity(
canReview: null == canReview ? _self.canReview : canReview // ignore: cast_nullable_to_non_nullable
as bool,hasReviewed: null == hasReviewed ? _self.hasReviewed : hasReviewed // ignore: cast_nullable_to_non_nullable
as bool,reviewDeadline: freezed == reviewDeadline ? _self.reviewDeadline : reviewDeadline // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
