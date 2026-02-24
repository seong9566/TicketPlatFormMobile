// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reputation_check_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReputationCheckRespDto {

 bool get canReview; bool get hasReviewed; DateTime? get reviewDeadline;
/// Create a copy of ReputationCheckRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReputationCheckRespDtoCopyWith<ReputationCheckRespDto> get copyWith => _$ReputationCheckRespDtoCopyWithImpl<ReputationCheckRespDto>(this as ReputationCheckRespDto, _$identity);

  /// Serializes this ReputationCheckRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReputationCheckRespDto&&(identical(other.canReview, canReview) || other.canReview == canReview)&&(identical(other.hasReviewed, hasReviewed) || other.hasReviewed == hasReviewed)&&(identical(other.reviewDeadline, reviewDeadline) || other.reviewDeadline == reviewDeadline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,canReview,hasReviewed,reviewDeadline);

@override
String toString() {
  return 'ReputationCheckRespDto(canReview: $canReview, hasReviewed: $hasReviewed, reviewDeadline: $reviewDeadline)';
}


}

/// @nodoc
abstract mixin class $ReputationCheckRespDtoCopyWith<$Res>  {
  factory $ReputationCheckRespDtoCopyWith(ReputationCheckRespDto value, $Res Function(ReputationCheckRespDto) _then) = _$ReputationCheckRespDtoCopyWithImpl;
@useResult
$Res call({
 bool canReview, bool hasReviewed, DateTime? reviewDeadline
});




}
/// @nodoc
class _$ReputationCheckRespDtoCopyWithImpl<$Res>
    implements $ReputationCheckRespDtoCopyWith<$Res> {
  _$ReputationCheckRespDtoCopyWithImpl(this._self, this._then);

  final ReputationCheckRespDto _self;
  final $Res Function(ReputationCheckRespDto) _then;

/// Create a copy of ReputationCheckRespDto
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


/// Adds pattern-matching-related methods to [ReputationCheckRespDto].
extension ReputationCheckRespDtoPatterns on ReputationCheckRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReputationCheckRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReputationCheckRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReputationCheckRespDto value)  $default,){
final _that = this;
switch (_that) {
case _ReputationCheckRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReputationCheckRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _ReputationCheckRespDto() when $default != null:
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
case _ReputationCheckRespDto() when $default != null:
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
case _ReputationCheckRespDto():
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
case _ReputationCheckRespDto() when $default != null:
return $default(_that.canReview,_that.hasReviewed,_that.reviewDeadline);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReputationCheckRespDto implements ReputationCheckRespDto {
  const _ReputationCheckRespDto({required this.canReview, required this.hasReviewed, this.reviewDeadline});
  factory _ReputationCheckRespDto.fromJson(Map<String, dynamic> json) => _$ReputationCheckRespDtoFromJson(json);

@override final  bool canReview;
@override final  bool hasReviewed;
@override final  DateTime? reviewDeadline;

/// Create a copy of ReputationCheckRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReputationCheckRespDtoCopyWith<_ReputationCheckRespDto> get copyWith => __$ReputationCheckRespDtoCopyWithImpl<_ReputationCheckRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReputationCheckRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReputationCheckRespDto&&(identical(other.canReview, canReview) || other.canReview == canReview)&&(identical(other.hasReviewed, hasReviewed) || other.hasReviewed == hasReviewed)&&(identical(other.reviewDeadline, reviewDeadline) || other.reviewDeadline == reviewDeadline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,canReview,hasReviewed,reviewDeadline);

@override
String toString() {
  return 'ReputationCheckRespDto(canReview: $canReview, hasReviewed: $hasReviewed, reviewDeadline: $reviewDeadline)';
}


}

/// @nodoc
abstract mixin class _$ReputationCheckRespDtoCopyWith<$Res> implements $ReputationCheckRespDtoCopyWith<$Res> {
  factory _$ReputationCheckRespDtoCopyWith(_ReputationCheckRespDto value, $Res Function(_ReputationCheckRespDto) _then) = __$ReputationCheckRespDtoCopyWithImpl;
@override @useResult
$Res call({
 bool canReview, bool hasReviewed, DateTime? reviewDeadline
});




}
/// @nodoc
class __$ReputationCheckRespDtoCopyWithImpl<$Res>
    implements _$ReputationCheckRespDtoCopyWith<$Res> {
  __$ReputationCheckRespDtoCopyWithImpl(this._self, this._then);

  final _ReputationCheckRespDto _self;
  final $Res Function(_ReputationCheckRespDto) _then;

/// Create a copy of ReputationCheckRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? canReview = null,Object? hasReviewed = null,Object? reviewDeadline = freezed,}) {
  return _then(_ReputationCheckRespDto(
canReview: null == canReview ? _self.canReview : canReview // ignore: cast_nullable_to_non_nullable
as bool,hasReviewed: null == hasReviewed ? _self.hasReviewed : hasReviewed // ignore: cast_nullable_to_non_nullable
as bool,reviewDeadline: freezed == reviewDeadline ? _self.reviewDeadline : reviewDeadline // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
