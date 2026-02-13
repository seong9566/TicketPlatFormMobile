// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dispute_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DisputeListEntity {

 List<DisputeListItemEntity> get items; String? get nextCursor; bool get hasMore;
/// Create a copy of DisputeListEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisputeListEntityCopyWith<DisputeListEntity> get copyWith => _$DisputeListEntityCopyWithImpl<DisputeListEntity>(this as DisputeListEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisputeListEntity&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),nextCursor,hasMore);

@override
String toString() {
  return 'DisputeListEntity(items: $items, nextCursor: $nextCursor, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $DisputeListEntityCopyWith<$Res>  {
  factory $DisputeListEntityCopyWith(DisputeListEntity value, $Res Function(DisputeListEntity) _then) = _$DisputeListEntityCopyWithImpl;
@useResult
$Res call({
 List<DisputeListItemEntity> items, String? nextCursor, bool hasMore
});




}
/// @nodoc
class _$DisputeListEntityCopyWithImpl<$Res>
    implements $DisputeListEntityCopyWith<$Res> {
  _$DisputeListEntityCopyWithImpl(this._self, this._then);

  final DisputeListEntity _self;
  final $Res Function(DisputeListEntity) _then;

/// Create a copy of DisputeListEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,Object? hasMore = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<DisputeListItemEntity>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DisputeListEntity].
extension DisputeListEntityPatterns on DisputeListEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DisputeListEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DisputeListEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DisputeListEntity value)  $default,){
final _that = this;
switch (_that) {
case _DisputeListEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DisputeListEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DisputeListEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DisputeListItemEntity> items,  String? nextCursor,  bool hasMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DisputeListEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DisputeListItemEntity> items,  String? nextCursor,  bool hasMore)  $default,) {final _that = this;
switch (_that) {
case _DisputeListEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DisputeListItemEntity> items,  String? nextCursor,  bool hasMore)?  $default,) {final _that = this;
switch (_that) {
case _DisputeListEntity() when $default != null:
return $default(_that.items,_that.nextCursor,_that.hasMore);case _:
  return null;

}
}

}

/// @nodoc


class _DisputeListEntity implements DisputeListEntity {
  const _DisputeListEntity({final  List<DisputeListItemEntity> items = const [], this.nextCursor, this.hasMore = false}): _items = items;
  

