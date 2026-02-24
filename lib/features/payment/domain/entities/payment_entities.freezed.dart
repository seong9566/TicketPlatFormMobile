// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaymentRequestEntity {

 String get orderId; int get amount; String get orderName; String? get customerName; String? get customerEmail; String get successUrl; String get failUrl; String get clientKey; PaymentTicketInfoEntity? get ticketInfo; PaymentEventInfoEntity? get eventInfo;
/// Create a copy of PaymentRequestEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentRequestEntityCopyWith<PaymentRequestEntity> get copyWith => _$PaymentRequestEntityCopyWithImpl<PaymentRequestEntity>(this as PaymentRequestEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentRequestEntity&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.orderName, orderName) || other.orderName == orderName)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerEmail, customerEmail) || other.customerEmail == customerEmail)&&(identical(other.successUrl, successUrl) || other.successUrl == successUrl)&&(identical(other.failUrl, failUrl) || other.failUrl == failUrl)&&(identical(other.clientKey, clientKey) || other.clientKey == clientKey)&&(identical(other.ticketInfo, ticketInfo) || other.ticketInfo == ticketInfo)&&(identical(other.eventInfo, eventInfo) || other.eventInfo == eventInfo));
}


@override
int get hashCode => Object.hash(runtimeType,orderId,amount,orderName,customerName,customerEmail,successUrl,failUrl,clientKey,ticketInfo,eventInfo);

@override
String toString() {
  return 'PaymentRequestEntity(orderId: $orderId, amount: $amount, orderName: $orderName, customerName: $customerName, customerEmail: $customerEmail, successUrl: $successUrl, failUrl: $failUrl, clientKey: $clientKey, ticketInfo: $ticketInfo, eventInfo: $eventInfo)';
}


}

