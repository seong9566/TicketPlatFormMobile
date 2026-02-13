// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dispute_create_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DisputeCreateRespDto {

 int get id; int get transactionId; String get typeCode; String get typeName; String get statusCode; String get statusName; String get description; String get createdAt;
/// Create a copy of DisputeCreateRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisputeCreateRespDtoCopyWith<DisputeCreateRespDto> get copyWith => _$DisputeCreateRespDtoCopyWithImpl<DisputeCreateRespDto>(this as DisputeCreateRespDto, _$identity);

  /// Serializes this DisputeCreateRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisputeCreateRespDto&&(identical(other.id, id) || other.id == id)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.typeCode, typeCode) || other.typeCode == typeCode)&&(identical(other.typeName, typeName) || other.typeName == typeName)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,transactionId,typeCode,typeName,statusCode,statusName,description,createdAt);

@override
String toString() {
  return 'DisputeCreateRespDto(id: $id, transactionId: $transactionId, typeCode: $typeCode, typeName: $typeName, statusCode: $statusCode, statusName: $statusName, description: $description, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $DisputeCreateRespDtoCopyWith<$Res>  {
  factory $DisputeCreateRespDtoCopyWith(DisputeCreateRespDto value, $Res Function(DisputeCreateRespDto) _then) = _$DisputeCreateRespDtoCopyWithImpl;
@useResult
$Res call({
 int id, int transactionId, String typeCode, String typeName, String statusCode, String statusName, String description, String createdAt
});




}
/// @nodoc
class _$DisputeCreateRespDtoCopyWithImpl<$Res>
    implements $DisputeCreateRespDtoCopyWith<$Res> {
  _$DisputeCreateRespDtoCopyWithImpl(this._self, this._then);

  final DisputeCreateRespDto _self;
  final $Res Function(DisputeCreateRespDto) _then;

/// Create a copy of DisputeCreateRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? transactionId = null,Object? typeCode = null,Object? typeName = null,Object? statusCode = null,Object? statusName = null,Object? description = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,typeCode: null == typeCode ? _self.typeCode : typeCode // ignore: cast_nullable_to_non_nullable
as String,typeName: null == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DisputeCreateRespDto].
extension DisputeCreateRespDtoPatterns on DisputeCreateRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DisputeCreateRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DisputeCreateRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DisputeCreateRespDto value)  $default,){
final _that = this;
switch (_that) {
case _DisputeCreateRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DisputeCreateRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _DisputeCreateRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int transactionId,  String typeCode,  String typeName,  String statusCode,  String statusName,  String description,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DisputeCreateRespDto() when $default != null:
return $default(_that.id,_that.transactionId,_that.typeCode,_that.typeName,_that.statusCode,_that.statusName,_that.description,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int transactionId,  String typeCode,  String typeName,  String statusCode,  String statusName,  String description,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _DisputeCreateRespDto():
return $default(_that.id,_that.transactionId,_that.typeCode,_that.typeName,_that.statusCode,_that.statusName,_that.description,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int transactionId,  String typeCode,  String typeName,  String statusCode,  String statusName,  String description,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _DisputeCreateRespDto() when $default != null:
return $default(_that.id,_that.transactionId,_that.typeCode,_that.typeName,_that.statusCode,_that.statusName,_that.description,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DisputeCreateRespDto implements DisputeCreateRespDto {
  const _DisputeCreateRespDto({required this.id, required this.transactionId, required this.typeCode, required this.typeName, required this.statusCode, required this.statusName, required this.description, required this.createdAt});
  factory _DisputeCreateRespDto.fromJson(Map<String, dynamic> json) => _$DisputeCreateRespDtoFromJson(json);

@override final  int id;
@override final  int transactionId;
@override final  String typeCode;
@override final  String typeName;
@override final  String statusCode;
@override final  String statusName;
@override final  String description;
@override final  String createdAt;

/// Create a copy of DisputeCreateRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisputeCreateRespDtoCopyWith<_DisputeCreateRespDto> get copyWith => __$DisputeCreateRespDtoCopyWithImpl<_DisputeCreateRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DisputeCreateRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisputeCreateRespDto&&(identical(other.id, id) || other.id == id)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.typeCode, typeCode) || other.typeCode == typeCode)&&(identical(other.typeName, typeName) || other.typeName == typeName)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,transactionId,typeCode,typeName,statusCode,statusName,description,createdAt);

@override
String toString() {
  return 'DisputeCreateRespDto(id: $id, transactionId: $transactionId, typeCode: $typeCode, typeName: $typeName, statusCode: $statusCode, statusName: $statusName, description: $description, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$DisputeCreateRespDtoCopyWith<$Res> implements $DisputeCreateRespDtoCopyWith<$Res> {
  factory _$DisputeCreateRespDtoCopyWith(_DisputeCreateRespDto value, $Res Function(_DisputeCreateRespDto) _then) = __$DisputeCreateRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, int transactionId, String typeCode, String typeName, String statusCode, String statusName, String description, String createdAt
});




}
/// @nodoc
class __$DisputeCreateRespDtoCopyWithImpl<$Res>
    implements _$DisputeCreateRespDtoCopyWith<$Res> {
  __$DisputeCreateRespDtoCopyWithImpl(this._self, this._then);

  final _DisputeCreateRespDto _self;
  final $Res Function(_DisputeCreateRespDto) _then;

/// Create a copy of DisputeCreateRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? transactionId = null,Object? typeCode = null,Object? typeName = null,Object? statusCode = null,Object? statusName = null,Object? description = null,Object? createdAt = null,}) {
  return _then(_DisputeCreateRespDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,typeCode: null == typeCode ? _self.typeCode : typeCode // ignore: cast_nullable_to_non_nullable
as String,typeName: null == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
