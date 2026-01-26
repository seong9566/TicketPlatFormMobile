// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_confirm_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentConfirmRespDto {

 String get paymentKey; String get orderId; String get orderName; String get status; String get requestedAt; String? get approvedAt; String get method; int get totalAmount; int get balanceAmount;
/// Create a copy of PaymentConfirmRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentConfirmRespDtoCopyWith<PaymentConfirmRespDto> get copyWith => _$PaymentConfirmRespDtoCopyWithImpl<PaymentConfirmRespDto>(this as PaymentConfirmRespDto, _$identity);

  /// Serializes this PaymentConfirmRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentConfirmRespDto&&(identical(other.paymentKey, paymentKey) || other.paymentKey == paymentKey)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.orderName, orderName) || other.orderName == orderName)&&(identical(other.status, status) || other.status == status)&&(identical(other.requestedAt, requestedAt) || other.requestedAt == requestedAt)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt)&&(identical(other.method, method) || other.method == method)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.balanceAmount, balanceAmount) || other.balanceAmount == balanceAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentKey,orderId,orderName,status,requestedAt,approvedAt,method,totalAmount,balanceAmount);

@override
String toString() {
  return 'PaymentConfirmRespDto(paymentKey: $paymentKey, orderId: $orderId, orderName: $orderName, status: $status, requestedAt: $requestedAt, approvedAt: $approvedAt, method: $method, totalAmount: $totalAmount, balanceAmount: $balanceAmount)';
}


}