/// @nodoc
abstract mixin class $PaymentRequestEntityCopyWith<$Res>  {
  factory $PaymentRequestEntityCopyWith(PaymentRequestEntity value, $Res Function(PaymentRequestEntity) _then) = _$PaymentRequestEntityCopyWithImpl;
@useResult
$Res call({
 String orderId, int amount, String orderName, String? customerName, String? customerEmail, String successUrl, String failUrl, String clientKey, PaymentTicketInfoEntity? ticketInfo, PaymentEventInfoEntity? eventInfo
});


$PaymentTicketInfoEntityCopyWith<$Res>? get ticketInfo;$PaymentEventInfoEntityCopyWith<$Res>? get eventInfo;

}
/// @nodoc
class _$PaymentRequestEntityCopyWithImpl<$Res>
    implements $PaymentRequestEntityCopyWith<$Res> {
  _$PaymentRequestEntityCopyWithImpl(this._self, this._then);

  final PaymentRequestEntity _self;
  final $Res Function(PaymentRequestEntity) _then;

/// Create a copy of PaymentRequestEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = null,Object? amount = null,Object? orderName = null,Object? customerName = freezed,Object? customerEmail = freezed,Object? successUrl = null,Object? failUrl = null,Object? clientKey = null,Object? ticketInfo = freezed,Object? eventInfo = freezed,}) {
  return _then(_self.copyWith(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,orderName: null == orderName ? _self.orderName : orderName // ignore: cast_nullable_to_non_nullable
as String,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,customerEmail: freezed == customerEmail ? _self.customerEmail : customerEmail // ignore: cast_nullable_to_non_nullable
as String?,successUrl: null == successUrl ? _self.successUrl : successUrl // ignore: cast_nullable_to_non_nullable
as String,failUrl: null == failUrl ? _self.failUrl : failUrl // ignore: cast_nullable_to_non_nullable
as String,clientKey: null == clientKey ? _self.clientKey : clientKey // ignore: cast_nullable_to_non_nullable
as String,ticketInfo: freezed == ticketInfo ? _self.ticketInfo : ticketInfo // ignore: cast_nullable_to_non_nullable
as PaymentTicketInfoEntity?,eventInfo: freezed == eventInfo ? _self.eventInfo : eventInfo // ignore: cast_nullable_to_non_nullable
as PaymentEventInfoEntity?,
  ));
}
/// Create a copy of PaymentRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentTicketInfoEntityCopyWith<$Res>? get ticketInfo {
    if (_self.ticketInfo == null) {
    return null;
  }

  return $PaymentTicketInfoEntityCopyWith<$Res>(_self.ticketInfo!, (value) {
    return _then(_self.copyWith(ticketInfo: value));
  });
}/// Create a copy of PaymentRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentEventInfoEntityCopyWith<$Res>? get eventInfo {
    if (_self.eventInfo == null) {
    return null;
  }

  return $PaymentEventInfoEntityCopyWith<$Res>(_self.eventInfo!, (value) {
    return _then(_self.copyWith(eventInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaymentRequestEntity].
extension PaymentRequestEntityPatterns on PaymentRequestEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentRequestEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentRequestEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentRequestEntity value)  $default,){
final _that = this;
switch (_that) {
case _PaymentRequestEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentRequestEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentRequestEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String orderId,  int amount,  String orderName,  String? customerName,  String? customerEmail,  String successUrl,  String failUrl,  String clientKey,  PaymentTicketInfoEntity? ticketInfo,  PaymentEventInfoEntity? eventInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentRequestEntity() when $default != null:
return $default(_that.orderId,_that.amount,_that.orderName,_that.customerName,_that.customerEmail,_that.successUrl,_that.failUrl,_that.clientKey,_that.ticketInfo,_that.eventInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String orderId,  int amount,  String orderName,  String? customerName,  String? customerEmail,  String successUrl,  String failUrl,  String clientKey,  PaymentTicketInfoEntity? ticketInfo,  PaymentEventInfoEntity? eventInfo)  $default,) {final _that = this;
switch (_that) {
case _PaymentRequestEntity():
return $default(_that.orderId,_that.amount,_that.orderName,_that.customerName,_that.customerEmail,_that.successUrl,_that.failUrl,_that.clientKey,_that.ticketInfo,_that.eventInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String orderId,  int amount,  String orderName,  String? customerName,  String? customerEmail,  String successUrl,  String failUrl,  String clientKey,  PaymentTicketInfoEntity? ticketInfo,  PaymentEventInfoEntity? eventInfo)?  $default,) {final _that = this;
switch (_that) {
case _PaymentRequestEntity() when $default != null:
return $default(_that.orderId,_that.amount,_that.orderName,_that.customerName,_that.customerEmail,_that.successUrl,_that.failUrl,_that.clientKey,_that.ticketInfo,_that.eventInfo);case _:
  return null;

}
}

}

/// @nodoc


class _PaymentRequestEntity implements PaymentRequestEntity {
  const _PaymentRequestEntity({required this.orderId, required this.amount, required this.orderName, this.customerName, this.customerEmail, required this.successUrl, required this.failUrl, required this.clientKey, this.ticketInfo, this.eventInfo});
  

@override final  String orderId;
@override final  int amount;
@override final  String orderName;
@override final  String? customerName;
@override final  String? customerEmail;
@override final  String successUrl;
@override final  String failUrl;
@override final  String clientKey;
@override final  PaymentTicketInfoEntity? ticketInfo;
@override final  PaymentEventInfoEntity? eventInfo;

/// Create a copy of PaymentRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentRequestEntityCopyWith<_PaymentRequestEntity> get copyWith => __$PaymentRequestEntityCopyWithImpl<_PaymentRequestEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentRequestEntity&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.orderName, orderName) || other.orderName == orderName)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerEmail, customerEmail) || other.customerEmail == customerEmail)&&(identical(other.successUrl, successUrl) || other.successUrl == successUrl)&&(identical(other.failUrl, failUrl) || other.failUrl == failUrl)&&(identical(other.clientKey, clientKey) || other.clientKey == clientKey)&&(identical(other.ticketInfo, ticketInfo) || other.ticketInfo == ticketInfo)&&(identical(other.eventInfo, eventInfo) || other.eventInfo == eventInfo));
}


@override
int get hashCode => Object.hash(runtimeType,orderId,amount,orderName,customerName,customerEmail,successUrl,failUrl,clientKey,ticketInfo,eventInfo);

@override
String toString() {
  return 'PaymentRequestEntity(orderId: $orderId, amount: $amount, orderName: $orderName, customerName: $customerName, customerEmail: $customerEmail, successUrl: $successUrl, failUrl: $failUrl, clientKey: $clientKey, ticketInfo: $ticketInfo, eventInfo: $eventInfo)';
}


}

/// @nodoc
abstract mixin class _$PaymentRequestEntityCopyWith<$Res> implements $PaymentRequestEntityCopyWith<$Res> {
  factory _$PaymentRequestEntityCopyWith(_PaymentRequestEntity value, $Res Function(_PaymentRequestEntity) _then) = __$PaymentRequestEntityCopyWithImpl;
@override @useResult
$Res call({
 String orderId, int amount, String orderName, String? customerName, String? customerEmail, String successUrl, String failUrl, String clientKey, PaymentTicketInfoEntity? ticketInfo, PaymentEventInfoEntity? eventInfo
});


@override $PaymentTicketInfoEntityCopyWith<$Res>? get ticketInfo;@override $PaymentEventInfoEntityCopyWith<$Res>? get eventInfo;

}
/// @nodoc
class __$PaymentRequestEntityCopyWithImpl<$Res>
    implements _$PaymentRequestEntityCopyWith<$Res> {
  __$PaymentRequestEntityCopyWithImpl(this._self, this._then);

  final _PaymentRequestEntity _self;
  final $Res Function(_PaymentRequestEntity) _then;

/// Create a copy of PaymentRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = null,Object? amount = null,Object? orderName = null,Object? customerName = freezed,Object? customerEmail = freezed,Object? successUrl = null,Object? failUrl = null,Object? clientKey = null,Object? ticketInfo = freezed,Object? eventInfo = freezed,}) {
  return _then(_PaymentRequestEntity(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,orderName: null == orderName ? _self.orderName : orderName // ignore: cast_nullable_to_non_nullable
as String,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,customerEmail: freezed == customerEmail ? _self.customerEmail : customerEmail // ignore: cast_nullable_to_non_nullable
as String?,successUrl: null == successUrl ? _self.successUrl : successUrl // ignore: cast_nullable_to_non_nullable
as String,failUrl: null == failUrl ? _self.failUrl : failUrl // ignore: cast_nullable_to_non_nullable
as String,clientKey: null == clientKey ? _self.clientKey : clientKey // ignore: cast_nullable_to_non_nullable
as String,ticketInfo: freezed == ticketInfo ? _self.ticketInfo : ticketInfo // ignore: cast_nullable_to_non_nullable
as PaymentTicketInfoEntity?,eventInfo: freezed == eventInfo ? _self.eventInfo : eventInfo // ignore: cast_nullable_to_non_nullable
as PaymentEventInfoEntity?,
  ));
}

/// Create a copy of PaymentRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentTicketInfoEntityCopyWith<$Res>? get ticketInfo {
    if (_self.ticketInfo == null) {
    return null;
  }

  return $PaymentTicketInfoEntityCopyWith<$Res>(_self.ticketInfo!, (value) {
    return _then(_self.copyWith(ticketInfo: value));
  });
}/// Create a copy of PaymentRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentEventInfoEntityCopyWith<$Res>? get eventInfo {
    if (_self.eventInfo == null) {
    return null;
  }

  return $PaymentEventInfoEntityCopyWith<$Res>(_self.eventInfo!, (value) {
    return _then(_self.copyWith(eventInfo: value));
  });
}
}

