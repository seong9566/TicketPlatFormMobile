// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balance_transaction_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BalanceTransactionRespDto {

 int get id; String get type; int get amount; int get balanceAfter; String? get referenceType; int? get referenceId; String? get description; String? get createdAt;
/// Create a copy of BalanceTransactionRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BalanceTransactionRespDtoCopyWith<BalanceTransactionRespDto> get copyWith => _$BalanceTransactionRespDtoCopyWithImpl<BalanceTransactionRespDto>(this as BalanceTransactionRespDto, _$identity);

  /// Serializes this BalanceTransactionRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BalanceTransactionRespDto&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.balanceAfter, balanceAfter) || other.balanceAfter == balanceAfter)&&(identical(other.referenceType, referenceType) || other.referenceType == referenceType)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,amount,balanceAfter,referenceType,referenceId,description,createdAt);

@override
String toString() {
  return 'BalanceTransactionRespDto(id: $id, type: $type, amount: $amount, balanceAfter: $balanceAfter, referenceType: $referenceType, referenceId: $referenceId, description: $description, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $BalanceTransactionRespDtoCopyWith<$Res>  {
  factory $BalanceTransactionRespDtoCopyWith(BalanceTransactionRespDto value, $Res Function(BalanceTransactionRespDto) _then) = _$BalanceTransactionRespDtoCopyWithImpl;
@useResult
$Res call({
 int id, String type, int amount, int balanceAfter, String? referenceType, int? referenceId, String? description, String? createdAt
});




}
/// @nodoc
class _$BalanceTransactionRespDtoCopyWithImpl<$Res>
    implements $BalanceTransactionRespDtoCopyWith<$Res> {
  _$BalanceTransactionRespDtoCopyWithImpl(this._self, this._then);

  final BalanceTransactionRespDto _self;
  final $Res Function(BalanceTransactionRespDto) _then;

/// Create a copy of BalanceTransactionRespDto
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
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BalanceTransactionRespDto].
extension BalanceTransactionRespDtoPatterns on BalanceTransactionRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BalanceTransactionRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BalanceTransactionRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BalanceTransactionRespDto value)  $default,){
final _that = this;
switch (_that) {
case _BalanceTransactionRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BalanceTransactionRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _BalanceTransactionRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String type,  int amount,  int balanceAfter,  String? referenceType,  int? referenceId,  String? description,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BalanceTransactionRespDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String type,  int amount,  int balanceAfter,  String? referenceType,  int? referenceId,  String? description,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _BalanceTransactionRespDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String type,  int amount,  int balanceAfter,  String? referenceType,  int? referenceId,  String? description,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _BalanceTransactionRespDto() when $default != null:
return $default(_that.id,_that.type,_that.amount,_that.balanceAfter,_that.referenceType,_that.referenceId,_that.description,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BalanceTransactionRespDto implements BalanceTransactionRespDto {
  const _BalanceTransactionRespDto({required this.id, required this.type, required this.amount, required this.balanceAfter, this.referenceType, this.referenceId, this.description, this.createdAt});
  factory _BalanceTransactionRespDto.fromJson(Map<String, dynamic> json) => _$BalanceTransactionRespDtoFromJson(json);

@override final  int id;
@override final  String type;
@override final  int amount;
@override final  int balanceAfter;
@override final  String? referenceType;
@override final  int? referenceId;
@override final  String? description;
@override final  String? createdAt;

/// Create a copy of BalanceTransactionRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BalanceTransactionRespDtoCopyWith<_BalanceTransactionRespDto> get copyWith => __$BalanceTransactionRespDtoCopyWithImpl<_BalanceTransactionRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BalanceTransactionRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BalanceTransactionRespDto&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.balanceAfter, balanceAfter) || other.balanceAfter == balanceAfter)&&(identical(other.referenceType, referenceType) || other.referenceType == referenceType)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,amount,balanceAfter,referenceType,referenceId,description,createdAt);

@override
String toString() {
  return 'BalanceTransactionRespDto(id: $id, type: $type, amount: $amount, balanceAfter: $balanceAfter, referenceType: $referenceType, referenceId: $referenceId, description: $description, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$BalanceTransactionRespDtoCopyWith<$Res> implements $BalanceTransactionRespDtoCopyWith<$Res> {
  factory _$BalanceTransactionRespDtoCopyWith(_BalanceTransactionRespDto value, $Res Function(_BalanceTransactionRespDto) _then) = __$BalanceTransactionRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String type, int amount, int balanceAfter, String? referenceType, int? referenceId, String? description, String? createdAt
});




}
/// @nodoc
class __$BalanceTransactionRespDtoCopyWithImpl<$Res>
    implements _$BalanceTransactionRespDtoCopyWith<$Res> {
  __$BalanceTransactionRespDtoCopyWithImpl(this._self, this._then);

  final _BalanceTransactionRespDto _self;
  final $Res Function(_BalanceTransactionRespDto) _then;

/// Create a copy of BalanceTransactionRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? amount = null,Object? balanceAfter = null,Object? referenceType = freezed,Object? referenceId = freezed,Object? description = freezed,Object? createdAt = freezed,}) {
  return _then(_BalanceTransactionRespDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,balanceAfter: null == balanceAfter ? _self.balanceAfter : balanceAfter // ignore: cast_nullable_to_non_nullable
as int,referenceType: freezed == referenceType ? _self.referenceType : referenceType // ignore: cast_nullable_to_non_nullable
as String?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
