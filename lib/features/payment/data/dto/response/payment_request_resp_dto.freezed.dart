// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_request_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentRequestRespDto {

 String get orderId; int get amount; String get orderName; String? get customerName; String? get customerEmail; String get successUrl; String get failUrl; String get clientKey;
/// Create a copy of PaymentRequestRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentRequestRespDtoCopyWith<PaymentRequestRespDto> get copyWith => _$PaymentRequestRespDtoCopyWithImpl<PaymentRequestRespDto>(this as PaymentRequestRespDto, _$identity);

  /// Serializes this PaymentRequestRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentRequestRespDto&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.orderName, orderName) || other.orderName == orderName)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerEmail, customerEmail) || other.customerEmail == customerEmail)&&(identical(other.successUrl, successUrl) || other.successUrl == successUrl)&&(identical(other.failUrl, failUrl) || other.failUrl == failUrl)&&(identical(other.clientKey, clientKey) || other.clientKey == clientKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,amount,orderName,customerName,customerEmail,successUrl,failUrl,clientKey);

@override
String toString() {
  return 'PaymentRequestRespDto(orderId: $orderId, amount: $amount, orderName: $orderName, customerName: $customerName, customerEmail: $customerEmail, successUrl: $successUrl, failUrl: $failUrl, clientKey: $clientKey)';
}


}

/// @nodoc
abstract mixin class $PaymentRequestRespDtoCopyWith<$Res>  {
  factory $PaymentRequestRespDtoCopyWith(PaymentRequestRespDto value, $Res Function(PaymentRequestRespDto) _then) = _$PaymentRequestRespDtoCopyWithImpl;
@useResult
$Res call({
 String orderId, int amount, String orderName, String? customerName, String? customerEmail, String successUrl, String failUrl, String clientKey
});




}
/// @nodoc
class _$PaymentRequestRespDtoCopyWithImpl<$Res>
    implements $PaymentRequestRespDtoCopyWith<$Res> {
  _$PaymentRequestRespDtoCopyWithImpl(this._self, this._then);

  final PaymentRequestRespDto _self;
  final $Res Function(PaymentRequestRespDto) _then;

/// Create a copy of PaymentRequestRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = null,Object? amount = null,Object? orderName = null,Object? customerName = freezed,Object? customerEmail = freezed,Object? successUrl = null,Object? failUrl = null,Object? clientKey = null,}) {
  return _then(_self.copyWith(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,orderName: null == orderName ? _self.orderName : orderName // ignore: cast_nullable_to_non_nullable
as String,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,customerEmail: freezed == customerEmail ? _self.customerEmail : customerEmail // ignore: cast_nullable_to_non_nullable
as String?,successUrl: null == successUrl ? _self.successUrl : successUrl // ignore: cast_nullable_to_non_nullable
as String,failUrl: null == failUrl ? _self.failUrl : failUrl // ignore: cast_nullable_to_non_nullable
as String,clientKey: null == clientKey ? _self.clientKey : clientKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentRequestRespDto].
extension PaymentRequestRespDtoPatterns on PaymentRequestRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentRequestRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentRequestRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentRequestRespDto value)  $default,){
final _that = this;
switch (_that) {
case _PaymentRequestRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentRequestRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentRequestRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String orderId,  int amount,  String orderName,  String? customerName,  String? customerEmail,  String successUrl,  String failUrl,  String clientKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentRequestRespDto() when $default != null:
return $default(_that.orderId,_that.amount,_that.orderName,_that.customerName,_that.customerEmail,_that.successUrl,_that.failUrl,_that.clientKey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String orderId,  int amount,  String orderName,  String? customerName,  String? customerEmail,  String successUrl,  String failUrl,  String clientKey)  $default,) {final _that = this;
switch (_that) {
case _PaymentRequestRespDto():
return $default(_that.orderId,_that.amount,_that.orderName,_that.customerName,_that.customerEmail,_that.successUrl,_that.failUrl,_that.clientKey);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String orderId,  int amount,  String orderName,  String? customerName,  String? customerEmail,  String successUrl,  String failUrl,  String clientKey)?  $default,) {final _that = this;
switch (_that) {
case _PaymentRequestRespDto() when $default != null:
return $default(_that.orderId,_that.amount,_that.orderName,_that.customerName,_that.customerEmail,_that.successUrl,_that.failUrl,_that.clientKey);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentRequestRespDto implements PaymentRequestRespDto {
  const _PaymentRequestRespDto({required this.orderId, required this.amount, required this.orderName, this.customerName, this.customerEmail, required this.successUrl, required this.failUrl, required this.clientKey});
  factory _PaymentRequestRespDto.fromJson(Map<String, dynamic> json) => _$PaymentRequestRespDtoFromJson(json);

@override final  String orderId;
@override final  int amount;
@override final  String orderName;
@override final  String? customerName;
@override final  String? customerEmail;
@override final  String successUrl;
@override final  String failUrl;
@override final  String clientKey;

/// Create a copy of PaymentRequestRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentRequestRespDtoCopyWith<_PaymentRequestRespDto> get copyWith => __$PaymentRequestRespDtoCopyWithImpl<_PaymentRequestRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentRequestRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentRequestRespDto&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.orderName, orderName) || other.orderName == orderName)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerEmail, customerEmail) || other.customerEmail == customerEmail)&&(identical(other.successUrl, successUrl) || other.successUrl == successUrl)&&(identical(other.failUrl, failUrl) || other.failUrl == failUrl)&&(identical(other.clientKey, clientKey) || other.clientKey == clientKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,amount,orderName,customerName,customerEmail,successUrl,failUrl,clientKey);

@override
String toString() {
  return 'PaymentRequestRespDto(orderId: $orderId, amount: $amount, orderName: $orderName, customerName: $customerName, customerEmail: $customerEmail, successUrl: $successUrl, failUrl: $failUrl, clientKey: $clientKey)';
}


}

/// @nodoc
abstract mixin class _$PaymentRequestRespDtoCopyWith<$Res> implements $PaymentRequestRespDtoCopyWith<$Res> {
  factory _$PaymentRequestRespDtoCopyWith(_PaymentRequestRespDto value, $Res Function(_PaymentRequestRespDto) _then) = __$PaymentRequestRespDtoCopyWithImpl;
@override @useResult
$Res call({
 String orderId, int amount, String orderName, String? customerName, String? customerEmail, String successUrl, String failUrl, String clientKey
});




}
/// @nodoc
class __$PaymentRequestRespDtoCopyWithImpl<$Res>
    implements _$PaymentRequestRespDtoCopyWith<$Res> {
  __$PaymentRequestRespDtoCopyWithImpl(this._self, this._then);

  final _PaymentRequestRespDto _self;
  final $Res Function(_PaymentRequestRespDto) _then;

/// Create a copy of PaymentRequestRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = null,Object? amount = null,Object? orderName = null,Object? customerName = freezed,Object? customerEmail = freezed,Object? successUrl = null,Object? failUrl = null,Object? clientKey = null,}) {
  return _then(_PaymentRequestRespDto(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,orderName: null == orderName ? _self.orderName : orderName // ignore: cast_nullable_to_non_nullable
as String,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,customerEmail: freezed == customerEmail ? _self.customerEmail : customerEmail // ignore: cast_nullable_to_non_nullable
as String?,successUrl: null == successUrl ? _self.successUrl : successUrl // ignore: cast_nullable_to_non_nullable
as String,failUrl: null == failUrl ? _self.failUrl : failUrl // ignore: cast_nullable_to_non_nullable
as String,clientKey: null == clientKey ? _self.clientKey : clientKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
