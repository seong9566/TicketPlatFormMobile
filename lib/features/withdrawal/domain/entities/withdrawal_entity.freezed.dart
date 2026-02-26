// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'withdrawal_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WithdrawalEntity {

 int get id; int get amount; int get fee; int get netAmount; String get statusCode; String get statusName; String? get bankName; DateTime get requestedAt; DateTime? get processedAt; String? get failureReason;
/// Create a copy of WithdrawalEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WithdrawalEntityCopyWith<WithdrawalEntity> get copyWith => _$WithdrawalEntityCopyWithImpl<WithdrawalEntity>(this as WithdrawalEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WithdrawalEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.requestedAt, requestedAt) || other.requestedAt == requestedAt)&&(identical(other.processedAt, processedAt) || other.processedAt == processedAt)&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason));
}


@override
int get hashCode => Object.hash(runtimeType,id,amount,fee,netAmount,statusCode,statusName,bankName,requestedAt,processedAt,failureReason);

@override
String toString() {
  return 'WithdrawalEntity(id: $id, amount: $amount, fee: $fee, netAmount: $netAmount, statusCode: $statusCode, statusName: $statusName, bankName: $bankName, requestedAt: $requestedAt, processedAt: $processedAt, failureReason: $failureReason)';
}


}

/// @nodoc
abstract mixin class $WithdrawalEntityCopyWith<$Res>  {
  factory $WithdrawalEntityCopyWith(WithdrawalEntity value, $Res Function(WithdrawalEntity) _then) = _$WithdrawalEntityCopyWithImpl;
@useResult
$Res call({
 int id, int amount, int fee, int netAmount, String statusCode, String statusName, String? bankName, DateTime requestedAt, DateTime? processedAt, String? failureReason
});




}
/// @nodoc
class _$WithdrawalEntityCopyWithImpl<$Res>
    implements $WithdrawalEntityCopyWith<$Res> {
  _$WithdrawalEntityCopyWithImpl(this._self, this._then);

  final WithdrawalEntity _self;
  final $Res Function(WithdrawalEntity) _then;

/// Create a copy of WithdrawalEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? amount = null,Object? fee = null,Object? netAmount = null,Object? statusCode = null,Object? statusName = null,Object? bankName = freezed,Object? requestedAt = null,Object? processedAt = freezed,Object? failureReason = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,fee: null == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as int,netAmount: null == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as int,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,requestedAt: null == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as DateTime,processedAt: freezed == processedAt ? _self.processedAt : processedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,failureReason: freezed == failureReason ? _self.failureReason : failureReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WithdrawalEntity].
extension WithdrawalEntityPatterns on WithdrawalEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WithdrawalEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WithdrawalEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WithdrawalEntity value)  $default,){
final _that = this;
switch (_that) {
case _WithdrawalEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WithdrawalEntity value)?  $default,){
final _that = this;
switch (_that) {
case _WithdrawalEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int amount,  int fee,  int netAmount,  String statusCode,  String statusName,  String? bankName,  DateTime requestedAt,  DateTime? processedAt,  String? failureReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WithdrawalEntity() when $default != null:
return $default(_that.id,_that.amount,_that.fee,_that.netAmount,_that.statusCode,_that.statusName,_that.bankName,_that.requestedAt,_that.processedAt,_that.failureReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int amount,  int fee,  int netAmount,  String statusCode,  String statusName,  String? bankName,  DateTime requestedAt,  DateTime? processedAt,  String? failureReason)  $default,) {final _that = this;
switch (_that) {
case _WithdrawalEntity():
return $default(_that.id,_that.amount,_that.fee,_that.netAmount,_that.statusCode,_that.statusName,_that.bankName,_that.requestedAt,_that.processedAt,_that.failureReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int amount,  int fee,  int netAmount,  String statusCode,  String statusName,  String? bankName,  DateTime requestedAt,  DateTime? processedAt,  String? failureReason)?  $default,) {final _that = this;
switch (_that) {
case _WithdrawalEntity() when $default != null:
return $default(_that.id,_that.amount,_that.fee,_that.netAmount,_that.statusCode,_that.statusName,_that.bankName,_that.requestedAt,_that.processedAt,_that.failureReason);case _:
  return null;

}
}

}

/// @nodoc


class _WithdrawalEntity implements WithdrawalEntity {
  const _WithdrawalEntity({required this.id, required this.amount, required this.fee, required this.netAmount, required this.statusCode, required this.statusName, this.bankName, required this.requestedAt, this.processedAt, this.failureReason});
  

@override final  int id;
@override final  int amount;
@override final  int fee;
@override final  int netAmount;
@override final  String statusCode;
@override final  String statusName;
@override final  String? bankName;
@override final  DateTime requestedAt;
@override final  DateTime? processedAt;
@override final  String? failureReason;

/// Create a copy of WithdrawalEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WithdrawalEntityCopyWith<_WithdrawalEntity> get copyWith => __$WithdrawalEntityCopyWithImpl<_WithdrawalEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WithdrawalEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.requestedAt, requestedAt) || other.requestedAt == requestedAt)&&(identical(other.processedAt, processedAt) || other.processedAt == processedAt)&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason));
}


@override
int get hashCode => Object.hash(runtimeType,id,amount,fee,netAmount,statusCode,statusName,bankName,requestedAt,processedAt,failureReason);

@override
String toString() {
  return 'WithdrawalEntity(id: $id, amount: $amount, fee: $fee, netAmount: $netAmount, statusCode: $statusCode, statusName: $statusName, bankName: $bankName, requestedAt: $requestedAt, processedAt: $processedAt, failureReason: $failureReason)';
}


}

/// @nodoc
abstract mixin class _$WithdrawalEntityCopyWith<$Res> implements $WithdrawalEntityCopyWith<$Res> {
  factory _$WithdrawalEntityCopyWith(_WithdrawalEntity value, $Res Function(_WithdrawalEntity) _then) = __$WithdrawalEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int amount, int fee, int netAmount, String statusCode, String statusName, String? bankName, DateTime requestedAt, DateTime? processedAt, String? failureReason
});




}
/// @nodoc
class __$WithdrawalEntityCopyWithImpl<$Res>
    implements _$WithdrawalEntityCopyWith<$Res> {
  __$WithdrawalEntityCopyWithImpl(this._self, this._then);

  final _WithdrawalEntity _self;
  final $Res Function(_WithdrawalEntity) _then;

/// Create a copy of WithdrawalEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? amount = null,Object? fee = null,Object? netAmount = null,Object? statusCode = null,Object? statusName = null,Object? bankName = freezed,Object? requestedAt = null,Object? processedAt = freezed,Object? failureReason = freezed,}) {
  return _then(_WithdrawalEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,fee: null == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as int,netAmount: null == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as int,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,requestedAt: null == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as DateTime,processedAt: freezed == processedAt ? _self.processedAt : processedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,failureReason: freezed == failureReason ? _self.failureReason : failureReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
