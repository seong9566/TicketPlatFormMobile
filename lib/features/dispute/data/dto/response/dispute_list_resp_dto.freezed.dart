// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dispute_list_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DisputeListRespDto {

 List<DisputeListItemRespDto> get items; String? get nextCursor; bool get hasMore;
/// Create a copy of DisputeListRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisputeListRespDtoCopyWith<DisputeListRespDto> get copyWith => _$DisputeListRespDtoCopyWithImpl<DisputeListRespDto>(this as DisputeListRespDto, _$identity);

  /// Serializes this DisputeListRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisputeListRespDto&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),nextCursor,hasMore);

@override
String toString() {
  return 'DisputeListRespDto(items: $items, nextCursor: $nextCursor, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $DisputeListRespDtoCopyWith<$Res>  {
  factory $DisputeListRespDtoCopyWith(DisputeListRespDto value, $Res Function(DisputeListRespDto) _then) = _$DisputeListRespDtoCopyWithImpl;
@useResult
$Res call({
 List<DisputeListItemRespDto> items, String? nextCursor, bool hasMore
});




}
/// @nodoc
class _$DisputeListRespDtoCopyWithImpl<$Res>
    implements $DisputeListRespDtoCopyWith<$Res> {
  _$DisputeListRespDtoCopyWithImpl(this._self, this._then);

  final DisputeListRespDto _self;
  final $Res Function(DisputeListRespDto) _then;

/// Create a copy of DisputeListRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,Object? hasMore = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<DisputeListItemRespDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DisputeListRespDto].
extension DisputeListRespDtoPatterns on DisputeListRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DisputeListRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DisputeListRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DisputeListRespDto value)  $default,){
final _that = this;
switch (_that) {
case _DisputeListRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DisputeListRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _DisputeListRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DisputeListItemRespDto> items,  String? nextCursor,  bool hasMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DisputeListRespDto() when $default != null:
return $default(_that.items,_that.nextCursor,_that.hasMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DisputeListItemRespDto> items,  String? nextCursor,  bool hasMore)  $default,) {final _that = this;
switch (_that) {
case _DisputeListRespDto():
return $default(_that.items,_that.nextCursor,_that.hasMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DisputeListItemRespDto> items,  String? nextCursor,  bool hasMore)?  $default,) {final _that = this;
switch (_that) {
case _DisputeListRespDto() when $default != null:
return $default(_that.items,_that.nextCursor,_that.hasMore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DisputeListRespDto implements DisputeListRespDto {
  const _DisputeListRespDto({final  List<DisputeListItemRespDto> items = const [], this.nextCursor, this.hasMore = false}): _items = items;
  factory _DisputeListRespDto.fromJson(Map<String, dynamic> json) => _$DisputeListRespDtoFromJson(json);

 final  List<DisputeListItemRespDto> _items;
@override@JsonKey() List<DisputeListItemRespDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;
@override@JsonKey() final  bool hasMore;

/// Create a copy of DisputeListRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisputeListRespDtoCopyWith<_DisputeListRespDto> get copyWith => __$DisputeListRespDtoCopyWithImpl<_DisputeListRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DisputeListRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisputeListRespDto&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor,hasMore);

@override
String toString() {
  return 'DisputeListRespDto(items: $items, nextCursor: $nextCursor, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$DisputeListRespDtoCopyWith<$Res> implements $DisputeListRespDtoCopyWith<$Res> {
  factory _$DisputeListRespDtoCopyWith(_DisputeListRespDto value, $Res Function(_DisputeListRespDto) _then) = __$DisputeListRespDtoCopyWithImpl;
@override @useResult
$Res call({
 List<DisputeListItemRespDto> items, String? nextCursor, bool hasMore
});




}
/// @nodoc
class __$DisputeListRespDtoCopyWithImpl<$Res>
    implements _$DisputeListRespDtoCopyWith<$Res> {
  __$DisputeListRespDtoCopyWithImpl(this._self, this._then);

  final _DisputeListRespDto _self;
  final $Res Function(_DisputeListRespDto) _then;

/// Create a copy of DisputeListRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,Object? hasMore = null,}) {
  return _then(_DisputeListRespDto(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<DisputeListItemRespDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$DisputeListItemRespDto {

 int get id; int get transactionId; String get typeCode; String get typeName; String get statusCode; String get statusName; String get description; int get evidenceCount; String get createdAt;
/// Create a copy of DisputeListItemRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisputeListItemRespDtoCopyWith<DisputeListItemRespDto> get copyWith => _$DisputeListItemRespDtoCopyWithImpl<DisputeListItemRespDto>(this as DisputeListItemRespDto, _$identity);

  /// Serializes this DisputeListItemRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisputeListItemRespDto&&(identical(other.id, id) || other.id == id)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.typeCode, typeCode) || other.typeCode == typeCode)&&(identical(other.typeName, typeName) || other.typeName == typeName)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.description, description) || other.description == description)&&(identical(other.evidenceCount, evidenceCount) || other.evidenceCount == evidenceCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,transactionId,typeCode,typeName,statusCode,statusName,description,evidenceCount,createdAt);

@override
String toString() {
  return 'DisputeListItemRespDto(id: $id, transactionId: $transactionId, typeCode: $typeCode, typeName: $typeName, statusCode: $statusCode, statusName: $statusName, description: $description, evidenceCount: $evidenceCount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $DisputeListItemRespDtoCopyWith<$Res>  {
  factory $DisputeListItemRespDtoCopyWith(DisputeListItemRespDto value, $Res Function(DisputeListItemRespDto) _then) = _$DisputeListItemRespDtoCopyWithImpl;
@useResult
$Res call({
 int id, int transactionId, String typeCode, String typeName, String statusCode, String statusName, String description, int evidenceCount, String createdAt
});




}
/// @nodoc
class _$DisputeListItemRespDtoCopyWithImpl<$Res>
    implements $DisputeListItemRespDtoCopyWith<$Res> {
  _$DisputeListItemRespDtoCopyWithImpl(this._self, this._then);

  final DisputeListItemRespDto _self;
  final $Res Function(DisputeListItemRespDto) _then;

/// Create a copy of DisputeListItemRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? transactionId = null,Object? typeCode = null,Object? typeName = null,Object? statusCode = null,Object? statusName = null,Object? description = null,Object? evidenceCount = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,typeCode: null == typeCode ? _self.typeCode : typeCode // ignore: cast_nullable_to_non_nullable
as String,typeName: null == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,evidenceCount: null == evidenceCount ? _self.evidenceCount : evidenceCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DisputeListItemRespDto].
extension DisputeListItemRespDtoPatterns on DisputeListItemRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DisputeListItemRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DisputeListItemRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DisputeListItemRespDto value)  $default,){
final _that = this;
switch (_that) {
case _DisputeListItemRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DisputeListItemRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _DisputeListItemRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int transactionId,  String typeCode,  String typeName,  String statusCode,  String statusName,  String description,  int evidenceCount,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DisputeListItemRespDto() when $default != null:
return $default(_that.id,_that.transactionId,_that.typeCode,_that.typeName,_that.statusCode,_that.statusName,_that.description,_that.evidenceCount,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int transactionId,  String typeCode,  String typeName,  String statusCode,  String statusName,  String description,  int evidenceCount,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _DisputeListItemRespDto():
return $default(_that.id,_that.transactionId,_that.typeCode,_that.typeName,_that.statusCode,_that.statusName,_that.description,_that.evidenceCount,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int transactionId,  String typeCode,  String typeName,  String statusCode,  String statusName,  String description,  int evidenceCount,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _DisputeListItemRespDto() when $default != null:
return $default(_that.id,_that.transactionId,_that.typeCode,_that.typeName,_that.statusCode,_that.statusName,_that.description,_that.evidenceCount,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DisputeListItemRespDto implements DisputeListItemRespDto {
  const _DisputeListItemRespDto({required this.id, required this.transactionId, required this.typeCode, required this.typeName, required this.statusCode, required this.statusName, required this.description, this.evidenceCount = 0, required this.createdAt});
  factory _DisputeListItemRespDto.fromJson(Map<String, dynamic> json) => _$DisputeListItemRespDtoFromJson(json);

@override final  int id;
@override final  int transactionId;
@override final  String typeCode;
@override final  String typeName;
@override final  String statusCode;
@override final  String statusName;
@override final  String description;
@override@JsonKey() final  int evidenceCount;
@override final  String createdAt;

/// Create a copy of DisputeListItemRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisputeListItemRespDtoCopyWith<_DisputeListItemRespDto> get copyWith => __$DisputeListItemRespDtoCopyWithImpl<_DisputeListItemRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DisputeListItemRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisputeListItemRespDto&&(identical(other.id, id) || other.id == id)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.typeCode, typeCode) || other.typeCode == typeCode)&&(identical(other.typeName, typeName) || other.typeName == typeName)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.description, description) || other.description == description)&&(identical(other.evidenceCount, evidenceCount) || other.evidenceCount == evidenceCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,transactionId,typeCode,typeName,statusCode,statusName,description,evidenceCount,createdAt);

@override
String toString() {
  return 'DisputeListItemRespDto(id: $id, transactionId: $transactionId, typeCode: $typeCode, typeName: $typeName, statusCode: $statusCode, statusName: $statusName, description: $description, evidenceCount: $evidenceCount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$DisputeListItemRespDtoCopyWith<$Res> implements $DisputeListItemRespDtoCopyWith<$Res> {
  factory _$DisputeListItemRespDtoCopyWith(_DisputeListItemRespDto value, $Res Function(_DisputeListItemRespDto) _then) = __$DisputeListItemRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, int transactionId, String typeCode, String typeName, String statusCode, String statusName, String description, int evidenceCount, String createdAt
});




}
/// @nodoc
class __$DisputeListItemRespDtoCopyWithImpl<$Res>
    implements _$DisputeListItemRespDtoCopyWith<$Res> {
  __$DisputeListItemRespDtoCopyWithImpl(this._self, this._then);

  final _DisputeListItemRespDto _self;
  final $Res Function(_DisputeListItemRespDto) _then;

/// Create a copy of DisputeListItemRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? transactionId = null,Object? typeCode = null,Object? typeName = null,Object? statusCode = null,Object? statusName = null,Object? description = null,Object? evidenceCount = null,Object? createdAt = null,}) {
  return _then(_DisputeListItemRespDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,typeCode: null == typeCode ? _self.typeCode : typeCode // ignore: cast_nullable_to_non_nullable
as String,typeName: null == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,evidenceCount: null == evidenceCount ? _self.evidenceCount : evidenceCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
