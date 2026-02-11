// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_item_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationItemRespDto {

 int get id; String get typeCode; String get typeName; String get title; String get body; String? get data; bool get readFlag; DateTime? get readAt; DateTime? get createdAt;
/// Create a copy of NotificationItemRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationItemRespDtoCopyWith<NotificationItemRespDto> get copyWith => _$NotificationItemRespDtoCopyWithImpl<NotificationItemRespDto>(this as NotificationItemRespDto, _$identity);

  /// Serializes this NotificationItemRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationItemRespDto&&(identical(other.id, id) || other.id == id)&&(identical(other.typeCode, typeCode) || other.typeCode == typeCode)&&(identical(other.typeName, typeName) || other.typeName == typeName)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.data, data) || other.data == data)&&(identical(other.readFlag, readFlag) || other.readFlag == readFlag)&&(identical(other.readAt, readAt) || other.readAt == readAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,typeCode,typeName,title,body,data,readFlag,readAt,createdAt);

@override
String toString() {
  return 'NotificationItemRespDto(id: $id, typeCode: $typeCode, typeName: $typeName, title: $title, body: $body, data: $data, readFlag: $readFlag, readAt: $readAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $NotificationItemRespDtoCopyWith<$Res>  {
  factory $NotificationItemRespDtoCopyWith(NotificationItemRespDto value, $Res Function(NotificationItemRespDto) _then) = _$NotificationItemRespDtoCopyWithImpl;
@useResult
$Res call({
 int id, String typeCode, String typeName, String title, String body, String? data, bool readFlag, DateTime? readAt, DateTime? createdAt
});




}
/// @nodoc
class _$NotificationItemRespDtoCopyWithImpl<$Res>
    implements $NotificationItemRespDtoCopyWith<$Res> {
  _$NotificationItemRespDtoCopyWithImpl(this._self, this._then);

  final NotificationItemRespDto _self;
  final $Res Function(NotificationItemRespDto) _then;

/// Create a copy of NotificationItemRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? typeCode = null,Object? typeName = null,Object? title = null,Object? body = null,Object? data = freezed,Object? readFlag = null,Object? readAt = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,typeCode: null == typeCode ? _self.typeCode : typeCode // ignore: cast_nullable_to_non_nullable
as String,typeName: null == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String?,readFlag: null == readFlag ? _self.readFlag : readFlag // ignore: cast_nullable_to_non_nullable
as bool,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationItemRespDto].
extension NotificationItemRespDtoPatterns on NotificationItemRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationItemRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationItemRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationItemRespDto value)  $default,){
final _that = this;
switch (_that) {
case _NotificationItemRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationItemRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationItemRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String typeCode,  String typeName,  String title,  String body,  String? data,  bool readFlag,  DateTime? readAt,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationItemRespDto() when $default != null:
return $default(_that.id,_that.typeCode,_that.typeName,_that.title,_that.body,_that.data,_that.readFlag,_that.readAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String typeCode,  String typeName,  String title,  String body,  String? data,  bool readFlag,  DateTime? readAt,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _NotificationItemRespDto():
return $default(_that.id,_that.typeCode,_that.typeName,_that.title,_that.body,_that.data,_that.readFlag,_that.readAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String typeCode,  String typeName,  String title,  String body,  String? data,  bool readFlag,  DateTime? readAt,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _NotificationItemRespDto() when $default != null:
return $default(_that.id,_that.typeCode,_that.typeName,_that.title,_that.body,_that.data,_that.readFlag,_that.readAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationItemRespDto implements NotificationItemRespDto {
  const _NotificationItemRespDto({this.id = 0, this.typeCode = '', this.typeName = '', this.title = '', this.body = '', this.data, this.readFlag = false, this.readAt, this.createdAt});
  factory _NotificationItemRespDto.fromJson(Map<String, dynamic> json) => _$NotificationItemRespDtoFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String typeCode;
@override@JsonKey() final  String typeName;
@override@JsonKey() final  String title;
@override@JsonKey() final  String body;
@override final  String? data;
@override@JsonKey() final  bool readFlag;
@override final  DateTime? readAt;
@override final  DateTime? createdAt;

/// Create a copy of NotificationItemRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationItemRespDtoCopyWith<_NotificationItemRespDto> get copyWith => __$NotificationItemRespDtoCopyWithImpl<_NotificationItemRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationItemRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationItemRespDto&&(identical(other.id, id) || other.id == id)&&(identical(other.typeCode, typeCode) || other.typeCode == typeCode)&&(identical(other.typeName, typeName) || other.typeName == typeName)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.data, data) || other.data == data)&&(identical(other.readFlag, readFlag) || other.readFlag == readFlag)&&(identical(other.readAt, readAt) || other.readAt == readAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,typeCode,typeName,title,body,data,readFlag,readAt,createdAt);

@override
String toString() {
  return 'NotificationItemRespDto(id: $id, typeCode: $typeCode, typeName: $typeName, title: $title, body: $body, data: $data, readFlag: $readFlag, readAt: $readAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$NotificationItemRespDtoCopyWith<$Res> implements $NotificationItemRespDtoCopyWith<$Res> {
  factory _$NotificationItemRespDtoCopyWith(_NotificationItemRespDto value, $Res Function(_NotificationItemRespDto) _then) = __$NotificationItemRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String typeCode, String typeName, String title, String body, String? data, bool readFlag, DateTime? readAt, DateTime? createdAt
});




}
/// @nodoc
class __$NotificationItemRespDtoCopyWithImpl<$Res>
    implements _$NotificationItemRespDtoCopyWith<$Res> {
  __$NotificationItemRespDtoCopyWithImpl(this._self, this._then);

  final _NotificationItemRespDto _self;
  final $Res Function(_NotificationItemRespDto) _then;

/// Create a copy of NotificationItemRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? typeCode = null,Object? typeName = null,Object? title = null,Object? body = null,Object? data = freezed,Object? readFlag = null,Object? readAt = freezed,Object? createdAt = freezed,}) {
  return _then(_NotificationItemRespDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,typeCode: null == typeCode ? _self.typeCode : typeCode // ignore: cast_nullable_to_non_nullable
as String,typeName: null == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String?,readFlag: null == readFlag ? _self.readFlag : readFlag // ignore: cast_nullable_to_non_nullable
as bool,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
