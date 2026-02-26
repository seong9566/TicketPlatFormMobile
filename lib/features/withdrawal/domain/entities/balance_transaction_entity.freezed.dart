// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balance_transaction_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BalanceTransactionEntity {

 int get id; String get type; int get amount; int get balanceAfter; String? get referenceType; int? get referenceId; String? get description; DateTime? get createdAt;
/// Create a copy of BalanceTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BalanceTransactionEntityCopyWith<BalanceTransactionEntity> get copyWith => _$BalanceTransactionEntityCopyWithImpl<BalanceTransactionEntity>(this as BalanceTransactionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BalanceTransactionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.balanceAfter, balanceAfter) || other.balanceAfter == balanceAfter)&&(identical(other.referenceType, referenceType) || other.referenceType == referenceType)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,amount,balanceAfter,referenceType,referenceId,description,createdAt);

@override
String toString() {
  return 'BalanceTransactionEntity(id: $id, type: $type, amount: $amount, balanceAfter: $balanceAfter, referenceType: $referenceType, referenceId: $referenceId, description: $description, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $BalanceTransactionEntityCopyWith<$Res>  {
  factory $BalanceTransactionEntityCopyWith(BalanceTransactionEntity value, $Res Function(BalanceTransactionEntity) _then) = _$BalanceTransactionEntityCopyWithImpl;
@useResult
$Res call({
 int id, String type, int amount, int balanceAfter, String? referenceType, int? referenceId, String? description, DateTime? createdAt
});




}
/// @nodoc
class _$BalanceTransactionEntityCopyWithImpl<$Res>
    implements $BalanceTransactionEntityCopyWith<$Res> {
  _$BalanceTransactionEntityCopyWithImpl(this._self, this._then);

  final BalanceTransactionEntity _self;
  final $Res Function(BalanceTransactionEntity) _then;

/// Create a copy of BalanceTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? amount = null,Object? balanceAfter = null,Object? referenceType = freezed,Object? referenceId = freezed,Object? description = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,balanceAfter: null == balanceAfter ? _self.balanceAfter : balanceAfter // ignore: cast_nullable_to_non_nullable
as int,referenceType: freezed == referenceType ? _self.referenceType : referenceType // ignore: cast_nullable_to_non_nullable
as String?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [BalanceTransactionEntity].
extension BalanceTransactionEntityPatterns on BalanceTransactionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BalanceTransactionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BalanceTransactionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BalanceTransactionEntity value)  $default,){
final _that = this;
switch (_that) {
case _BalanceTransactionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BalanceTransactionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BalanceTransactionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String type,  int amount,  int balanceAfter,  String? referenceType,  int? referenceId,  String? description,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BalanceTransactionEntity() when $default != null:
return $default(_that.id,_that.type,_that.amount,_that.balanceAfter,_that.referenceType,_that.referenceId,_that.description,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String type,  int amount,  int balanceAfter,  String? referenceType,  int? referenceId,  String? description,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _BalanceTransactionEntity():
return $default(_that.id,_that.type,_that.amount,_that.balanceAfter,_that.referenceType,_that.referenceId,_that.description,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String type,  int amount,  int balanceAfter,  String? referenceType,  int? referenceId,  String? description,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _BalanceTransactionEntity() when $default != null:
return $default(_that.id,_that.type,_that.amount,_that.balanceAfter,_that.referenceType,_that.referenceId,_that.description,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _BalanceTransactionEntity implements BalanceTransactionEntity {
  const _BalanceTransactionEntity({required this.id, required this.type, required this.amount, required this.balanceAfter, this.referenceType, this.referenceId, this.description, this.createdAt});
  

@override final  int id;
@override final  String type;
@override final  int amount;
@override final  int balanceAfter;
@override final  String? referenceType;
@override final  int? referenceId;
@override final  String? description;
@override final  DateTime? createdAt;

/// Create a copy of BalanceTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BalanceTransactionEntityCopyWith<_BalanceTransactionEntity> get copyWith => __$BalanceTransactionEntityCopyWithImpl<_BalanceTransactionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BalanceTransactionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.balanceAfter, balanceAfter) || other.balanceAfter == balanceAfter)&&(identical(other.referenceType, referenceType) || other.referenceType == referenceType)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,amount,balanceAfter,referenceType,referenceId,description,createdAt);

@override
String toString() {
  return 'BalanceTransactionEntity(id: $id, type: $type, amount: $amount, balanceAfter: $balanceAfter, referenceType: $referenceType, referenceId: $referenceId, description: $description, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$BalanceTransactionEntityCopyWith<$Res> implements $BalanceTransactionEntityCopyWith<$Res> {
  factory _$BalanceTransactionEntityCopyWith(_BalanceTransactionEntity value, $Res Function(_BalanceTransactionEntity) _then) = __$BalanceTransactionEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String type, int amount, int balanceAfter, String? referenceType, int? referenceId, String? description, DateTime? createdAt
});




}
/// @nodoc
class __$BalanceTransactionEntityCopyWithImpl<$Res>
    implements _$BalanceTransactionEntityCopyWith<$Res> {
  __$BalanceTransactionEntityCopyWithImpl(this._self, this._then);

  final _BalanceTransactionEntity _self;
  final $Res Function(_BalanceTransactionEntity) _then;

/// Create a copy of BalanceTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? amount = null,Object? balanceAfter = null,Object? referenceType = freezed,Object? referenceId = freezed,Object? description = freezed,Object? createdAt = freezed,}) {
  return _then(_BalanceTransactionEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,balanceAfter: null == balanceAfter ? _self.balanceAfter : balanceAfter // ignore: cast_nullable_to_non_nullable
as int,referenceType: freezed == referenceType ? _self.referenceType : referenceType // ignore: cast_nullable_to_non_nullable
as String?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
