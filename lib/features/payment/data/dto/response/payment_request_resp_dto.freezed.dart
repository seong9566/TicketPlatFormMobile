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

 String get orderId; int get amount; String get orderName; String? get customerName; String? get customerEmail; String get successUrl; String get failUrl; String get clientKey; PaymentTicketInfoRespDto? get ticketInfo; PaymentEventInfoRespDto? get eventInfo; String? get eventTitle; String? get eventDate; String? get seatInfo; String? get ticketImageUrl; String? get venueName;
/// Create a copy of PaymentRequestRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentRequestRespDtoCopyWith<PaymentRequestRespDto> get copyWith => _$PaymentRequestRespDtoCopyWithImpl<PaymentRequestRespDto>(this as PaymentRequestRespDto, _$identity);

  /// Serializes this PaymentRequestRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentRequestRespDto&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.orderName, orderName) || other.orderName == orderName)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerEmail, customerEmail) || other.customerEmail == customerEmail)&&(identical(other.successUrl, successUrl) || other.successUrl == successUrl)&&(identical(other.failUrl, failUrl) || other.failUrl == failUrl)&&(identical(other.clientKey, clientKey) || other.clientKey == clientKey)&&(identical(other.ticketInfo, ticketInfo) || other.ticketInfo == ticketInfo)&&(identical(other.eventInfo, eventInfo) || other.eventInfo == eventInfo)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.ticketImageUrl, ticketImageUrl) || other.ticketImageUrl == ticketImageUrl)&&(identical(other.venueName, venueName) || other.venueName == venueName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,amount,orderName,customerName,customerEmail,successUrl,failUrl,clientKey,ticketInfo,eventInfo,eventTitle,eventDate,seatInfo,ticketImageUrl,venueName);

@override
String toString() {
  return 'PaymentRequestRespDto(orderId: $orderId, amount: $amount, orderName: $orderName, customerName: $customerName, customerEmail: $customerEmail, successUrl: $successUrl, failUrl: $failUrl, clientKey: $clientKey, ticketInfo: $ticketInfo, eventInfo: $eventInfo, eventTitle: $eventTitle, eventDate: $eventDate, seatInfo: $seatInfo, ticketImageUrl: $ticketImageUrl, venueName: $venueName)';
}


}