 final  List<DisputeListItemEntity> _items;
@override@JsonKey() List<DisputeListItemEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;
@override@JsonKey() final  bool hasMore;

/// Create a copy of DisputeListEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisputeListEntityCopyWith<_DisputeListEntity> get copyWith => __$DisputeListEntityCopyWithImpl<_DisputeListEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisputeListEntity&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor,hasMore);

@override
String toString() {
  return 'DisputeListEntity(items: $items, nextCursor: $nextCursor, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$DisputeListEntityCopyWith<$Res> implements $DisputeListEntityCopyWith<$Res> {
  factory _$DisputeListEntityCopyWith(_DisputeListEntity value, $Res Function(_DisputeListEntity) _then) = __$DisputeListEntityCopyWithImpl;
@override @useResult
$Res call({
 List<DisputeListItemEntity> items, String? nextCursor, bool hasMore
});




}
/// @nodoc
class __$DisputeListEntityCopyWithImpl<$Res>
    implements _$DisputeListEntityCopyWith<$Res> {
  __$DisputeListEntityCopyWithImpl(this._self, this._then);

  final _DisputeListEntity _self;
  final $Res Function(_DisputeListEntity) _then;

/// Create a copy of DisputeListEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,Object? hasMore = null,}) {
  return _then(_DisputeListEntity(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<DisputeListItemEntity>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$DisputeListItemEntity {

 int get id; int get transactionId; DisputeTypeCode get typeCode; String get typeName; DisputeStatusCode get statusCode; String get statusName; String get description; int get evidenceCount; DateTime get createdAt;
/// Create a copy of DisputeListItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisputeListItemEntityCopyWith<DisputeListItemEntity> get copyWith => _$DisputeListItemEntityCopyWithImpl<DisputeListItemEntity>(this as DisputeListItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisputeListItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.typeCode, typeCode) || other.typeCode == typeCode)&&(identical(other.typeName, typeName) || other.typeName == typeName)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.description, description) || other.description == description)&&(identical(other.evidenceCount, evidenceCount) || other.evidenceCount == evidenceCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,transactionId,typeCode,typeName,statusCode,statusName,description,evidenceCount,createdAt);

@override
String toString() {
  return 'DisputeListItemEntity(id: $id, transactionId: $transactionId, typeCode: $typeCode, typeName: $typeName, statusCode: $statusCode, statusName: $statusName, description: $description, evidenceCount: $evidenceCount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $DisputeListItemEntityCopyWith<$Res>  {
  factory $DisputeListItemEntityCopyWith(DisputeListItemEntity value, $Res Function(DisputeListItemEntity) _then) = _$DisputeListItemEntityCopyWithImpl;
@useResult
$Res call({
 int id, int transactionId, DisputeTypeCode typeCode, String typeName, DisputeStatusCode statusCode, String statusName, String description, int evidenceCount, DateTime createdAt
});




}
/// @nodoc
class _$DisputeListItemEntityCopyWithImpl<$Res>
    implements $DisputeListItemEntityCopyWith<$Res> {
  _$DisputeListItemEntityCopyWithImpl(this._self, this._then);

  final DisputeListItemEntity _self;
  final $Res Function(DisputeListItemEntity) _then;

/// Create a copy of DisputeListItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? transactionId = null,Object? typeCode = null,Object? typeName = null,Object? statusCode = null,Object? statusName = null,Object? description = null,Object? evidenceCount = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,typeCode: null == typeCode ? _self.typeCode : typeCode // ignore: cast_nullable_to_non_nullable
as DisputeTypeCode,typeName: null == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as DisputeStatusCode,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,evidenceCount: null == evidenceCount ? _self.evidenceCount : evidenceCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [DisputeListItemEntity].
extension DisputeListItemEntityPatterns on DisputeListItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DisputeListItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DisputeListItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DisputeListItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _DisputeListItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DisputeListItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DisputeListItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int transactionId,  DisputeTypeCode typeCode,  String typeName,  DisputeStatusCode statusCode,  String statusName,  String description,  int evidenceCount,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DisputeListItemEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int transactionId,  DisputeTypeCode typeCode,  String typeName,  DisputeStatusCode statusCode,  String statusName,  String description,  int evidenceCount,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _DisputeListItemEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int transactionId,  DisputeTypeCode typeCode,  String typeName,  DisputeStatusCode statusCode,  String statusName,  String description,  int evidenceCount,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _DisputeListItemEntity() when $default != null:
return $default(_that.id,_that.transactionId,_that.typeCode,_that.typeName,_that.statusCode,_that.statusName,_that.description,_that.evidenceCount,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _DisputeListItemEntity implements DisputeListItemEntity {
  const _DisputeListItemEntity({required this.id, required this.transactionId, required this.typeCode, required this.typeName, required this.statusCode, required this.statusName, required this.description, required this.evidenceCount, required this.createdAt});
  

@override final  int id;
@override final  int transactionId;
@override final  DisputeTypeCode typeCode;
@override final  String typeName;
@override final  DisputeStatusCode statusCode;
@override final  String statusName;
@override final  String description;
@override final  int evidenceCount;
@override final  DateTime createdAt;

/// Create a copy of DisputeListItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisputeListItemEntityCopyWith<_DisputeListItemEntity> get copyWith => __$DisputeListItemEntityCopyWithImpl<_DisputeListItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisputeListItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.typeCode, typeCode) || other.typeCode == typeCode)&&(identical(other.typeName, typeName) || other.typeName == typeName)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.description, description) || other.description == description)&&(identical(other.evidenceCount, evidenceCount) || other.evidenceCount == evidenceCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,transactionId,typeCode,typeName,statusCode,statusName,description,evidenceCount,createdAt);

@override
String toString() {
  return 'DisputeListItemEntity(id: $id, transactionId: $transactionId, typeCode: $typeCode, typeName: $typeName, statusCode: $statusCode, statusName: $statusName, description: $description, evidenceCount: $evidenceCount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$DisputeListItemEntityCopyWith<$Res> implements $DisputeListItemEntityCopyWith<$Res> {
  factory _$DisputeListItemEntityCopyWith(_DisputeListItemEntity value, $Res Function(_DisputeListItemEntity) _then) = __$DisputeListItemEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int transactionId, DisputeTypeCode typeCode, String typeName, DisputeStatusCode statusCode, String statusName, String description, int evidenceCount, DateTime createdAt
});




}
/// @nodoc
class __$DisputeListItemEntityCopyWithImpl<$Res>
    implements _$DisputeListItemEntityCopyWith<$Res> {
  __$DisputeListItemEntityCopyWithImpl(this._self, this._then);

  final _DisputeListItemEntity _self;
  final $Res Function(_DisputeListItemEntity) _then;

/// Create a copy of DisputeListItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? transactionId = null,Object? typeCode = null,Object? typeName = null,Object? statusCode = null,Object? statusName = null,Object? description = null,Object? evidenceCount = null,Object? createdAt = null,}) {
  return _then(_DisputeListItemEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,typeCode: null == typeCode ? _self.typeCode : typeCode // ignore: cast_nullable_to_non_nullable
as DisputeTypeCode,typeName: null == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as DisputeStatusCode,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,evidenceCount: null == evidenceCount ? _self.evidenceCount : evidenceCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc
mixin _$DisputeDetailEntity {

 int get id; int get transactionId; DisputeTypeCode get typeCode; String get typeName; DisputeStatusCode get statusCode; String get statusName; String get description; List<DisputeEvidenceEntity> get evidences; DisputeTransactionSummaryEntity? get transaction; DateTime get createdAt;
/// Create a copy of DisputeDetailEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisputeDetailEntityCopyWith<DisputeDetailEntity> get copyWith => _$DisputeDetailEntityCopyWithImpl<DisputeDetailEntity>(this as DisputeDetailEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisputeDetailEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.typeCode, typeCode) || other.typeCode == typeCode)&&(identical(other.typeName, typeName) || other.typeName == typeName)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.evidences, evidences)&&(identical(other.transaction, transaction) || other.transaction == transaction)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,transactionId,typeCode,typeName,statusCode,statusName,description,const DeepCollectionEquality().hash(evidences),transaction,createdAt);

@override
String toString() {
  return 'DisputeDetailEntity(id: $id, transactionId: $transactionId, typeCode: $typeCode, typeName: $typeName, statusCode: $statusCode, statusName: $statusName, description: $description, evidences: $evidences, transaction: $transaction, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $DisputeDetailEntityCopyWith<$Res>  {
  factory $DisputeDetailEntityCopyWith(DisputeDetailEntity value, $Res Function(DisputeDetailEntity) _then) = _$DisputeDetailEntityCopyWithImpl;
@useResult
$Res call({
 int id, int transactionId, DisputeTypeCode typeCode, String typeName, DisputeStatusCode statusCode, String statusName, String description, List<DisputeEvidenceEntity> evidences, DisputeTransactionSummaryEntity? transaction, DateTime createdAt
});


$DisputeTransactionSummaryEntityCopyWith<$Res>? get transaction;

}
/// @nodoc
class _$DisputeDetailEntityCopyWithImpl<$Res>
    implements $DisputeDetailEntityCopyWith<$Res> {
  _$DisputeDetailEntityCopyWithImpl(this._self, this._then);

  final DisputeDetailEntity _self;
  final $Res Function(DisputeDetailEntity) _then;

/// Create a copy of DisputeDetailEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? transactionId = null,Object? typeCode = null,Object? typeName = null,Object? statusCode = null,Object? statusName = null,Object? description = null,Object? evidences = null,Object? transaction = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,typeCode: null == typeCode ? _self.typeCode : typeCode // ignore: cast_nullable_to_non_nullable
as DisputeTypeCode,typeName: null == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as DisputeStatusCode,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,evidences: null == evidences ? _self.evidences : evidences // ignore: cast_nullable_to_non_nullable
as List<DisputeEvidenceEntity>,transaction: freezed == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as DisputeTransactionSummaryEntity?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of DisputeDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DisputeTransactionSummaryEntityCopyWith<$Res>? get transaction {
    if (_self.transaction == null) {
    return null;
  }

  return $DisputeTransactionSummaryEntityCopyWith<$Res>(_self.transaction!, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}
}


/// Adds pattern-matching-related methods to [DisputeDetailEntity].
extension DisputeDetailEntityPatterns on DisputeDetailEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DisputeDetailEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DisputeDetailEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DisputeDetailEntity value)  $default,){
final _that = this;
switch (_that) {
case _DisputeDetailEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DisputeDetailEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DisputeDetailEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int transactionId,  DisputeTypeCode typeCode,  String typeName,  DisputeStatusCode statusCode,  String statusName,  String description,  List<DisputeEvidenceEntity> evidences,  DisputeTransactionSummaryEntity? transaction,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DisputeDetailEntity() when $default != null:
return $default(_that.id,_that.transactionId,_that.typeCode,_that.typeName,_that.statusCode,_that.statusName,_that.description,_that.evidences,_that.transaction,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int transactionId,  DisputeTypeCode typeCode,  String typeName,  DisputeStatusCode statusCode,  String statusName,  String description,  List<DisputeEvidenceEntity> evidences,  DisputeTransactionSummaryEntity? transaction,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _DisputeDetailEntity():
return $default(_that.id,_that.transactionId,_that.typeCode,_that.typeName,_that.statusCode,_that.statusName,_that.description,_that.evidences,_that.transaction,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int transactionId,  DisputeTypeCode typeCode,  String typeName,  DisputeStatusCode statusCode,  String statusName,  String description,  List<DisputeEvidenceEntity> evidences,  DisputeTransactionSummaryEntity? transaction,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _DisputeDetailEntity() when $default != null:
return $default(_that.id,_that.transactionId,_that.typeCode,_that.typeName,_that.statusCode,_that.statusName,_that.description,_that.evidences,_that.transaction,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _DisputeDetailEntity implements DisputeDetailEntity {
  const _DisputeDetailEntity({required this.id, required this.transactionId, required this.typeCode, required this.typeName, required this.statusCode, required this.statusName, required this.description, final  List<DisputeEvidenceEntity> evidences = const [], this.transaction, required this.createdAt}): _evidences = evidences;
  

@override final  int id;
@override final  int transactionId;
@override final  DisputeTypeCode typeCode;
@override final  String typeName;
@override final  DisputeStatusCode statusCode;
@override final  String statusName;
@override final  String description;
 final  List<DisputeEvidenceEntity> _evidences;
@override@JsonKey() List<DisputeEvidenceEntity> get evidences {
  if (_evidences is EqualUnmodifiableListView) return _evidences;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_evidences);
}

@override final  DisputeTransactionSummaryEntity? transaction;
@override final  DateTime createdAt;

/// Create a copy of DisputeDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisputeDetailEntityCopyWith<_DisputeDetailEntity> get copyWith => __$DisputeDetailEntityCopyWithImpl<_DisputeDetailEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisputeDetailEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.typeCode, typeCode) || other.typeCode == typeCode)&&(identical(other.typeName, typeName) || other.typeName == typeName)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._evidences, _evidences)&&(identical(other.transaction, transaction) || other.transaction == transaction)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,transactionId,typeCode,typeName,statusCode,statusName,description,const DeepCollectionEquality().hash(_evidences),transaction,createdAt);

@override
String toString() {
  return 'DisputeDetailEntity(id: $id, transactionId: $transactionId, typeCode: $typeCode, typeName: $typeName, statusCode: $statusCode, statusName: $statusName, description: $description, evidences: $evidences, transaction: $transaction, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$DisputeDetailEntityCopyWith<$Res> implements $DisputeDetailEntityCopyWith<$Res> {
  factory _$DisputeDetailEntityCopyWith(_DisputeDetailEntity value, $Res Function(_DisputeDetailEntity) _then) = __$DisputeDetailEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int transactionId, DisputeTypeCode typeCode, String typeName, DisputeStatusCode statusCode, String statusName, String description, List<DisputeEvidenceEntity> evidences, DisputeTransactionSummaryEntity? transaction, DateTime createdAt
});


@override $DisputeTransactionSummaryEntityCopyWith<$Res>? get transaction;

}
/// @nodoc
class __$DisputeDetailEntityCopyWithImpl<$Res>
    implements _$DisputeDetailEntityCopyWith<$Res> {
  __$DisputeDetailEntityCopyWithImpl(this._self, this._then);

  final _DisputeDetailEntity _self;
  final $Res Function(_DisputeDetailEntity) _then;

/// Create a copy of DisputeDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? transactionId = null,Object? typeCode = null,Object? typeName = null,Object? statusCode = null,Object? statusName = null,Object? description = null,Object? evidences = null,Object? transaction = freezed,Object? createdAt = null,}) {
  return _then(_DisputeDetailEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,typeCode: null == typeCode ? _self.typeCode : typeCode // ignore: cast_nullable_to_non_nullable
as DisputeTypeCode,typeName: null == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as DisputeStatusCode,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,evidences: null == evidences ? _self._evidences : evidences // ignore: cast_nullable_to_non_nullable
as List<DisputeEvidenceEntity>,transaction: freezed == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as DisputeTransactionSummaryEntity?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of DisputeDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DisputeTransactionSummaryEntityCopyWith<$Res>? get transaction {
    if (_self.transaction == null) {
    return null;
  }

  return $DisputeTransactionSummaryEntityCopyWith<$Res>(_self.transaction!, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}
}

/// @nodoc
mixin _$DisputeEvidenceEntity {

 int get id; String get imageUrl; String? get note; DateTime get createdAt;
/// Create a copy of DisputeEvidenceEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisputeEvidenceEntityCopyWith<DisputeEvidenceEntity> get copyWith => _$DisputeEvidenceEntityCopyWithImpl<DisputeEvidenceEntity>(this as DisputeEvidenceEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisputeEvidenceEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.note, note) || other.note == note)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,imageUrl,note,createdAt);

@override
String toString() {
  return 'DisputeEvidenceEntity(id: $id, imageUrl: $imageUrl, note: $note, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $DisputeEvidenceEntityCopyWith<$Res>  {
  factory $DisputeEvidenceEntityCopyWith(DisputeEvidenceEntity value, $Res Function(DisputeEvidenceEntity) _then) = _$DisputeEvidenceEntityCopyWithImpl;
@useResult
$Res call({
 int id, String imageUrl, String? note, DateTime createdAt
});




}
/// @nodoc
class _$DisputeEvidenceEntityCopyWithImpl<$Res>
    implements $DisputeEvidenceEntityCopyWith<$Res> {
  _$DisputeEvidenceEntityCopyWithImpl(this._self, this._then);

  final DisputeEvidenceEntity _self;
  final $Res Function(DisputeEvidenceEntity) _then;

/// Create a copy of DisputeEvidenceEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? imageUrl = null,Object? note = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [DisputeEvidenceEntity].
extension DisputeEvidenceEntityPatterns on DisputeEvidenceEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DisputeEvidenceEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DisputeEvidenceEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DisputeEvidenceEntity value)  $default,){
final _that = this;
switch (_that) {
case _DisputeEvidenceEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DisputeEvidenceEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DisputeEvidenceEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String imageUrl,  String? note,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DisputeEvidenceEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String imageUrl,  String? note,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _DisputeEvidenceEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String imageUrl,  String? note,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _DisputeEvidenceEntity() when $default != null:
return $default(_that.id,_that.imageUrl,_that.note,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _DisputeEvidenceEntity implements DisputeEvidenceEntity {
  const _DisputeEvidenceEntity({required this.id, required this.imageUrl, this.note, required this.createdAt});
  

@override final  int id;
@override final  String imageUrl;
@override final  String? note;
@override final  DateTime createdAt;

/// Create a copy of DisputeEvidenceEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisputeEvidenceEntityCopyWith<_DisputeEvidenceEntity> get copyWith => __$DisputeEvidenceEntityCopyWithImpl<_DisputeEvidenceEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisputeEvidenceEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.note, note) || other.note == note)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,imageUrl,note,createdAt);

@override
String toString() {
  return 'DisputeEvidenceEntity(id: $id, imageUrl: $imageUrl, note: $note, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$DisputeEvidenceEntityCopyWith<$Res> implements $DisputeEvidenceEntityCopyWith<$Res> {
  factory _$DisputeEvidenceEntityCopyWith(_DisputeEvidenceEntity value, $Res Function(_DisputeEvidenceEntity) _then) = __$DisputeEvidenceEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String imageUrl, String? note, DateTime createdAt
});




}
/// @nodoc
class __$DisputeEvidenceEntityCopyWithImpl<$Res>
    implements _$DisputeEvidenceEntityCopyWith<$Res> {
  __$DisputeEvidenceEntityCopyWithImpl(this._self, this._then);

  final _DisputeEvidenceEntity _self;
  final $Res Function(_DisputeEvidenceEntity) _then;

/// Create a copy of DisputeEvidenceEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? imageUrl = null,Object? note = freezed,Object? createdAt = null,}) {
  return _then(_DisputeEvidenceEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc
mixin _$DisputeTransactionSummaryEntity {

 int get transactionId; String get ticketTitle; int get amount; String? get buyerNickname; String? get sellerNickname;
/// Create a copy of DisputeTransactionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisputeTransactionSummaryEntityCopyWith<DisputeTransactionSummaryEntity> get copyWith => _$DisputeTransactionSummaryEntityCopyWithImpl<DisputeTransactionSummaryEntity>(this as DisputeTransactionSummaryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisputeTransactionSummaryEntity&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.ticketTitle, ticketTitle) || other.ticketTitle == ticketTitle)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.buyerNickname, buyerNickname) || other.buyerNickname == buyerNickname)&&(identical(other.sellerNickname, sellerNickname) || other.sellerNickname == sellerNickname));
}


@override
int get hashCode => Object.hash(runtimeType,transactionId,ticketTitle,amount,buyerNickname,sellerNickname);

@override
String toString() {
  return 'DisputeTransactionSummaryEntity(transactionId: $transactionId, ticketTitle: $ticketTitle, amount: $amount, buyerNickname: $buyerNickname, sellerNickname: $sellerNickname)';
}


}

/// @nodoc
abstract mixin class $DisputeTransactionSummaryEntityCopyWith<$Res>  {
  factory $DisputeTransactionSummaryEntityCopyWith(DisputeTransactionSummaryEntity value, $Res Function(DisputeTransactionSummaryEntity) _then) = _$DisputeTransactionSummaryEntityCopyWithImpl;
@useResult
$Res call({
 int transactionId, String ticketTitle, int amount, String? buyerNickname, String? sellerNickname
});




}
/// @nodoc
class _$DisputeTransactionSummaryEntityCopyWithImpl<$Res>
    implements $DisputeTransactionSummaryEntityCopyWith<$Res> {
  _$DisputeTransactionSummaryEntityCopyWithImpl(this._self, this._then);

  final DisputeTransactionSummaryEntity _self;
  final $Res Function(DisputeTransactionSummaryEntity) _then;

/// Create a copy of DisputeTransactionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? ticketTitle = null,Object? amount = null,Object? buyerNickname = freezed,Object? sellerNickname = freezed,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,ticketTitle: null == ticketTitle ? _self.ticketTitle : ticketTitle // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,buyerNickname: freezed == buyerNickname ? _self.buyerNickname : buyerNickname // ignore: cast_nullable_to_non_nullable
as String?,sellerNickname: freezed == sellerNickname ? _self.sellerNickname : sellerNickname // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DisputeTransactionSummaryEntity].
extension DisputeTransactionSummaryEntityPatterns on DisputeTransactionSummaryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DisputeTransactionSummaryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DisputeTransactionSummaryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DisputeTransactionSummaryEntity value)  $default,){
final _that = this;
switch (_that) {
case _DisputeTransactionSummaryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DisputeTransactionSummaryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DisputeTransactionSummaryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int transactionId,  String ticketTitle,  int amount,  String? buyerNickname,  String? sellerNickname)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DisputeTransactionSummaryEntity() when $default != null:
return $default(_that.transactionId,_that.ticketTitle,_that.amount,_that.buyerNickname,_that.sellerNickname);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int transactionId,  String ticketTitle,  int amount,  String? buyerNickname,  String? sellerNickname)  $default,) {final _that = this;
switch (_that) {
case _DisputeTransactionSummaryEntity():
return $default(_that.transactionId,_that.ticketTitle,_that.amount,_that.buyerNickname,_that.sellerNickname);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int transactionId,  String ticketTitle,  int amount,  String? buyerNickname,  String? sellerNickname)?  $default,) {final _that = this;
switch (_that) {
case _DisputeTransactionSummaryEntity() when $default != null:
return $default(_that.transactionId,_that.ticketTitle,_that.amount,_that.buyerNickname,_that.sellerNickname);case _:
  return null;

}
}

}

/// @nodoc


class _DisputeTransactionSummaryEntity implements DisputeTransactionSummaryEntity {
  const _DisputeTransactionSummaryEntity({required this.transactionId, required this.ticketTitle, required this.amount, this.buyerNickname, this.sellerNickname});
  

@override final  int transactionId;
@override final  String ticketTitle;
@override final  int amount;
@override final  String? buyerNickname;
@override final  String? sellerNickname;

/// Create a copy of DisputeTransactionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisputeTransactionSummaryEntityCopyWith<_DisputeTransactionSummaryEntity> get copyWith => __$DisputeTransactionSummaryEntityCopyWithImpl<_DisputeTransactionSummaryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisputeTransactionSummaryEntity&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.ticketTitle, ticketTitle) || other.ticketTitle == ticketTitle)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.buyerNickname, buyerNickname) || other.buyerNickname == buyerNickname)&&(identical(other.sellerNickname, sellerNickname) || other.sellerNickname == sellerNickname));
}


@override
int get hashCode => Object.hash(runtimeType,transactionId,ticketTitle,amount,buyerNickname,sellerNickname);

@override
String toString() {
  return 'DisputeTransactionSummaryEntity(transactionId: $transactionId, ticketTitle: $ticketTitle, amount: $amount, buyerNickname: $buyerNickname, sellerNickname: $sellerNickname)';
}


}

/// @nodoc
abstract mixin class _$DisputeTransactionSummaryEntityCopyWith<$Res> implements $DisputeTransactionSummaryEntityCopyWith<$Res> {
  factory _$DisputeTransactionSummaryEntityCopyWith(_DisputeTransactionSummaryEntity value, $Res Function(_DisputeTransactionSummaryEntity) _then) = __$DisputeTransactionSummaryEntityCopyWithImpl;
@override @useResult
$Res call({
 int transactionId, String ticketTitle, int amount, String? buyerNickname, String? sellerNickname
});




}
/// @nodoc
class __$DisputeTransactionSummaryEntityCopyWithImpl<$Res>
    implements _$DisputeTransactionSummaryEntityCopyWith<$Res> {
  __$DisputeTransactionSummaryEntityCopyWithImpl(this._self, this._then);

  final _DisputeTransactionSummaryEntity _self;
  final $Res Function(_DisputeTransactionSummaryEntity) _then;

/// Create a copy of DisputeTransactionSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? ticketTitle = null,Object? amount = null,Object? buyerNickname = freezed,Object? sellerNickname = freezed,}) {
  return _then(_DisputeTransactionSummaryEntity(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,ticketTitle: null == ticketTitle ? _self.ticketTitle : ticketTitle // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,buyerNickname: freezed == buyerNickname ? _self.buyerNickname : buyerNickname // ignore: cast_nullable_to_non_nullable
as String?,sellerNickname: freezed == sellerNickname ? _self.sellerNickname : sellerNickname // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
