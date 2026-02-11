// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationEntity {

 int get id; String get typeCode; String get typeName; String get title; String get body; Map<String, dynamic> get data; bool get isRead; DateTime? get readAt; DateTime? get createdAt;
/// Create a copy of NotificationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationEntityCopyWith<NotificationEntity> get copyWith => _$NotificationEntityCopyWithImpl<NotificationEntity>(this as NotificationEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.typeCode, typeCode) || other.typeCode == typeCode)&&(identical(other.typeName, typeName) || other.typeName == typeName)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.readAt, readAt) || other.readAt == readAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,typeCode,typeName,title,body,const DeepCollectionEquality().hash(data),isRead,readAt,createdAt);

@override
String toString() {
  return 'NotificationEntity(id: $id, typeCode: $typeCode, typeName: $typeName, title: $title, body: $body, data: $data, isRead: $isRead, readAt: $readAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $NotificationEntityCopyWith<$Res>  {
  factory $NotificationEntityCopyWith(NotificationEntity value, $Res Function(NotificationEntity) _then) = _$NotificationEntityCopyWithImpl;
@useResult
$Res call({
 int id, String typeCode, String typeName, String title, String body, Map<String, dynamic> data, bool isRead, DateTime? readAt, DateTime? createdAt
});




}
/// @nodoc
class _$NotificationEntityCopyWithImpl<$Res>
    implements $NotificationEntityCopyWith<$Res> {
  _$NotificationEntityCopyWithImpl(this._self, this._then);

  final NotificationEntity _self;
  final $Res Function(NotificationEntity) _then;

/// Create a copy of NotificationEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? typeCode = null,Object? typeName = null,Object? title = null,Object? body = null,Object? data = null,Object? isRead = null,Object? readAt = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,typeCode: null == typeCode ? _self.typeCode : typeCode // ignore: cast_nullable_to_non_nullable
as String,typeName: null == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationEntity].
extension NotificationEntityPatterns on NotificationEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationEntity value)  $default,){
final _that = this;
switch (_that) {
case _NotificationEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationEntity value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String typeCode,  String typeName,  String title,  String body,  Map<String, dynamic> data,  bool isRead,  DateTime? readAt,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationEntity() when $default != null:
return $default(_that.id,_that.typeCode,_that.typeName,_that.title,_that.body,_that.data,_that.isRead,_that.readAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String typeCode,  String typeName,  String title,  String body,  Map<String, dynamic> data,  bool isRead,  DateTime? readAt,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _NotificationEntity():
return $default(_that.id,_that.typeCode,_that.typeName,_that.title,_that.body,_that.data,_that.isRead,_that.readAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String typeCode,  String typeName,  String title,  String body,  Map<String, dynamic> data,  bool isRead,  DateTime? readAt,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _NotificationEntity() when $default != null:
return $default(_that.id,_that.typeCode,_that.typeName,_that.title,_that.body,_that.data,_that.isRead,_that.readAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationEntity implements NotificationEntity {
  const _NotificationEntity({required this.id, this.typeCode = '', this.typeName = '', this.title = '', this.body = '', final  Map<String, dynamic> data = const {}, this.isRead = false, this.readAt, this.createdAt}): _data = data;
  

@override final  int id;
@override@JsonKey() final  String typeCode;
@override@JsonKey() final  String typeName;
@override@JsonKey() final  String title;
@override@JsonKey() final  String body;
 final  Map<String, dynamic> _data;
@override@JsonKey() Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}

@override@JsonKey() final  bool isRead;
@override final  DateTime? readAt;
@override final  DateTime? createdAt;

/// Create a copy of NotificationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationEntityCopyWith<_NotificationEntity> get copyWith => __$NotificationEntityCopyWithImpl<_NotificationEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.typeCode, typeCode) || other.typeCode == typeCode)&&(identical(other.typeName, typeName) || other.typeName == typeName)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.readAt, readAt) || other.readAt == readAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,typeCode,typeName,title,body,const DeepCollectionEquality().hash(_data),isRead,readAt,createdAt);

@override
String toString() {
  return 'NotificationEntity(id: $id, typeCode: $typeCode, typeName: $typeName, title: $title, body: $body, data: $data, isRead: $isRead, readAt: $readAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$NotificationEntityCopyWith<$Res> implements $NotificationEntityCopyWith<$Res> {
  factory _$NotificationEntityCopyWith(_NotificationEntity value, $Res Function(_NotificationEntity) _then) = __$NotificationEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String typeCode, String typeName, String title, String body, Map<String, dynamic> data, bool isRead, DateTime? readAt, DateTime? createdAt
});




}
/// @nodoc
class __$NotificationEntityCopyWithImpl<$Res>
    implements _$NotificationEntityCopyWith<$Res> {
  __$NotificationEntityCopyWithImpl(this._self, this._then);

  final _NotificationEntity _self;
  final $Res Function(_NotificationEntity) _then;

/// Create a copy of NotificationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? typeCode = null,Object? typeName = null,Object? title = null,Object? body = null,Object? data = null,Object? isRead = null,Object? readAt = freezed,Object? createdAt = freezed,}) {
  return _then(_NotificationEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,typeCode: null == typeCode ? _self.typeCode : typeCode // ignore: cast_nullable_to_non_nullable
as String,typeName: null == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