/// @nodoc
abstract mixin class $PaymentRequestRespDtoCopyWith<$Res>  {
  factory $PaymentRequestRespDtoCopyWith(PaymentRequestRespDto value, $Res Function(PaymentRequestRespDto) _then) = _$PaymentRequestRespDtoCopyWithImpl;
@useResult
$Res call({
 String orderId, int amount, String orderName, String? customerName, String? customerEmail, String successUrl, String failUrl, String clientKey, PaymentTicketInfoRespDto? ticketInfo, PaymentEventInfoRespDto? eventInfo, String? eventTitle, String? eventDate, String? seatInfo, String? ticketImageUrl, String? venueName
});


$PaymentTicketInfoRespDtoCopyWith<$Res>? get ticketInfo;$PaymentEventInfoRespDtoCopyWith<$Res>? get eventInfo;

}
/// @nodoc
class _$PaymentRequestRespDtoCopyWithImpl<$Res>
    implements $PaymentRequestRespDtoCopyWith<$Res> {
  _$PaymentRequestRespDtoCopyWithImpl(this._self, this._then);

  final PaymentRequestRespDto _self;
  final $Res Function(PaymentRequestRespDto) _then;

/// Create a copy of PaymentRequestRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = null,Object? amount = null,Object? orderName = null,Object? customerName = freezed,Object? customerEmail = freezed,Object? successUrl = null,Object? failUrl = null,Object? clientKey = null,Object? ticketInfo = freezed,Object? eventInfo = freezed,Object? eventTitle = freezed,Object? eventDate = freezed,Object? seatInfo = freezed,Object? ticketImageUrl = freezed,Object? venueName = freezed,}) {
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
as PaymentTicketInfoRespDto?,eventInfo: freezed == eventInfo ? _self.eventInfo : eventInfo // ignore: cast_nullable_to_non_nullable
as PaymentEventInfoRespDto?,eventTitle: freezed == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String?,eventDate: freezed == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as String?,seatInfo: freezed == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String?,ticketImageUrl: freezed == ticketImageUrl ? _self.ticketImageUrl : ticketImageUrl // ignore: cast_nullable_to_non_nullable
as String?,venueName: freezed == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of PaymentRequestRespDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentTicketInfoRespDtoCopyWith<$Res>? get ticketInfo {
    if (_self.ticketInfo == null) {
    return null;
  }

  return $PaymentTicketInfoRespDtoCopyWith<$Res>(_self.ticketInfo!, (value) {
    return _then(_self.copyWith(ticketInfo: value));
  });
}/// Create a copy of PaymentRequestRespDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentEventInfoRespDtoCopyWith<$Res>? get eventInfo {
    if (_self.eventInfo == null) {
    return null;
  }

  return $PaymentEventInfoRespDtoCopyWith<$Res>(_self.eventInfo!, (value) {
    return _then(_self.copyWith(eventInfo: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String orderId,  int amount,  String orderName,  String? customerName,  String? customerEmail,  String successUrl,  String failUrl,  String clientKey,  PaymentTicketInfoRespDto? ticketInfo,  PaymentEventInfoRespDto? eventInfo,  String? eventTitle,  String? eventDate,  String? seatInfo,  String? ticketImageUrl,  String? venueName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentRequestRespDto() when $default != null:
return $default(_that.orderId,_that.amount,_that.orderName,_that.customerName,_that.customerEmail,_that.successUrl,_that.failUrl,_that.clientKey,_that.ticketInfo,_that.eventInfo,_that.eventTitle,_that.eventDate,_that.seatInfo,_that.ticketImageUrl,_that.venueName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String orderId,  int amount,  String orderName,  String? customerName,  String? customerEmail,  String successUrl,  String failUrl,  String clientKey,  PaymentTicketInfoRespDto? ticketInfo,  PaymentEventInfoRespDto? eventInfo,  String? eventTitle,  String? eventDate,  String? seatInfo,  String? ticketImageUrl,  String? venueName)  $default,) {final _that = this;
switch (_that) {
case _PaymentRequestRespDto():
return $default(_that.orderId,_that.amount,_that.orderName,_that.customerName,_that.customerEmail,_that.successUrl,_that.failUrl,_that.clientKey,_that.ticketInfo,_that.eventInfo,_that.eventTitle,_that.eventDate,_that.seatInfo,_that.ticketImageUrl,_that.venueName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String orderId,  int amount,  String orderName,  String? customerName,  String? customerEmail,  String successUrl,  String failUrl,  String clientKey,  PaymentTicketInfoRespDto? ticketInfo,  PaymentEventInfoRespDto? eventInfo,  String? eventTitle,  String? eventDate,  String? seatInfo,  String? ticketImageUrl,  String? venueName)?  $default,) {final _that = this;
switch (_that) {
case _PaymentRequestRespDto() when $default != null:
return $default(_that.orderId,_that.amount,_that.orderName,_that.customerName,_that.customerEmail,_that.successUrl,_that.failUrl,_that.clientKey,_that.ticketInfo,_that.eventInfo,_that.eventTitle,_that.eventDate,_that.seatInfo,_that.ticketImageUrl,_that.venueName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentRequestRespDto implements PaymentRequestRespDto {
  const _PaymentRequestRespDto({required this.orderId, required this.amount, required this.orderName, this.customerName, this.customerEmail, required this.successUrl, required this.failUrl, required this.clientKey, this.ticketInfo, this.eventInfo, this.eventTitle, this.eventDate, this.seatInfo, this.ticketImageUrl, this.venueName});
  factory _PaymentRequestRespDto.fromJson(Map<String, dynamic> json) => _$PaymentRequestRespDtoFromJson(json);

@override final  String orderId;
@override final  int amount;
@override final  String orderName;
@override final  String? customerName;
@override final  String? customerEmail;
@override final  String successUrl;
@override final  String failUrl;
@override final  String clientKey;
@override final  PaymentTicketInfoRespDto? ticketInfo;
@override final  PaymentEventInfoRespDto? eventInfo;
@override final  String? eventTitle;
@override final  String? eventDate;
@override final  String? seatInfo;
@override final  String? ticketImageUrl;
@override final  String? venueName;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentRequestRespDto&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.orderName, orderName) || other.orderName == orderName)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerEmail, customerEmail) || other.customerEmail == customerEmail)&&(identical(other.successUrl, successUrl) || other.successUrl == successUrl)&&(identical(other.failUrl, failUrl) || other.failUrl == failUrl)&&(identical(other.clientKey, clientKey) || other.clientKey == clientKey)&&(identical(other.ticketInfo, ticketInfo) || other.ticketInfo == ticketInfo)&&(identical(other.eventInfo, eventInfo) || other.eventInfo == eventInfo)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.ticketImageUrl, ticketImageUrl) || other.ticketImageUrl == ticketImageUrl)&&(identical(other.venueName, venueName) || other.venueName == venueName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,amount,orderName,customerName,customerEmail,successUrl,failUrl,clientKey,ticketInfo,eventInfo,eventTitle,eventDate,seatInfo,ticketImageUrl,venueName);

@override
String toString() {
  return 'PaymentRequestRespDto(orderId: $orderId, amount: $amount, orderName: $orderName, customerName: $customerName, customerEmail: $customerEmail, successUrl: $successUrl, failUrl: $failUrl, clientKey: $clientKey, ticketInfo: $ticketInfo, eventInfo: $eventInfo, eventTitle: $eventTitle, eventDate: $eventDate, seatInfo: $seatInfo, ticketImageUrl: $ticketImageUrl, venueName: $venueName)';
}


}

/// @nodoc
abstract mixin class _$PaymentRequestRespDtoCopyWith<$Res> implements $PaymentRequestRespDtoCopyWith<$Res> {
  factory _$PaymentRequestRespDtoCopyWith(_PaymentRequestRespDto value, $Res Function(_PaymentRequestRespDto) _then) = __$PaymentRequestRespDtoCopyWithImpl;
@override @useResult
$Res call({
 String orderId, int amount, String orderName, String? customerName, String? customerEmail, String successUrl, String failUrl, String clientKey, PaymentTicketInfoRespDto? ticketInfo, PaymentEventInfoRespDto? eventInfo, String? eventTitle, String? eventDate, String? seatInfo, String? ticketImageUrl, String? venueName
});


@override $PaymentTicketInfoRespDtoCopyWith<$Res>? get ticketInfo;@override $PaymentEventInfoRespDtoCopyWith<$Res>? get eventInfo;

}
/// @nodoc
class __$PaymentRequestRespDtoCopyWithImpl<$Res>
    implements _$PaymentRequestRespDtoCopyWith<$Res> {
  __$PaymentRequestRespDtoCopyWithImpl(this._self, this._then);

  final _PaymentRequestRespDto _self;
  final $Res Function(_PaymentRequestRespDto) _then;

/// Create a copy of PaymentRequestRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = null,Object? amount = null,Object? orderName = null,Object? customerName = freezed,Object? customerEmail = freezed,Object? successUrl = null,Object? failUrl = null,Object? clientKey = null,Object? ticketInfo = freezed,Object? eventInfo = freezed,Object? eventTitle = freezed,Object? eventDate = freezed,Object? seatInfo = freezed,Object? ticketImageUrl = freezed,Object? venueName = freezed,}) {
  return _then(_PaymentRequestRespDto(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,orderName: null == orderName ? _self.orderName : orderName // ignore: cast_nullable_to_non_nullable
as String,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,customerEmail: freezed == customerEmail ? _self.customerEmail : customerEmail // ignore: cast_nullable_to_non_nullable
as String?,successUrl: null == successUrl ? _self.successUrl : successUrl // ignore: cast_nullable_to_non_nullable
as String,failUrl: null == failUrl ? _self.failUrl : failUrl // ignore: cast_nullable_to_non_nullable
as String,clientKey: null == clientKey ? _self.clientKey : clientKey // ignore: cast_nullable_to_non_nullable
as String,ticketInfo: freezed == ticketInfo ? _self.ticketInfo : ticketInfo // ignore: cast_nullable_to_non_nullable
as PaymentTicketInfoRespDto?,eventInfo: freezed == eventInfo ? _self.eventInfo : eventInfo // ignore: cast_nullable_to_non_nullable
as PaymentEventInfoRespDto?,eventTitle: freezed == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String?,eventDate: freezed == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as String?,seatInfo: freezed == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String?,ticketImageUrl: freezed == ticketImageUrl ? _self.ticketImageUrl : ticketImageUrl // ignore: cast_nullable_to_non_nullable
as String?,venueName: freezed == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of PaymentRequestRespDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentTicketInfoRespDtoCopyWith<$Res>? get ticketInfo {
    if (_self.ticketInfo == null) {
    return null;
  }

  return $PaymentTicketInfoRespDtoCopyWith<$Res>(_self.ticketInfo!, (value) {
    return _then(_self.copyWith(ticketInfo: value));
  });
}/// Create a copy of PaymentRequestRespDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentEventInfoRespDtoCopyWith<$Res>? get eventInfo {
    if (_self.eventInfo == null) {
    return null;
  }

  return $PaymentEventInfoRespDtoCopyWith<$Res>(_self.eventInfo!, (value) {
    return _then(_self.copyWith(eventInfo: value));
  });
}
}


/// @nodoc
mixin _$PaymentTicketInfoRespDto {

 int? get ticketId; String? get thumbnailUrl; String? get seatInfo; int? get quantity; int? get unitPrice; int? get totalAmount;
/// Create a copy of PaymentTicketInfoRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentTicketInfoRespDtoCopyWith<PaymentTicketInfoRespDto> get copyWith => _$PaymentTicketInfoRespDtoCopyWithImpl<PaymentTicketInfoRespDto>(this as PaymentTicketInfoRespDto, _$identity);

  /// Serializes this PaymentTicketInfoRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentTicketInfoRespDto&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketId,thumbnailUrl,seatInfo,quantity,unitPrice,totalAmount);

@override
String toString() {
  return 'PaymentTicketInfoRespDto(ticketId: $ticketId, thumbnailUrl: $thumbnailUrl, seatInfo: $seatInfo, quantity: $quantity, unitPrice: $unitPrice, totalAmount: $totalAmount)';
}


}

/// @nodoc
abstract mixin class $PaymentTicketInfoRespDtoCopyWith<$Res>  {
  factory $PaymentTicketInfoRespDtoCopyWith(PaymentTicketInfoRespDto value, $Res Function(PaymentTicketInfoRespDto) _then) = _$PaymentTicketInfoRespDtoCopyWithImpl;
@useResult
$Res call({
 int? ticketId, String? thumbnailUrl, String? seatInfo, int? quantity, int? unitPrice, int? totalAmount
});




}
/// @nodoc
class _$PaymentTicketInfoRespDtoCopyWithImpl<$Res>
    implements $PaymentTicketInfoRespDtoCopyWith<$Res> {
  _$PaymentTicketInfoRespDtoCopyWithImpl(this._self, this._then);

  final PaymentTicketInfoRespDto _self;
  final $Res Function(PaymentTicketInfoRespDto) _then;

/// Create a copy of PaymentTicketInfoRespDto
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


/// Adds pattern-matching-related methods to [PaymentTicketInfoRespDto].
extension PaymentTicketInfoRespDtoPatterns on PaymentTicketInfoRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentTicketInfoRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentTicketInfoRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentTicketInfoRespDto value)  $default,){
final _that = this;
switch (_that) {
case _PaymentTicketInfoRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentTicketInfoRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentTicketInfoRespDto() when $default != null:
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
case _PaymentTicketInfoRespDto() when $default != null:
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
case _PaymentTicketInfoRespDto():
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
case _PaymentTicketInfoRespDto() when $default != null:
return $default(_that.ticketId,_that.thumbnailUrl,_that.seatInfo,_that.quantity,_that.unitPrice,_that.totalAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentTicketInfoRespDto implements PaymentTicketInfoRespDto {
  const _PaymentTicketInfoRespDto({this.ticketId, this.thumbnailUrl, this.seatInfo, this.quantity, this.unitPrice, this.totalAmount});
  factory _PaymentTicketInfoRespDto.fromJson(Map<String, dynamic> json) => _$PaymentTicketInfoRespDtoFromJson(json);

@override final  int? ticketId;
@override final  String? thumbnailUrl;
@override final  String? seatInfo;
@override final  int? quantity;
@override final  int? unitPrice;
@override final  int? totalAmount;

/// Create a copy of PaymentTicketInfoRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentTicketInfoRespDtoCopyWith<_PaymentTicketInfoRespDto> get copyWith => __$PaymentTicketInfoRespDtoCopyWithImpl<_PaymentTicketInfoRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentTicketInfoRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentTicketInfoRespDto&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketId,thumbnailUrl,seatInfo,quantity,unitPrice,totalAmount);

@override
String toString() {
  return 'PaymentTicketInfoRespDto(ticketId: $ticketId, thumbnailUrl: $thumbnailUrl, seatInfo: $seatInfo, quantity: $quantity, unitPrice: $unitPrice, totalAmount: $totalAmount)';
}


}

/// @nodoc
abstract mixin class _$PaymentTicketInfoRespDtoCopyWith<$Res> implements $PaymentTicketInfoRespDtoCopyWith<$Res> {
  factory _$PaymentTicketInfoRespDtoCopyWith(_PaymentTicketInfoRespDto value, $Res Function(_PaymentTicketInfoRespDto) _then) = __$PaymentTicketInfoRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int? ticketId, String? thumbnailUrl, String? seatInfo, int? quantity, int? unitPrice, int? totalAmount
});




}
/// @nodoc
class __$PaymentTicketInfoRespDtoCopyWithImpl<$Res>
    implements _$PaymentTicketInfoRespDtoCopyWith<$Res> {
  __$PaymentTicketInfoRespDtoCopyWithImpl(this._self, this._then);

  final _PaymentTicketInfoRespDto _self;
  final $Res Function(_PaymentTicketInfoRespDto) _then;

/// Create a copy of PaymentTicketInfoRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = freezed,Object? thumbnailUrl = freezed,Object? seatInfo = freezed,Object? quantity = freezed,Object? unitPrice = freezed,Object? totalAmount = freezed,}) {
  return _then(_PaymentTicketInfoRespDto(
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
mixin _$PaymentEventInfoRespDto {

 int? get eventId; String? get title; String? get eventDateTime; String? get venueName;
/// Create a copy of PaymentEventInfoRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentEventInfoRespDtoCopyWith<PaymentEventInfoRespDto> get copyWith => _$PaymentEventInfoRespDtoCopyWithImpl<PaymentEventInfoRespDto>(this as PaymentEventInfoRespDto, _$identity);

  /// Serializes this PaymentEventInfoRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentEventInfoRespDto&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.title, title) || other.title == title)&&(identical(other.eventDateTime, eventDateTime) || other.eventDateTime == eventDateTime)&&(identical(other.venueName, venueName) || other.venueName == venueName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventId,title,eventDateTime,venueName);

@override
String toString() {
  return 'PaymentEventInfoRespDto(eventId: $eventId, title: $title, eventDateTime: $eventDateTime, venueName: $venueName)';
}


}

/// @nodoc
abstract mixin class $PaymentEventInfoRespDtoCopyWith<$Res>  {
  factory $PaymentEventInfoRespDtoCopyWith(PaymentEventInfoRespDto value, $Res Function(PaymentEventInfoRespDto) _then) = _$PaymentEventInfoRespDtoCopyWithImpl;
@useResult
$Res call({
 int? eventId, String? title, String? eventDateTime, String? venueName
});




}
/// @nodoc
class _$PaymentEventInfoRespDtoCopyWithImpl<$Res>
    implements $PaymentEventInfoRespDtoCopyWith<$Res> {
  _$PaymentEventInfoRespDtoCopyWithImpl(this._self, this._then);

  final PaymentEventInfoRespDto _self;
  final $Res Function(PaymentEventInfoRespDto) _then;

/// Create a copy of PaymentEventInfoRespDto
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


/// Adds pattern-matching-related methods to [PaymentEventInfoRespDto].
extension PaymentEventInfoRespDtoPatterns on PaymentEventInfoRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentEventInfoRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentEventInfoRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentEventInfoRespDto value)  $default,){
final _that = this;
switch (_that) {
case _PaymentEventInfoRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentEventInfoRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentEventInfoRespDto() when $default != null:
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
case _PaymentEventInfoRespDto() when $default != null:
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
case _PaymentEventInfoRespDto():
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
case _PaymentEventInfoRespDto() when $default != null:
return $default(_that.eventId,_that.title,_that.eventDateTime,_that.venueName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentEventInfoRespDto implements PaymentEventInfoRespDto {
  const _PaymentEventInfoRespDto({this.eventId, this.title, this.eventDateTime, this.venueName});
  factory _PaymentEventInfoRespDto.fromJson(Map<String, dynamic> json) => _$PaymentEventInfoRespDtoFromJson(json);

@override final  int? eventId;
@override final  String? title;
@override final  String? eventDateTime;
@override final  String? venueName;

/// Create a copy of PaymentEventInfoRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentEventInfoRespDtoCopyWith<_PaymentEventInfoRespDto> get copyWith => __$PaymentEventInfoRespDtoCopyWithImpl<_PaymentEventInfoRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentEventInfoRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentEventInfoRespDto&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.title, title) || other.title == title)&&(identical(other.eventDateTime, eventDateTime) || other.eventDateTime == eventDateTime)&&(identical(other.venueName, venueName) || other.venueName == venueName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventId,title,eventDateTime,venueName);

@override
String toString() {
  return 'PaymentEventInfoRespDto(eventId: $eventId, title: $title, eventDateTime: $eventDateTime, venueName: $venueName)';
}


}

/// @nodoc
abstract mixin class _$PaymentEventInfoRespDtoCopyWith<$Res> implements $PaymentEventInfoRespDtoCopyWith<$Res> {
  factory _$PaymentEventInfoRespDtoCopyWith(_PaymentEventInfoRespDto value, $Res Function(_PaymentEventInfoRespDto) _then) = __$PaymentEventInfoRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int? eventId, String? title, String? eventDateTime, String? venueName
});




}
/// @nodoc
class __$PaymentEventInfoRespDtoCopyWithImpl<$Res>
    implements _$PaymentEventInfoRespDtoCopyWith<$Res> {
  __$PaymentEventInfoRespDtoCopyWithImpl(this._self, this._then);

  final _PaymentEventInfoRespDto _self;
  final $Res Function(_PaymentEventInfoRespDto) _then;

/// Create a copy of PaymentEventInfoRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = freezed,Object? title = freezed,Object? eventDateTime = freezed,Object? venueName = freezed,}) {
  return _then(_PaymentEventInfoRespDto(
eventId: freezed == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,eventDateTime: freezed == eventDateTime ? _self.eventDateTime : eventDateTime // ignore: cast_nullable_to_non_nullable
as String?,venueName: freezed == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
