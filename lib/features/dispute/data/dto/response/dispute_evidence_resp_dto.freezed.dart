// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dispute_evidence_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DisputeEvidenceRespDto {

 int get id; String get imageUrl; String? get note; String get createdAt;
/// Create a copy of DisputeEvidenceRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisputeEvidenceRespDtoCopyWith<DisputeEvidenceRespDto> get copyWith => _$DisputeEvidenceRespDtoCopyWithImpl<DisputeEvidenceRespDto>(this as DisputeEvidenceRespDto, _$identity);

  /// Serializes this DisputeEvidenceRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisputeEvidenceRespDto&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.note, note) || other.note == note)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imageUrl,note,createdAt);

@override
String toString() {
  return 'DisputeEvidenceRespDto(id: $id, imageUrl: $imageUrl, note: $note, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $DisputeEvidenceRespDtoCopyWith<$Res>  {
  factory $DisputeEvidenceRespDtoCopyWith(DisputeEvidenceRespDto value, $Res Function(DisputeEvidenceRespDto) _then) = _$DisputeEvidenceRespDtoCopyWithImpl;
@useResult
$Res call({
 int id, String imageUrl, String? note, String createdAt
});




}
/// @nodoc
class _$DisputeEvidenceRespDtoCopyWithImpl<$Res>
    implements $DisputeEvidenceRespDtoCopyWith<$Res> {
  _$DisputeEvidenceRespDtoCopyWithImpl(this._self, this._then);

  final DisputeEvidenceRespDto _self;
  final $Res Function(DisputeEvidenceRespDto) _then;

/// Create a copy of DisputeEvidenceRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? imageUrl = null,Object? note = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DisputeEvidenceRespDto].
extension DisputeEvidenceRespDtoPatterns on DisputeEvidenceRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DisputeEvidenceRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DisputeEvidenceRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DisputeEvidenceRespDto value)  $default,){
final _that = this;
switch (_that) {
case _DisputeEvidenceRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DisputeEvidenceRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _DisputeEvidenceRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String imageUrl,  String? note,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DisputeEvidenceRespDto() when $default != null:
return $default(_that.id,_that.imageUrl,_that.note,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String imageUrl,  String? note,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _DisputeEvidenceRespDto():
return $default(_that.id,_that.imageUrl,_that.note,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String imageUrl,  String? note,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _DisputeEvidenceRespDto() when $default != null:
return $default(_that.id,_that.imageUrl,_that.note,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DisputeEvidenceRespDto implements DisputeEvidenceRespDto {
  const _DisputeEvidenceRespDto({required this.id, required this.imageUrl, this.note, required this.createdAt});
  factory _DisputeEvidenceRespDto.fromJson(Map<String, dynamic> json) => _$DisputeEvidenceRespDtoFromJson(json);

@override final  int id;
@override final  String imageUrl;
@override final  String? note;
@override final  String createdAt;

/// Create a copy of DisputeEvidenceRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisputeEvidenceRespDtoCopyWith<_DisputeEvidenceRespDto> get copyWith => __$DisputeEvidenceRespDtoCopyWithImpl<_DisputeEvidenceRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DisputeEvidenceRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisputeEvidenceRespDto&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.note, note) || other.note == note)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imageUrl,note,createdAt);

@override
String toString() {
  return 'DisputeEvidenceRespDto(id: $id, imageUrl: $imageUrl, note: $note, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$DisputeEvidenceRespDtoCopyWith<$Res> implements $DisputeEvidenceRespDtoCopyWith<$Res> {
  factory _$DisputeEvidenceRespDtoCopyWith(_DisputeEvidenceRespDto value, $Res Function(_DisputeEvidenceRespDto) _then) = __$DisputeEvidenceRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String imageUrl, String? note, String createdAt
});




}
/// @nodoc
class __$DisputeEvidenceRespDtoCopyWithImpl<$Res>
    implements _$DisputeEvidenceRespDtoCopyWith<$Res> {
  __$DisputeEvidenceRespDtoCopyWithImpl(this._self, this._then);

  final _DisputeEvidenceRespDto _self;
  final $Res Function(_DisputeEvidenceRespDto) _then;

/// Create a copy of DisputeEvidenceRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? imageUrl = null,Object? note = freezed,Object? createdAt = null,}) {
  return _then(_DisputeEvidenceRespDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
