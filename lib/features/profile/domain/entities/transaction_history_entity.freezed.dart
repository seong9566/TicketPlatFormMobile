// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_history_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionHistoryEntity {

 int get transactionId; int get ticketId; String get ticketTitle; String? get ticketThumbnailUrl; DateTime get eventDateTime; String get venueName; String get seatInfo; int get quantity; int get unitPrice; int get totalAmount; String get statusCode; String get statusName; TransactionUserEntity? get buyer; TransactionUserEntity? get seller; int? get roomId; DateTime get createdAt; DateTime? get paidAt; DateTime? get confirmedAt; DateTime? get cancelledAt;
/// Create a copy of TransactionHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionHistoryEntityCopyWith<TransactionHistoryEntity> get copyWith => _$TransactionHistoryEntityCopyWithImpl<TransactionHistoryEntity>(this as TransactionHistoryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionHistoryEntity&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.ticketTitle, ticketTitle) || other.ticketTitle == ticketTitle)&&(identical(other.ticketThumbnailUrl, ticketThumbnailUrl) || other.ticketThumbnailUrl == ticketThumbnailUrl)&&(identical(other.eventDateTime, eventDateTime) || other.eventDateTime == eventDateTime)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.buyer, buyer) || other.buyer == buyer)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.confirmedAt, confirmedAt) || other.confirmedAt == confirmedAt)&&(identical(other.cancelledAt, cancelledAt) || other.cancelledAt == cancelledAt));
}


@override
int get hashCode => Object.hashAll([runtimeType,transactionId,ticketId,ticketTitle,ticketThumbnailUrl,eventDateTime,venueName,seatInfo,quantity,unitPrice,totalAmount,statusCode,statusName,buyer,seller,roomId,createdAt,paidAt,confirmedAt,cancelledAt]);

@override
String toString() {
  return 'TransactionHistoryEntity(transactionId: $transactionId, ticketId: $ticketId, ticketTitle: $ticketTitle, ticketThumbnailUrl: $ticketThumbnailUrl, eventDateTime: $eventDateTime, venueName: $venueName, seatInfo: $seatInfo, quantity: $quantity, unitPrice: $unitPrice, totalAmount: $totalAmount, statusCode: $statusCode, statusName: $statusName, buyer: $buyer, seller: $seller, roomId: $roomId, createdAt: $createdAt, paidAt: $paidAt, confirmedAt: $confirmedAt, cancelledAt: $cancelledAt)';
}


}

/// @nodoc
abstract mixin class $TransactionHistoryEntityCopyWith<$Res>  {
  factory $TransactionHistoryEntityCopyWith(TransactionHistoryEntity value, $Res Function(TransactionHistoryEntity) _then) = _$TransactionHistoryEntityCopyWithImpl;
@useResult
$Res call({
 int transactionId, int ticketId, String ticketTitle, String? ticketThumbnailUrl, DateTime eventDateTime, String venueName, String seatInfo, int quantity, int unitPrice, int totalAmount, String statusCode, String statusName, TransactionUserEntity? buyer, TransactionUserEntity? seller, int? roomId, DateTime createdAt, DateTime? paidAt, DateTime? confirmedAt, DateTime? cancelledAt
});


$TransactionUserEntityCopyWith<$Res>? get buyer;$TransactionUserEntityCopyWith<$Res>? get seller;

}
/// @nodoc
class _$TransactionHistoryEntityCopyWithImpl<$Res>
    implements $TransactionHistoryEntityCopyWith<$Res> {
  _$TransactionHistoryEntityCopyWithImpl(this._self, this._then);

  final TransactionHistoryEntity _self;
  final $Res Function(TransactionHistoryEntity) _then;

/// Create a copy of TransactionHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? ticketId = null,Object? ticketTitle = null,Object? ticketThumbnailUrl = freezed,Object? eventDateTime = null,Object? venueName = null,Object? seatInfo = null,Object? quantity = null,Object? unitPrice = null,Object? totalAmount = null,Object? statusCode = null,Object? statusName = null,Object? buyer = freezed,Object? seller = freezed,Object? roomId = freezed,Object? createdAt = null,Object? paidAt = freezed,Object? confirmedAt = freezed,Object? cancelledAt = freezed,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,ticketTitle: null == ticketTitle ? _self.ticketTitle : ticketTitle // ignore: cast_nullable_to_non_nullable
as String,ticketThumbnailUrl: freezed == ticketThumbnailUrl ? _self.ticketThumbnailUrl : ticketThumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,eventDateTime: null == eventDateTime ? _self.eventDateTime : eventDateTime // ignore: cast_nullable_to_non_nullable
as DateTime,venueName: null == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String,seatInfo: null == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as int,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,buyer: freezed == buyer ? _self.buyer : buyer // ignore: cast_nullable_to_non_nullable
as TransactionUserEntity?,seller: freezed == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as TransactionUserEntity?,roomId: freezed == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,confirmedAt: freezed == confirmedAt ? _self.confirmedAt : confirmedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,cancelledAt: freezed == cancelledAt ? _self.cancelledAt : cancelledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of TransactionHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionUserEntityCopyWith<$Res>? get buyer {
    if (_self.buyer == null) {
    return null;
  }

  return $TransactionUserEntityCopyWith<$Res>(_self.buyer!, (value) {
    return _then(_self.copyWith(buyer: value));
  });
}/// Create a copy of TransactionHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionUserEntityCopyWith<$Res>? get seller {
    if (_self.seller == null) {
    return null;
  }

  return $TransactionUserEntityCopyWith<$Res>(_self.seller!, (value) {
    return _then(_self.copyWith(seller: value));
  });
}
}