/// @nodoc
mixin _$PaymentTicketInfoEntity {

 int? get ticketId; String? get thumbnailUrl; String? get seatInfo; int? get quantity; int? get unitPrice; int? get totalAmount;
/// Create a copy of PaymentTicketInfoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentTicketInfoEntityCopyWith<PaymentTicketInfoEntity> get copyWith => _$PaymentTicketInfoEntityCopyWithImpl<PaymentTicketInfoEntity>(this as PaymentTicketInfoEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentTicketInfoEntity&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId,thumbnailUrl,seatInfo,quantity,unitPrice,totalAmount);

@override
String toString() {
  return 'PaymentTicketInfoEntity(ticketId: $ticketId, thumbnailUrl: $thumbnailUrl, seatInfo: $seatInfo, quantity: $quantity, unitPrice: $unitPrice, totalAmount: $totalAmount)';
}


}

/// @nodoc
abstract mixin class $PaymentTicketInfoEntityCopyWith<$Res>  {
  factory $PaymentTicketInfoEntityCopyWith(PaymentTicketInfoEntity value, $Res Function(PaymentTicketInfoEntity) _then) = _$PaymentTicketInfoEntityCopyWithImpl;
@useResult
$Res call({
 int? ticketId, String? thumbnailUrl, String? seatInfo, int? quantity, int? unitPrice, int? totalAmount
});




}
/// @nodoc
class _$PaymentTicketInfoEntityCopyWithImpl<$Res>
    implements $PaymentTicketInfoEntityCopyWith<$Res> {
  _$PaymentTicketInfoEntityCopyWithImpl(this._self, this._then);

  final PaymentTicketInfoEntity _self;
  final $Res Function(PaymentTicketInfoEntity) _then;

/// Create a copy of PaymentTicketInfoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = freezed,Object? thumbnailUrl = freezed,Object? seatInfo = freezed,Object? quantity = freezed,Object? unitPrice = freezed,Object? totalAmount = freezed,}) {
  return _then(_self.copyWith(
ticketId: freezed == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,seatInfo: freezed == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,unitPrice: freezed == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as int?,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentTicketInfoEntity].
extension PaymentTicketInfoEntityPatterns on PaymentTicketInfoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentTicketInfoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentTicketInfoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentTicketInfoEntity value)  $default,){
final _that = this;
switch (_that) {
case _PaymentTicketInfoEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentTicketInfoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentTicketInfoEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? ticketId,  String? thumbnailUrl,  String? seatInfo,  int? quantity,  int? unitPrice,  int? totalAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentTicketInfoEntity() when $default != null:
return $default(_that.ticketId,_that.thumbnailUrl,_that.seatInfo,_that.quantity,_that.unitPrice,_that.totalAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? ticketId,  String? thumbnailUrl,  String? seatInfo,  int? quantity,  int? unitPrice,  int? totalAmount)  $default,) {final _that = this;
switch (_that) {
case _PaymentTicketInfoEntity():
return $default(_that.ticketId,_that.thumbnailUrl,_that.seatInfo,_that.quantity,_that.unitPrice,_that.totalAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? ticketId,  String? thumbnailUrl,  String? seatInfo,  int? quantity,  int? unitPrice,  int? totalAmount)?  $default,) {final _that = this;
switch (_that) {
case _PaymentTicketInfoEntity() when $default != null:
return $default(_that.ticketId,_that.thumbnailUrl,_that.seatInfo,_that.quantity,_that.unitPrice,_that.totalAmount);case _:
  return null;

}
}

}

/// @nodoc


class _PaymentTicketInfoEntity implements PaymentTicketInfoEntity {
  const _PaymentTicketInfoEntity({this.ticketId, this.thumbnailUrl, this.seatInfo, this.quantity, this.unitPrice, this.totalAmount});
  

@override final  int? ticketId;
@override final  String? thumbnailUrl;
@override final  String? seatInfo;
@override final  int? quantity;
@override final  int? unitPrice;
@override final  int? totalAmount;

/// Create a copy of PaymentTicketInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentTicketInfoEntityCopyWith<_PaymentTicketInfoEntity> get copyWith => __$PaymentTicketInfoEntityCopyWithImpl<_PaymentTicketInfoEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentTicketInfoEntity&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId,thumbnailUrl,seatInfo,quantity,unitPrice,totalAmount);

@override
String toString() {
  return 'PaymentTicketInfoEntity(ticketId: $ticketId, thumbnailUrl: $thumbnailUrl, seatInfo: $seatInfo, quantity: $quantity, unitPrice: $unitPrice, totalAmount: $totalAmount)';
}


}

/// @nodoc
abstract mixin class _$PaymentTicketInfoEntityCopyWith<$Res> implements $PaymentTicketInfoEntityCopyWith<$Res> {
  factory _$PaymentTicketInfoEntityCopyWith(_PaymentTicketInfoEntity value, $Res Function(_PaymentTicketInfoEntity) _then) = __$PaymentTicketInfoEntityCopyWithImpl;
@override @useResult
$Res call({
 int? ticketId, String? thumbnailUrl, String? seatInfo, int? quantity, int? unitPrice, int? totalAmount
});




}
/// @nodoc
class __$PaymentTicketInfoEntityCopyWithImpl<$Res>
    implements _$PaymentTicketInfoEntityCopyWith<$Res> {
  __$PaymentTicketInfoEntityCopyWithImpl(this._self, this._then);

  final _PaymentTicketInfoEntity _self;
  final $Res Function(_PaymentTicketInfoEntity) _then;

/// Create a copy of PaymentTicketInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = freezed,Object? thumbnailUrl = freezed,Object? seatInfo = freezed,Object? quantity = freezed,Object? unitPrice = freezed,Object? totalAmount = freezed,}) {
  return _then(_PaymentTicketInfoEntity(
ticketId: freezed == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,seatInfo: freezed == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,unitPrice: freezed == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as int?,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$PaymentEventInfoEntity {

 int? get eventId; String? get title; String? get eventDateTime; String? get venueName;
/// Create a copy of PaymentEventInfoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentEventInfoEntityCopyWith<PaymentEventInfoEntity> get copyWith => _$PaymentEventInfoEntityCopyWithImpl<PaymentEventInfoEntity>(this as PaymentEventInfoEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentEventInfoEntity&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.title, title) || other.title == title)&&(identical(other.eventDateTime, eventDateTime) || other.eventDateTime == eventDateTime)&&(identical(other.venueName, venueName) || other.venueName == venueName));
}


@override
int get hashCode => Object.hash(runtimeType,eventId,title,eventDateTime,venueName);

@override
String toString() {
  return 'PaymentEventInfoEntity(eventId: $eventId, title: $title, eventDateTime: $eventDateTime, venueName: $venueName)';
}


}

/// @nodoc
abstract mixin class $PaymentEventInfoEntityCopyWith<$Res>  {
  factory $PaymentEventInfoEntityCopyWith(PaymentEventInfoEntity value, $Res Function(PaymentEventInfoEntity) _then) = _$PaymentEventInfoEntityCopyWithImpl;
@useResult
$Res call({
 int? eventId, String? title, String? eventDateTime, String? venueName
});




}
/// @nodoc
class _$PaymentEventInfoEntityCopyWithImpl<$Res>
    implements $PaymentEventInfoEntityCopyWith<$Res> {
  _$PaymentEventInfoEntityCopyWithImpl(this._self, this._then);

  final PaymentEventInfoEntity _self;
  final $Res Function(PaymentEventInfoEntity) _then;

/// Create a copy of PaymentEventInfoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventId = freezed,Object? title = freezed,Object? eventDateTime = freezed,Object? venueName = freezed,}) {
  return _then(_self.copyWith(
eventId: freezed == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,eventDateTime: freezed == eventDateTime ? _self.eventDateTime : eventDateTime // ignore: cast_nullable_to_non_nullable
as String?,venueName: freezed == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentEventInfoEntity].
extension PaymentEventInfoEntityPatterns on PaymentEventInfoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentEventInfoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentEventInfoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentEventInfoEntity value)  $default,){
final _that = this;
switch (_that) {
case _PaymentEventInfoEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentEventInfoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentEventInfoEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? eventId,  String? title,  String? eventDateTime,  String? venueName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentEventInfoEntity() when $default != null:
return $default(_that.eventId,_that.title,_that.eventDateTime,_that.venueName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? eventId,  String? title,  String? eventDateTime,  String? venueName)  $default,) {final _that = this;
switch (_that) {
case _PaymentEventInfoEntity():
return $default(_that.eventId,_that.title,_that.eventDateTime,_that.venueName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? eventId,  String? title,  String? eventDateTime,  String? venueName)?  $default,) {final _that = this;
switch (_that) {
case _PaymentEventInfoEntity() when $default != null:
return $default(_that.eventId,_that.title,_that.eventDateTime,_that.venueName);case _:
  return null;

}
}

}

/// @nodoc


class _PaymentEventInfoEntity implements PaymentEventInfoEntity {
  const _PaymentEventInfoEntity({this.eventId, this.title, this.eventDateTime, this.venueName});
  

@override final  int? eventId;
@override final  String? title;
@override final  String? eventDateTime;
@override final  String? venueName;

/// Create a copy of PaymentEventInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentEventInfoEntityCopyWith<_PaymentEventInfoEntity> get copyWith => __$PaymentEventInfoEntityCopyWithImpl<_PaymentEventInfoEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentEventInfoEntity&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.title, title) || other.title == title)&&(identical(other.eventDateTime, eventDateTime) || other.eventDateTime == eventDateTime)&&(identical(other.venueName, venueName) || other.venueName == venueName));
}


@override
int get hashCode => Object.hash(runtimeType,eventId,title,eventDateTime,venueName);

@override
String toString() {
  return 'PaymentEventInfoEntity(eventId: $eventId, title: $title, eventDateTime: $eventDateTime, venueName: $venueName)';
}


}

/// @nodoc
abstract mixin class _$PaymentEventInfoEntityCopyWith<$Res> implements $PaymentEventInfoEntityCopyWith<$Res> {
  factory _$PaymentEventInfoEntityCopyWith(_PaymentEventInfoEntity value, $Res Function(_PaymentEventInfoEntity) _then) = __$PaymentEventInfoEntityCopyWithImpl;
@override @useResult
$Res call({
 int? eventId, String? title, String? eventDateTime, String? venueName
});




}
/// @nodoc
class __$PaymentEventInfoEntityCopyWithImpl<$Res>
    implements _$PaymentEventInfoEntityCopyWith<$Res> {
  __$PaymentEventInfoEntityCopyWithImpl(this._self, this._then);

  final _PaymentEventInfoEntity _self;
  final $Res Function(_PaymentEventInfoEntity) _then;

/// Create a copy of PaymentEventInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = freezed,Object? title = freezed,Object? eventDateTime = freezed,Object? venueName = freezed,}) {
  return _then(_PaymentEventInfoEntity(
eventId: freezed == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,eventDateTime: freezed == eventDateTime ? _self.eventDateTime : eventDateTime // ignore: cast_nullable_to_non_nullable
as String?,venueName: freezed == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$PaymentConfirmEntity {

 String get paymentKey; String get orderId; String get orderName; String get status; DateTime get requestedAt; DateTime? get approvedAt; String get method; int get totalAmount; int get balanceAmount;
/// Create a copy of PaymentConfirmEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentConfirmEntityCopyWith<PaymentConfirmEntity> get copyWith => _$PaymentConfirmEntityCopyWithImpl<PaymentConfirmEntity>(this as PaymentConfirmEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentConfirmEntity&&(identical(other.paymentKey, paymentKey) || other.paymentKey == paymentKey)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.orderName, orderName) || other.orderName == orderName)&&(identical(other.status, status) || other.status == status)&&(identical(other.requestedAt, requestedAt) || other.requestedAt == requestedAt)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt)&&(identical(other.method, method) || other.method == method)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.balanceAmount, balanceAmount) || other.balanceAmount == balanceAmount));
}


@override
int get hashCode => Object.hash(runtimeType,paymentKey,orderId,orderName,status,requestedAt,approvedAt,method,totalAmount,balanceAmount);

@override
String toString() {
  return 'PaymentConfirmEntity(paymentKey: $paymentKey, orderId: $orderId, orderName: $orderName, status: $status, requestedAt: $requestedAt, approvedAt: $approvedAt, method: $method, totalAmount: $totalAmount, balanceAmount: $balanceAmount)';
}


}

/// @nodoc
abstract mixin class $PaymentConfirmEntityCopyWith<$Res>  {
  factory $PaymentConfirmEntityCopyWith(PaymentConfirmEntity value, $Res Function(PaymentConfirmEntity) _then) = _$PaymentConfirmEntityCopyWithImpl;
@useResult
$Res call({
 String paymentKey, String orderId, String orderName, String status, DateTime requestedAt, DateTime? approvedAt, String method, int totalAmount, int balanceAmount
});




}
/// @nodoc
class _$PaymentConfirmEntityCopyWithImpl<$Res>
    implements $PaymentConfirmEntityCopyWith<$Res> {
  _$PaymentConfirmEntityCopyWithImpl(this._self, this._then);

  final PaymentConfirmEntity _self;
  final $Res Function(PaymentConfirmEntity) _then;

/// Create a copy of PaymentConfirmEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentKey = null,Object? orderId = null,Object? orderName = null,Object? status = null,Object? requestedAt = null,Object? approvedAt = freezed,Object? method = null,Object? totalAmount = null,Object? balanceAmount = null,}) {
  return _then(_self.copyWith(
paymentKey: null == paymentKey ? _self.paymentKey : paymentKey // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,orderName: null == orderName ? _self.orderName : orderName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,requestedAt: null == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as DateTime,approvedAt: freezed == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int,balanceAmount: null == balanceAmount ? _self.balanceAmount : balanceAmount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentConfirmEntity].
extension PaymentConfirmEntityPatterns on PaymentConfirmEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentConfirmEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentConfirmEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentConfirmEntity value)  $default,){
final _that = this;
switch (_that) {
case _PaymentConfirmEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentConfirmEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentConfirmEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String paymentKey,  String orderId,  String orderName,  String status,  DateTime requestedAt,  DateTime? approvedAt,  String method,  int totalAmount,  int balanceAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentConfirmEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String paymentKey,  String orderId,  String orderName,  String status,  DateTime requestedAt,  DateTime? approvedAt,  String method,  int totalAmount,  int balanceAmount)  $default,) {final _that = this;
switch (_that) {
case _PaymentConfirmEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String paymentKey,  String orderId,  String orderName,  String status,  DateTime requestedAt,  DateTime? approvedAt,  String method,  int totalAmount,  int balanceAmount)?  $default,) {final _that = this;
switch (_that) {
case _PaymentConfirmEntity() when $default != null:
return $default(_that.paymentKey,_that.orderId,_that.orderName,_that.status,_that.requestedAt,_that.approvedAt,_that.method,_that.totalAmount,_that.balanceAmount);case _:
  return null;

}
}

}

/// @nodoc


class _PaymentConfirmEntity implements PaymentConfirmEntity {
  const _PaymentConfirmEntity({required this.paymentKey, required this.orderId, required this.orderName, required this.status, required this.requestedAt, this.approvedAt, required this.method, required this.totalAmount, required this.balanceAmount});
  

@override final  String paymentKey;
@override final  String orderId;
@override final  String orderName;
@override final  String status;
@override final  DateTime requestedAt;
@override final  DateTime? approvedAt;
@override final  String method;
@override final  int totalAmount;
@override final  int balanceAmount;

/// Create a copy of PaymentConfirmEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentConfirmEntityCopyWith<_PaymentConfirmEntity> get copyWith => __$PaymentConfirmEntityCopyWithImpl<_PaymentConfirmEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentConfirmEntity&&(identical(other.paymentKey, paymentKey) || other.paymentKey == paymentKey)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.orderName, orderName) || other.orderName == orderName)&&(identical(other.status, status) || other.status == status)&&(identical(other.requestedAt, requestedAt) || other.requestedAt == requestedAt)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt)&&(identical(other.method, method) || other.method == method)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.balanceAmount, balanceAmount) || other.balanceAmount == balanceAmount));
}


@override
int get hashCode => Object.hash(runtimeType,paymentKey,orderId,orderName,status,requestedAt,approvedAt,method,totalAmount,balanceAmount);

@override
String toString() {
  return 'PaymentConfirmEntity(paymentKey: $paymentKey, orderId: $orderId, orderName: $orderName, status: $status, requestedAt: $requestedAt, approvedAt: $approvedAt, method: $method, totalAmount: $totalAmount, balanceAmount: $balanceAmount)';
}


}

/// @nodoc
abstract mixin class _$PaymentConfirmEntityCopyWith<$Res> implements $PaymentConfirmEntityCopyWith<$Res> {
  factory _$PaymentConfirmEntityCopyWith(_PaymentConfirmEntity value, $Res Function(_PaymentConfirmEntity) _then) = __$PaymentConfirmEntityCopyWithImpl;
@override @useResult
$Res call({
 String paymentKey, String orderId, String orderName, String status, DateTime requestedAt, DateTime? approvedAt, String method, int totalAmount, int balanceAmount
});




}
/// @nodoc
class __$PaymentConfirmEntityCopyWithImpl<$Res>
    implements _$PaymentConfirmEntityCopyWith<$Res> {
  __$PaymentConfirmEntityCopyWithImpl(this._self, this._then);

  final _PaymentConfirmEntity _self;
  final $Res Function(_PaymentConfirmEntity) _then;

/// Create a copy of PaymentConfirmEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentKey = null,Object? orderId = null,Object? orderName = null,Object? status = null,Object? requestedAt = null,Object? approvedAt = freezed,Object? method = null,Object? totalAmount = null,Object? balanceAmount = null,}) {
  return _then(_PaymentConfirmEntity(
paymentKey: null == paymentKey ? _self.paymentKey : paymentKey // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,orderName: null == orderName ? _self.orderName : orderName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,requestedAt: null == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as DateTime,approvedAt: freezed == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int,balanceAmount: null == balanceAmount ? _self.balanceAmount : balanceAmount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
