// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_final_view_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentFinalViewEntity {

 String get paymentKey; String get orderId; int get amount; String get orderName;
/// Create a copy of PaymentFinalViewEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentFinalViewEntityCopyWith<PaymentFinalViewEntity> get copyWith => _$PaymentFinalViewEntityCopyWithImpl<PaymentFinalViewEntity>(this as PaymentFinalViewEntity, _$identity);

  /// Serializes this PaymentFinalViewEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentFinalViewEntity&&(identical(other.paymentKey, paymentKey) || other.paymentKey == paymentKey)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.orderName, orderName) || other.orderName == orderName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentKey,orderId,amount,orderName);

@override
String toString() {
  return 'PaymentFinalViewEntity(paymentKey: $paymentKey, orderId: $orderId, amount: $amount, orderName: $orderName)';
}


}

/// @nodoc
abstract mixin class $PaymentFinalViewEntityCopyWith<$Res>  {
  factory $PaymentFinalViewEntityCopyWith(PaymentFinalViewEntity value, $Res Function(PaymentFinalViewEntity) _then) = _$PaymentFinalViewEntityCopyWithImpl;
@useResult
$Res call({
 String paymentKey, String orderId, int amount, String orderName
});




}
/// @nodoc
class _$PaymentFinalViewEntityCopyWithImpl<$Res>
    implements $PaymentFinalViewEntityCopyWith<$Res> {
  _$PaymentFinalViewEntityCopyWithImpl(this._self, this._then);

  final PaymentFinalViewEntity _self;
  final $Res Function(PaymentFinalViewEntity) _then;

/// Create a copy of PaymentFinalViewEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentKey = null,Object? orderId = null,Object? amount = null,Object? orderName = null,}) {
  return _then(_self.copyWith(
paymentKey: null == paymentKey ? _self.paymentKey : paymentKey // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,orderName: null == orderName ? _self.orderName : orderName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentFinalViewEntity].
extension PaymentFinalViewEntityPatterns on PaymentFinalViewEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentFinalViewEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentFinalViewEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentFinalViewEntity value)  $default,){
final _that = this;
switch (_that) {
case _PaymentFinalViewEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentFinalViewEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentFinalViewEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String paymentKey,  String orderId,  int amount,  String orderName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentFinalViewEntity() when $default != null:
return $default(_that.paymentKey,_that.orderId,_that.amount,_that.orderName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String paymentKey,  String orderId,  int amount,  String orderName)  $default,) {final _that = this;
switch (_that) {
case _PaymentFinalViewEntity():
return $default(_that.paymentKey,_that.orderId,_that.amount,_that.orderName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String paymentKey,  String orderId,  int amount,  String orderName)?  $default,) {final _that = this;
switch (_that) {
case _PaymentFinalViewEntity() when $default != null:
return $default(_that.paymentKey,_that.orderId,_that.amount,_that.orderName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentFinalViewEntity implements PaymentFinalViewEntity {
  const _PaymentFinalViewEntity({required this.paymentKey, required this.orderId, required this.amount, required this.orderName});
  factory _PaymentFinalViewEntity.fromJson(Map<String, dynamic> json) => _$PaymentFinalViewEntityFromJson(json);

@override final  String paymentKey;
@override final  String orderId;
@override final  int amount;
@override final  String orderName;

/// Create a copy of PaymentFinalViewEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentFinalViewEntityCopyWith<_PaymentFinalViewEntity> get copyWith => __$PaymentFinalViewEntityCopyWithImpl<_PaymentFinalViewEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentFinalViewEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentFinalViewEntity&&(identical(other.paymentKey, paymentKey) || other.paymentKey == paymentKey)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.orderName, orderName) || other.orderName == orderName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentKey,orderId,amount,orderName);

@override
String toString() {
  return 'PaymentFinalViewEntity(paymentKey: $paymentKey, orderId: $orderId, amount: $amount, orderName: $orderName)';
}


}

/// @nodoc
abstract mixin class _$PaymentFinalViewEntityCopyWith<$Res> implements $PaymentFinalViewEntityCopyWith<$Res> {
  factory _$PaymentFinalViewEntityCopyWith(_PaymentFinalViewEntity value, $Res Function(_PaymentFinalViewEntity) _then) = __$PaymentFinalViewEntityCopyWithImpl;
@override @useResult
$Res call({
 String paymentKey, String orderId, int amount, String orderName
});




}
/// @nodoc
class __$PaymentFinalViewEntityCopyWithImpl<$Res>
    implements _$PaymentFinalViewEntityCopyWith<$Res> {
  __$PaymentFinalViewEntityCopyWithImpl(this._self, this._then);

  final _PaymentFinalViewEntity _self;
  final $Res Function(_PaymentFinalViewEntity) _then;

/// Create a copy of PaymentFinalViewEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentKey = null,Object? orderId = null,Object? amount = null,Object? orderName = null,}) {
  return _then(_PaymentFinalViewEntity(
paymentKey: null == paymentKey ? _self.paymentKey : paymentKey // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,orderName: null == orderName ? _self.orderName : orderName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