/// Adds pattern-matching-related methods to [TransactionHistoryEntity].
extension TransactionHistoryEntityPatterns on TransactionHistoryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionHistoryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionHistoryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionHistoryEntity value)  $default,){
final _that = this;
switch (_that) {
case _TransactionHistoryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionHistoryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionHistoryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int transactionId,  int ticketId,  String ticketTitle,  String? ticketThumbnailUrl,  DateTime eventDateTime,  String venueName,  String seatInfo,  int quantity,  int unitPrice,  int totalAmount,  String statusCode,  String statusName,  TransactionUserEntity? buyer,  TransactionUserEntity? seller,  int? roomId,  DateTime createdAt,  DateTime? paidAt,  DateTime? confirmedAt,  DateTime? cancelledAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionHistoryEntity() when $default != null:
return $default(_that.transactionId,_that.ticketId,_that.ticketTitle,_that.ticketThumbnailUrl,_that.eventDateTime,_that.venueName,_that.seatInfo,_that.quantity,_that.unitPrice,_that.totalAmount,_that.statusCode,_that.statusName,_that.buyer,_that.seller,_that.roomId,_that.createdAt,_that.paidAt,_that.confirmedAt,_that.cancelledAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int transactionId,  int ticketId,  String ticketTitle,  String? ticketThumbnailUrl,  DateTime eventDateTime,  String venueName,  String seatInfo,  int quantity,  int unitPrice,  int totalAmount,  String statusCode,  String statusName,  TransactionUserEntity? buyer,  TransactionUserEntity? seller,  int? roomId,  DateTime createdAt,  DateTime? paidAt,  DateTime? confirmedAt,  DateTime? cancelledAt)  $default,) {final _that = this;
switch (_that) {
case _TransactionHistoryEntity():
return $default(_that.transactionId,_that.ticketId,_that.ticketTitle,_that.ticketThumbnailUrl,_that.eventDateTime,_that.venueName,_that.seatInfo,_that.quantity,_that.unitPrice,_that.totalAmount,_that.statusCode,_that.statusName,_that.buyer,_that.seller,_that.roomId,_that.createdAt,_that.paidAt,_that.confirmedAt,_that.cancelledAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int transactionId,  int ticketId,  String ticketTitle,  String? ticketThumbnailUrl,  DateTime eventDateTime,  String venueName,  String seatInfo,  int quantity,  int unitPrice,  int totalAmount,  String statusCode,  String statusName,  TransactionUserEntity? buyer,  TransactionUserEntity? seller,  int? roomId,  DateTime createdAt,  DateTime? paidAt,  DateTime? confirmedAt,  DateTime? cancelledAt)?  $default,) {final _that = this;
switch (_that) {
case _TransactionHistoryEntity() when $default != null:
return $default(_that.transactionId,_that.ticketId,_that.ticketTitle,_that.ticketThumbnailUrl,_that.eventDateTime,_that.venueName,_that.seatInfo,_that.quantity,_that.unitPrice,_that.totalAmount,_that.statusCode,_that.statusName,_that.buyer,_that.seller,_that.roomId,_that.createdAt,_that.paidAt,_that.confirmedAt,_that.cancelledAt);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionHistoryEntity implements TransactionHistoryEntity {
  const _TransactionHistoryEntity({required this.transactionId, required this.ticketId, required this.ticketTitle, this.ticketThumbnailUrl, required this.eventDateTime, required this.venueName, required this.seatInfo, required this.quantity, required this.unitPrice, required this.totalAmount, required this.statusCode, required this.statusName, this.buyer, this.seller, this.roomId, required this.createdAt, this.paidAt, this.confirmedAt, this.cancelledAt});
  

@override final  int transactionId;
@override final  int ticketId;
@override final  String ticketTitle;
@override final  String? ticketThumbnailUrl;
@override final  DateTime eventDateTime;
@override final  String venueName;
@override final  String seatInfo;
@override final  int quantity;
@override final  int unitPrice;
@override final  int totalAmount;
@override final  String statusCode;
@override final  String statusName;
@override final  TransactionUserEntity? buyer;
@override final  TransactionUserEntity? seller;
@override final  int? roomId;
@override final  DateTime createdAt;
@override final  DateTime? paidAt;
@override final  DateTime? confirmedAt;
@override final  DateTime? cancelledAt;

/// Create a copy of TransactionHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionHistoryEntityCopyWith<_TransactionHistoryEntity> get copyWith => __$TransactionHistoryEntityCopyWithImpl<_TransactionHistoryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionHistoryEntity&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.ticketTitle, ticketTitle) || other.ticketTitle == ticketTitle)&&(identical(other.ticketThumbnailUrl, ticketThumbnailUrl) || other.ticketThumbnailUrl == ticketThumbnailUrl)&&(identical(other.eventDateTime, eventDateTime) || other.eventDateTime == eventDateTime)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.buyer, buyer) || other.buyer == buyer)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.confirmedAt, confirmedAt) || other.confirmedAt == confirmedAt)&&(identical(other.cancelledAt, cancelledAt) || other.cancelledAt == cancelledAt));
}


@override
int get hashCode => Object.hashAll([runtimeType,transactionId,ticketId,ticketTitle,ticketThumbnailUrl,eventDateTime,venueName,seatInfo,quantity,unitPrice,totalAmount,statusCode,statusName,buyer,seller,roomId,createdAt,paidAt,confirmedAt,cancelledAt]);

@override
String toString() {
  return 'TransactionHistoryEntity(transactionId: $transactionId, ticketId: $ticketId, ticketTitle: $ticketTitle, ticketThumbnailUrl: $ticketThumbnailUrl, eventDateTime: $eventDateTime, venueName: $venueName, seatInfo: $seatInfo, quantity: $quantity, unitPrice: $unitPrice, totalAmount: $totalAmount, statusCode: $statusCode, statusName: $statusName, buyer: $buyer, seller: $seller, roomId: $roomId, createdAt: $createdAt, paidAt: $paidAt, confirmedAt: $confirmedAt, cancelledAt: $cancelledAt)';
}


}

/// @nodoc
abstract mixin class _$TransactionHistoryEntityCopyWith<$Res> implements $TransactionHistoryEntityCopyWith<$Res> {
  factory _$TransactionHistoryEntityCopyWith(_TransactionHistoryEntity value, $Res Function(_TransactionHistoryEntity) _then) = __$TransactionHistoryEntityCopyWithImpl;
@override @useResult
$Res call({
 int transactionId, int ticketId, String ticketTitle, String? ticketThumbnailUrl, DateTime eventDateTime, String venueName, String seatInfo, int quantity, int unitPrice, int totalAmount, String statusCode, String statusName, TransactionUserEntity? buyer, TransactionUserEntity? seller, int? roomId, DateTime createdAt, DateTime? paidAt, DateTime? confirmedAt, DateTime? cancelledAt
});


@override $TransactionUserEntityCopyWith<$Res>? get buyer;@override $TransactionUserEntityCopyWith<$Res>? get seller;

}
/// @nodoc
class __$TransactionHistoryEntityCopyWithImpl<$Res>
    implements _$TransactionHistoryEntityCopyWith<$Res> {
  __$TransactionHistoryEntityCopyWithImpl(this._self, this._then);

  final _TransactionHistoryEntity _self;
  final $Res Function(_TransactionHistoryEntity) _then;

/// Create a copy of TransactionHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? ticketId = null,Object? ticketTitle = null,Object? ticketThumbnailUrl = freezed,Object? eventDateTime = null,Object? venueName = null,Object? seatInfo = null,Object? quantity = null,Object? unitPrice = null,Object? totalAmount = null,Object? statusCode = null,Object? statusName = null,Object? buyer = freezed,Object? seller = freezed,Object? roomId = freezed,Object? createdAt = null,Object? paidAt = freezed,Object? confirmedAt = freezed,Object? cancelledAt = freezed,}) {
  return _then(_TransactionHistoryEntity(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,ticketTitle: null == ticketTitle ? _self.ticketTitle : ticketTitle // ignore: cast_nullable_to_non_nullable
as String,ticketThumbnailUrl: freezed == ticketThumbnailUrl ? _self.ticketThumbnailUrl : ticketThumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,eventDateTime: null == eventDateTime ? _self.eventDateTime : eventDateTime // ignore: cast_nullable_to_non_nullable
as DateTime,venueName: null == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String,seatInfo: null == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as int,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,buyer: freezed == buyer ? _self.buyer : buyer // ignore: cast_nullable_to_non_nullable
as TransactionUserEntity?,seller: freezed == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as TransactionUserEntity?,roomId: freezed == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,confirmedAt: freezed == confirmedAt ? _self.confirmedAt : confirmedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,cancelledAt: freezed == cancelledAt ? _self.cancelledAt : cancelledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of TransactionHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionUserEntityCopyWith<$Res>? get buyer {
    if (_self.buyer == null) {
    return null;
  }

  return $TransactionUserEntityCopyWith<$Res>(_self.buyer!, (value) {
    return _then(_self.copyWith(buyer: value));
  });
}/// Create a copy of TransactionHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionUserEntityCopyWith<$Res>? get seller {
    if (_self.seller == null) {
    return null;
  }

  return $TransactionUserEntityCopyWith<$Res>(_self.seller!, (value) {
    return _then(_self.copyWith(seller: value));
  });
}
}

/// @nodoc
mixin _$TransactionUserEntity {

 int get userId; String? get nickname; String? get profileImageUrl;
/// Create a copy of TransactionUserEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionUserEntityCopyWith<TransactionUserEntity> get copyWith => _$TransactionUserEntityCopyWithImpl<TransactionUserEntity>(this as TransactionUserEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionUserEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,userId,nickname,profileImageUrl);

@override
String toString() {
  return 'TransactionUserEntity(userId: $userId, nickname: $nickname, profileImageUrl: $profileImageUrl)';
}


}

/// @nodoc
abstract mixin class $TransactionUserEntityCopyWith<$Res>  {
  factory $TransactionUserEntityCopyWith(TransactionUserEntity value, $Res Function(TransactionUserEntity) _then) = _$TransactionUserEntityCopyWithImpl;
@useResult
$Res call({
 int userId, String? nickname, String? profileImageUrl
});




}
/// @nodoc
class _$TransactionUserEntityCopyWithImpl<$Res>
    implements $TransactionUserEntityCopyWith<$Res> {
  _$TransactionUserEntityCopyWithImpl(this._self, this._then);

  final TransactionUserEntity _self;
  final $Res Function(TransactionUserEntity) _then;

/// Create a copy of TransactionUserEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? nickname = freezed,Object? profileImageUrl = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionUserEntity].
extension TransactionUserEntityPatterns on TransactionUserEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionUserEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionUserEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionUserEntity value)  $default,){
final _that = this;
switch (_that) {
case _TransactionUserEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionUserEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionUserEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userId,  String? nickname,  String? profileImageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionUserEntity() when $default != null:
return $default(_that.userId,_that.nickname,_that.profileImageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userId,  String? nickname,  String? profileImageUrl)  $default,) {final _that = this;
switch (_that) {
case _TransactionUserEntity():
return $default(_that.userId,_that.nickname,_that.profileImageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userId,  String? nickname,  String? profileImageUrl)?  $default,) {final _that = this;
switch (_that) {
case _TransactionUserEntity() when $default != null:
return $default(_that.userId,_that.nickname,_that.profileImageUrl);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionUserEntity implements TransactionUserEntity {
  const _TransactionUserEntity({required this.userId, this.nickname, this.profileImageUrl});
  

@override final  int userId;
@override final  String? nickname;
@override final  String? profileImageUrl;

/// Create a copy of TransactionUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionUserEntityCopyWith<_TransactionUserEntity> get copyWith => __$TransactionUserEntityCopyWithImpl<_TransactionUserEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionUserEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,userId,nickname,profileImageUrl);

@override
String toString() {
  return 'TransactionUserEntity(userId: $userId, nickname: $nickname, profileImageUrl: $profileImageUrl)';
}


}

/// @nodoc
abstract mixin class _$TransactionUserEntityCopyWith<$Res> implements $TransactionUserEntityCopyWith<$Res> {
  factory _$TransactionUserEntityCopyWith(_TransactionUserEntity value, $Res Function(_TransactionUserEntity) _then) = __$TransactionUserEntityCopyWithImpl;
@override @useResult
$Res call({
 int userId, String? nickname, String? profileImageUrl
});




}
/// @nodoc
class __$TransactionUserEntityCopyWithImpl<$Res>
    implements _$TransactionUserEntityCopyWith<$Res> {
  __$TransactionUserEntityCopyWithImpl(this._self, this._then);

  final _TransactionUserEntity _self;
  final $Res Function(_TransactionUserEntity) _then;

/// Create a copy of TransactionUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? nickname = freezed,Object? profileImageUrl = freezed,}) {
  return _then(_TransactionUserEntity(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