/// @nodoc
abstract mixin class $PaymentConfirmRespDtoCopyWith<$Res>  {
  factory $PaymentConfirmRespDtoCopyWith(PaymentConfirmRespDto value, $Res Function(PaymentConfirmRespDto) _then) = _$PaymentConfirmRespDtoCopyWithImpl;
@useResult
$Res call({
 String paymentKey, String orderId, String orderName, String status, String requestedAt, String? approvedAt, String method, int totalAmount, int balanceAmount
});




}
/// @nodoc
class _$PaymentConfirmRespDtoCopyWithImpl<$Res>
    implements $PaymentConfirmRespDtoCopyWith<$Res> {
  _$PaymentConfirmRespDtoCopyWithImpl(this._self, this._then);

  final PaymentConfirmRespDto _self;
  final $Res Function(PaymentConfirmRespDto) _then;

/// Create a copy of PaymentConfirmRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentKey = null,Object? orderId = null,Object? orderName = null,Object? status = null,Object? requestedAt = null,Object? approvedAt = freezed,Object? method = null,Object? totalAmount = null,Object? balanceAmount = null,}) {
  return _then(_self.copyWith(
paymentKey: null == paymentKey ? _self.paymentKey : paymentKey // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,orderName: null == orderName ? _self.orderName : orderName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,requestedAt: null == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as String,approvedAt: freezed == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as String?,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int,balanceAmount: null == balanceAmount ? _self.balanceAmount : balanceAmount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentConfirmRespDto].
extension PaymentConfirmRespDtoPatterns on PaymentConfirmRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentConfirmRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentConfirmRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentConfirmRespDto value)  $default,){
final _that = this;
switch (_that) {
case _PaymentConfirmRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentConfirmRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentConfirmRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String paymentKey,  String orderId,  String orderName,  String status,  String requestedAt,  String? approvedAt,  String method,  int totalAmount,  int balanceAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentConfirmRespDto() when $default != null:
return $default(_that.paymentKey,_that.orderId,_that.orderName,_that.status,_that.requestedAt,_that.approvedAt,_that.method,_that.totalAmount,_that.balanceAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String paymentKey,  String orderId,  String orderName,  String status,  String requestedAt,  String? approvedAt,  String method,  int totalAmount,  int balanceAmount)  $default,) {final _that = this;
switch (_that) {
case _PaymentConfirmRespDto():
return $default(_that.paymentKey,_that.orderId,_that.orderName,_that.status,_that.requestedAt,_that.approvedAt,_that.method,_that.totalAmount,_that.balanceAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String paymentKey,  String orderId,  String orderName,  String status,  String requestedAt,  String? approvedAt,  String method,  int totalAmount,  int balanceAmount)?  $default,) {final _that = this;
switch (_that) {
case _PaymentConfirmRespDto() when $default != null:
return $default(_that.paymentKey,_that.orderId,_that.orderName,_that.status,_that.requestedAt,_that.approvedAt,_that.method,_that.totalAmount,_that.balanceAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentConfirmRespDto implements PaymentConfirmRespDto {
  const _PaymentConfirmRespDto({required this.paymentKey, required this.orderId, required this.orderName, required this.status, required this.requestedAt, this.approvedAt, required this.method, required this.totalAmount, required this.balanceAmount});
  factory _PaymentConfirmRespDto.fromJson(Map<String, dynamic> json) => _$PaymentConfirmRespDtoFromJson(json);

@override final  String paymentKey;
@override final  String orderId;
@override final  String orderName;
@override final  String status;
@override final  String requestedAt;
@override final  String? approvedAt;
@override final  String method;
@override final  int totalAmount;
@override final  int balanceAmount;

/// Create a copy of PaymentConfirmRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentConfirmRespDtoCopyWith<_PaymentConfirmRespDto> get copyWith => __$PaymentConfirmRespDtoCopyWithImpl<_PaymentConfirmRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentConfirmRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentConfirmRespDto&&(identical(other.paymentKey, paymentKey) || other.paymentKey == paymentKey)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.orderName, orderName) || other.orderName == orderName)&&(identical(other.status, status) || other.status == status)&&(identical(other.requestedAt, requestedAt) || other.requestedAt == requestedAt)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt)&&(identical(other.method, method) || other.method == method)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.balanceAmount, balanceAmount) || other.balanceAmount == balanceAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentKey,orderId,orderName,status,requestedAt,approvedAt,method,totalAmount,balanceAmount);

@override
String toString() {
  return 'PaymentConfirmRespDto(paymentKey: $paymentKey, orderId: $orderId, orderName: $orderName, status: $status, requestedAt: $requestedAt, approvedAt: $approvedAt, method: $method, totalAmount: $totalAmount, balanceAmount: $balanceAmount)';
}


}

/// @nodoc
abstract mixin class _$PaymentConfirmRespDtoCopyWith<$Res> implements $PaymentConfirmRespDtoCopyWith<$Res> {
  factory _$PaymentConfirmRespDtoCopyWith(_PaymentConfirmRespDto value, $Res Function(_PaymentConfirmRespDto) _then) = __$PaymentConfirmRespDtoCopyWithImpl;
@override @useResult
$Res call({
 String paymentKey, String orderId, String orderName, String status, String requestedAt, String? approvedAt, String method, int totalAmount, int balanceAmount
});




}
/// @nodoc
class __$PaymentConfirmRespDtoCopyWithImpl<$Res>
    implements _$PaymentConfirmRespDtoCopyWith<$Res> {
  __$PaymentConfirmRespDtoCopyWithImpl(this._self, this._then);

  final _PaymentConfirmRespDto _self;
  final $Res Function(_PaymentConfirmRespDto) _then;

/// Create a copy of PaymentConfirmRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentKey = null,Object? orderId = null,Object? orderName = null,Object? status = null,Object? requestedAt = null,Object? approvedAt = freezed,Object? method = null,Object? totalAmount = null,Object? balanceAmount = null,}) {
  return _then(_PaymentConfirmRespDto(
paymentKey: null == paymentKey ? _self.paymentKey : paymentKey // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,orderName: null == orderName ? _self.orderName : orderName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,requestedAt: null == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as String,approvedAt: freezed == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as String?,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int,balanceAmount: null == balanceAmount ? _self.balanceAmount : balanceAmount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
