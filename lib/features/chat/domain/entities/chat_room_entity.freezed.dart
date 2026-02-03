// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_room_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatRoomEntity {

 int get roomId; TicketInfoEntity get ticket; UserProfileEntity get buyer; UserProfileEntity get seller; String get statusCode; String get statusName; TransactionEntity? get transaction; bool get canSendMessage; bool get canRequestPayment; bool get canConfirmPurchase; bool get canCancelTransaction; List<MessageEntity> get messages;
/// Create a copy of ChatRoomEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatRoomEntityCopyWith<ChatRoomEntity> get copyWith => _$ChatRoomEntityCopyWithImpl<ChatRoomEntity>(this as ChatRoomEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatRoomEntity&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.ticket, ticket) || other.ticket == ticket)&&(identical(other.buyer, buyer) || other.buyer == buyer)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.transaction, transaction) || other.transaction == transaction)&&(identical(other.canSendMessage, canSendMessage) || other.canSendMessage == canSendMessage)&&(identical(other.canRequestPayment, canRequestPayment) || other.canRequestPayment == canRequestPayment)&&(identical(other.canConfirmPurchase, canConfirmPurchase) || other.canConfirmPurchase == canConfirmPurchase)&&(identical(other.canCancelTransaction, canCancelTransaction) || other.canCancelTransaction == canCancelTransaction)&&const DeepCollectionEquality().equals(other.messages, messages));
}


@override
int get hashCode => Object.hash(runtimeType,roomId,ticket,buyer,seller,statusCode,statusName,transaction,canSendMessage,canRequestPayment,canConfirmPurchase,canCancelTransaction,const DeepCollectionEquality().hash(messages));

@override
String toString() {
  return 'ChatRoomEntity(roomId: $roomId, ticket: $ticket, buyer: $buyer, seller: $seller, statusCode: $statusCode, statusName: $statusName, transaction: $transaction, canSendMessage: $canSendMessage, canRequestPayment: $canRequestPayment, canConfirmPurchase: $canConfirmPurchase, canCancelTransaction: $canCancelTransaction, messages: $messages)';
}


}

/// @nodoc
abstract mixin class $ChatRoomEntityCopyWith<$Res>  {
  factory $ChatRoomEntityCopyWith(ChatRoomEntity value, $Res Function(ChatRoomEntity) _then) = _$ChatRoomEntityCopyWithImpl;
@useResult
$Res call({
 int roomId, TicketInfoEntity ticket, UserProfileEntity buyer, UserProfileEntity seller, String statusCode, String statusName, TransactionEntity? transaction, bool canSendMessage, bool canRequestPayment, bool canConfirmPurchase, bool canCancelTransaction, List<MessageEntity> messages
});


$TicketInfoEntityCopyWith<$Res> get ticket;$UserProfileEntityCopyWith<$Res> get buyer;$UserProfileEntityCopyWith<$Res> get seller;$TransactionEntityCopyWith<$Res>? get transaction;

}
/// @nodoc
class _$ChatRoomEntityCopyWithImpl<$Res>
    implements $ChatRoomEntityCopyWith<$Res> {
  _$ChatRoomEntityCopyWithImpl(this._self, this._then);

  final ChatRoomEntity _self;
  final $Res Function(ChatRoomEntity) _then;

/// Create a copy of ChatRoomEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roomId = null,Object? ticket = null,Object? buyer = null,Object? seller = null,Object? statusCode = null,Object? statusName = null,Object? transaction = freezed,Object? canSendMessage = null,Object? canRequestPayment = null,Object? canConfirmPurchase = null,Object? canCancelTransaction = null,Object? messages = null,}) {
  return _then(_self.copyWith(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,ticket: null == ticket ? _self.ticket : ticket // ignore: cast_nullable_to_non_nullable
as TicketInfoEntity,buyer: null == buyer ? _self.buyer : buyer // ignore: cast_nullable_to_non_nullable
as UserProfileEntity,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as UserProfileEntity,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,transaction: freezed == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as TransactionEntity?,canSendMessage: null == canSendMessage ? _self.canSendMessage : canSendMessage // ignore: cast_nullable_to_non_nullable
as bool,canRequestPayment: null == canRequestPayment ? _self.canRequestPayment : canRequestPayment // ignore: cast_nullable_to_non_nullable
as bool,canConfirmPurchase: null == canConfirmPurchase ? _self.canConfirmPurchase : canConfirmPurchase // ignore: cast_nullable_to_non_nullable
as bool,canCancelTransaction: null == canCancelTransaction ? _self.canCancelTransaction : canCancelTransaction // ignore: cast_nullable_to_non_nullable
as bool,messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<MessageEntity>,
  ));
}
/// Create a copy of ChatRoomEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketInfoEntityCopyWith<$Res> get ticket {
  
  return $TicketInfoEntityCopyWith<$Res>(_self.ticket, (value) {
    return _then(_self.copyWith(ticket: value));
  });
}/// Create a copy of ChatRoomEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileEntityCopyWith<$Res> get buyer {
  
  return $UserProfileEntityCopyWith<$Res>(_self.buyer, (value) {
    return _then(_self.copyWith(buyer: value));
  });
}/// Create a copy of ChatRoomEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileEntityCopyWith<$Res> get seller {
  
  return $UserProfileEntityCopyWith<$Res>(_self.seller, (value) {
    return _then(_self.copyWith(seller: value));
  });
}/// Create a copy of ChatRoomEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionEntityCopyWith<$Res>? get transaction {
    if (_self.transaction == null) {
    return null;
  }

  return $TransactionEntityCopyWith<$Res>(_self.transaction!, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatRoomEntity].
extension ChatRoomEntityPatterns on ChatRoomEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatRoomEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatRoomEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatRoomEntity value)  $default,){
final _that = this;
switch (_that) {
case _ChatRoomEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatRoomEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ChatRoomEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int roomId,  TicketInfoEntity ticket,  UserProfileEntity buyer,  UserProfileEntity seller,  String statusCode,  String statusName,  TransactionEntity? transaction,  bool canSendMessage,  bool canRequestPayment,  bool canConfirmPurchase,  bool canCancelTransaction,  List<MessageEntity> messages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatRoomEntity() when $default != null:
return $default(_that.roomId,_that.ticket,_that.buyer,_that.seller,_that.statusCode,_that.statusName,_that.transaction,_that.canSendMessage,_that.canRequestPayment,_that.canConfirmPurchase,_that.canCancelTransaction,_that.messages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int roomId,  TicketInfoEntity ticket,  UserProfileEntity buyer,  UserProfileEntity seller,  String statusCode,  String statusName,  TransactionEntity? transaction,  bool canSendMessage,  bool canRequestPayment,  bool canConfirmPurchase,  bool canCancelTransaction,  List<MessageEntity> messages)  $default,) {final _that = this;
switch (_that) {
case _ChatRoomEntity():
return $default(_that.roomId,_that.ticket,_that.buyer,_that.seller,_that.statusCode,_that.statusName,_that.transaction,_that.canSendMessage,_that.canRequestPayment,_that.canConfirmPurchase,_that.canCancelTransaction,_that.messages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int roomId,  TicketInfoEntity ticket,  UserProfileEntity buyer,  UserProfileEntity seller,  String statusCode,  String statusName,  TransactionEntity? transaction,  bool canSendMessage,  bool canRequestPayment,  bool canConfirmPurchase,  bool canCancelTransaction,  List<MessageEntity> messages)?  $default,) {final _that = this;
switch (_that) {
case _ChatRoomEntity() when $default != null:
return $default(_that.roomId,_that.ticket,_that.buyer,_that.seller,_that.statusCode,_that.statusName,_that.transaction,_that.canSendMessage,_that.canRequestPayment,_that.canConfirmPurchase,_that.canCancelTransaction,_that.messages);case _:
  return null;

}
}

}

/// @nodoc


class _ChatRoomEntity implements ChatRoomEntity {
  const _ChatRoomEntity({required this.roomId, required this.ticket, required this.buyer, required this.seller, required this.statusCode, required this.statusName, this.transaction, required this.canSendMessage, required this.canRequestPayment, required this.canConfirmPurchase, required this.canCancelTransaction, required final  List<MessageEntity> messages}): _messages = messages;
  

@override final  int roomId;
@override final  TicketInfoEntity ticket;
@override final  UserProfileEntity buyer;
@override final  UserProfileEntity seller;
@override final  String statusCode;
@override final  String statusName;
@override final  TransactionEntity? transaction;
@override final  bool canSendMessage;
@override final  bool canRequestPayment;
@override final  bool canConfirmPurchase;
@override final  bool canCancelTransaction;
 final  List<MessageEntity> _messages;
@override List<MessageEntity> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}


/// Create a copy of ChatRoomEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatRoomEntityCopyWith<_ChatRoomEntity> get copyWith => __$ChatRoomEntityCopyWithImpl<_ChatRoomEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatRoomEntity&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.ticket, ticket) || other.ticket == ticket)&&(identical(other.buyer, buyer) || other.buyer == buyer)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.transaction, transaction) || other.transaction == transaction)&&(identical(other.canSendMessage, canSendMessage) || other.canSendMessage == canSendMessage)&&(identical(other.canRequestPayment, canRequestPayment) || other.canRequestPayment == canRequestPayment)&&(identical(other.canConfirmPurchase, canConfirmPurchase) || other.canConfirmPurchase == canConfirmPurchase)&&(identical(other.canCancelTransaction, canCancelTransaction) || other.canCancelTransaction == canCancelTransaction)&&const DeepCollectionEquality().equals(other._messages, _messages));
}


@override
int get hashCode => Object.hash(runtimeType,roomId,ticket,buyer,seller,statusCode,statusName,transaction,canSendMessage,canRequestPayment,canConfirmPurchase,canCancelTransaction,const DeepCollectionEquality().hash(_messages));

@override
String toString() {
  return 'ChatRoomEntity(roomId: $roomId, ticket: $ticket, buyer: $buyer, seller: $seller, statusCode: $statusCode, statusName: $statusName, transaction: $transaction, canSendMessage: $canSendMessage, canRequestPayment: $canRequestPayment, canConfirmPurchase: $canConfirmPurchase, canCancelTransaction: $canCancelTransaction, messages: $messages)';
}


}

/// @nodoc
abstract mixin class _$ChatRoomEntityCopyWith<$Res> implements $ChatRoomEntityCopyWith<$Res> {
  factory _$ChatRoomEntityCopyWith(_ChatRoomEntity value, $Res Function(_ChatRoomEntity) _then) = __$ChatRoomEntityCopyWithImpl;
@override @useResult
$Res call({
 int roomId, TicketInfoEntity ticket, UserProfileEntity buyer, UserProfileEntity seller, String statusCode, String statusName, TransactionEntity? transaction, bool canSendMessage, bool canRequestPayment, bool canConfirmPurchase, bool canCancelTransaction, List<MessageEntity> messages
});


@override $TicketInfoEntityCopyWith<$Res> get ticket;@override $UserProfileEntityCopyWith<$Res> get buyer;@override $UserProfileEntityCopyWith<$Res> get seller;@override $TransactionEntityCopyWith<$Res>? get transaction;

}
/// @nodoc
class __$ChatRoomEntityCopyWithImpl<$Res>
    implements _$ChatRoomEntityCopyWith<$Res> {
  __$ChatRoomEntityCopyWithImpl(this._self, this._then);

  final _ChatRoomEntity _self;
  final $Res Function(_ChatRoomEntity) _then;

/// Create a copy of ChatRoomEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roomId = null,Object? ticket = null,Object? buyer = null,Object? seller = null,Object? statusCode = null,Object? statusName = null,Object? transaction = freezed,Object? canSendMessage = null,Object? canRequestPayment = null,Object? canConfirmPurchase = null,Object? canCancelTransaction = null,Object? messages = null,}) {
  return _then(_ChatRoomEntity(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,ticket: null == ticket ? _self.ticket : ticket // ignore: cast_nullable_to_non_nullable
as TicketInfoEntity,buyer: null == buyer ? _self.buyer : buyer // ignore: cast_nullable_to_non_nullable
as UserProfileEntity,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as UserProfileEntity,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,transaction: freezed == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as TransactionEntity?,canSendMessage: null == canSendMessage ? _self.canSendMessage : canSendMessage // ignore: cast_nullable_to_non_nullable
as bool,canRequestPayment: null == canRequestPayment ? _self.canRequestPayment : canRequestPayment // ignore: cast_nullable_to_non_nullable
as bool,canConfirmPurchase: null == canConfirmPurchase ? _self.canConfirmPurchase : canConfirmPurchase // ignore: cast_nullable_to_non_nullable
as bool,canCancelTransaction: null == canCancelTransaction ? _self.canCancelTransaction : canCancelTransaction // ignore: cast_nullable_to_non_nullable
as bool,messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<MessageEntity>,
  ));
}

/// Create a copy of ChatRoomEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketInfoEntityCopyWith<$Res> get ticket {
  
  return $TicketInfoEntityCopyWith<$Res>(_self.ticket, (value) {
    return _then(_self.copyWith(ticket: value));
  });
}/// Create a copy of ChatRoomEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileEntityCopyWith<$Res> get buyer {
  
  return $UserProfileEntityCopyWith<$Res>(_self.buyer, (value) {
    return _then(_self.copyWith(buyer: value));
  });
}/// Create a copy of ChatRoomEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileEntityCopyWith<$Res> get seller {
  
  return $UserProfileEntityCopyWith<$Res>(_self.seller, (value) {
    return _then(_self.copyWith(seller: value));
  });
}/// Create a copy of ChatRoomEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionEntityCopyWith<$Res>? get transaction {
    if (_self.transaction == null) {
    return null;
  }

  return $TransactionEntityCopyWith<$Res>(_self.transaction!, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}
}

/// @nodoc
mixin _$TicketInfoEntity {

 int get ticketId; String get title; int get price; String? get thumbnailUrl; String? get seatInfo; DateTime? get eventDateTime; String? get venueName; int? get totalQuantity; int? get remainingQuantity;
/// Create a copy of TicketInfoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketInfoEntityCopyWith<TicketInfoEntity> get copyWith => _$TicketInfoEntityCopyWithImpl<TicketInfoEntity>(this as TicketInfoEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketInfoEntity&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.eventDateTime, eventDateTime) || other.eventDateTime == eventDateTime)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.totalQuantity, totalQuantity) || other.totalQuantity == totalQuantity)&&(identical(other.remainingQuantity, remainingQuantity) || other.remainingQuantity == remainingQuantity));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId,title,price,thumbnailUrl,seatInfo,eventDateTime,venueName,totalQuantity,remainingQuantity);

@override
String toString() {
  return 'TicketInfoEntity(ticketId: $ticketId, title: $title, price: $price, thumbnailUrl: $thumbnailUrl, seatInfo: $seatInfo, eventDateTime: $eventDateTime, venueName: $venueName, totalQuantity: $totalQuantity, remainingQuantity: $remainingQuantity)';
}


}

/// @nodoc
abstract mixin class $TicketInfoEntityCopyWith<$Res>  {
  factory $TicketInfoEntityCopyWith(TicketInfoEntity value, $Res Function(TicketInfoEntity) _then) = _$TicketInfoEntityCopyWithImpl;
@useResult
$Res call({
 int ticketId, String title, int price, String? thumbnailUrl, String? seatInfo, DateTime? eventDateTime, String? venueName, int? totalQuantity, int? remainingQuantity
});




}
/// @nodoc
class _$TicketInfoEntityCopyWithImpl<$Res>
    implements $TicketInfoEntityCopyWith<$Res> {
  _$TicketInfoEntityCopyWithImpl(this._self, this._then);

  final TicketInfoEntity _self;
  final $Res Function(TicketInfoEntity) _then;

/// Create a copy of TicketInfoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,Object? title = null,Object? price = null,Object? thumbnailUrl = freezed,Object? seatInfo = freezed,Object? eventDateTime = freezed,Object? venueName = freezed,Object? totalQuantity = freezed,Object? remainingQuantity = freezed,}) {
  return _then(_self.copyWith(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,seatInfo: freezed == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String?,eventDateTime: freezed == eventDateTime ? _self.eventDateTime : eventDateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,venueName: freezed == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String?,totalQuantity: freezed == totalQuantity ? _self.totalQuantity : totalQuantity // ignore: cast_nullable_to_non_nullable
as int?,remainingQuantity: freezed == remainingQuantity ? _self.remainingQuantity : remainingQuantity // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketInfoEntity].
extension TicketInfoEntityPatterns on TicketInfoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketInfoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketInfoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketInfoEntity value)  $default,){
final _that = this;
switch (_that) {
case _TicketInfoEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketInfoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TicketInfoEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int ticketId,  String title,  int price,  String? thumbnailUrl,  String? seatInfo,  DateTime? eventDateTime,  String? venueName,  int? totalQuantity,  int? remainingQuantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketInfoEntity() when $default != null:
return $default(_that.ticketId,_that.title,_that.price,_that.thumbnailUrl,_that.seatInfo,_that.eventDateTime,_that.venueName,_that.totalQuantity,_that.remainingQuantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int ticketId,  String title,  int price,  String? thumbnailUrl,  String? seatInfo,  DateTime? eventDateTime,  String? venueName,  int? totalQuantity,  int? remainingQuantity)  $default,) {final _that = this;
switch (_that) {
case _TicketInfoEntity():
return $default(_that.ticketId,_that.title,_that.price,_that.thumbnailUrl,_that.seatInfo,_that.eventDateTime,_that.venueName,_that.totalQuantity,_that.remainingQuantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int ticketId,  String title,  int price,  String? thumbnailUrl,  String? seatInfo,  DateTime? eventDateTime,  String? venueName,  int? totalQuantity,  int? remainingQuantity)?  $default,) {final _that = this;
switch (_that) {
case _TicketInfoEntity() when $default != null:
return $default(_that.ticketId,_that.title,_that.price,_that.thumbnailUrl,_that.seatInfo,_that.eventDateTime,_that.venueName,_that.totalQuantity,_that.remainingQuantity);case _:
  return null;

}
}

}

/// @nodoc


class _TicketInfoEntity implements TicketInfoEntity {
  const _TicketInfoEntity({required this.ticketId, required this.title, required this.price, this.thumbnailUrl, this.seatInfo, this.eventDateTime, this.venueName, this.totalQuantity, this.remainingQuantity});
  

@override final  int ticketId;
@override final  String title;
@override final  int price;
@override final  String? thumbnailUrl;
@override final  String? seatInfo;
@override final  DateTime? eventDateTime;
@override final  String? venueName;
@override final  int? totalQuantity;
@override final  int? remainingQuantity;

/// Create a copy of TicketInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketInfoEntityCopyWith<_TicketInfoEntity> get copyWith => __$TicketInfoEntityCopyWithImpl<_TicketInfoEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketInfoEntity&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.eventDateTime, eventDateTime) || other.eventDateTime == eventDateTime)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.totalQuantity, totalQuantity) || other.totalQuantity == totalQuantity)&&(identical(other.remainingQuantity, remainingQuantity) || other.remainingQuantity == remainingQuantity));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId,title,price,thumbnailUrl,seatInfo,eventDateTime,venueName,totalQuantity,remainingQuantity);

@override
String toString() {
  return 'TicketInfoEntity(ticketId: $ticketId, title: $title, price: $price, thumbnailUrl: $thumbnailUrl, seatInfo: $seatInfo, eventDateTime: $eventDateTime, venueName: $venueName, totalQuantity: $totalQuantity, remainingQuantity: $remainingQuantity)';
}


}

/// @nodoc
abstract mixin class _$TicketInfoEntityCopyWith<$Res> implements $TicketInfoEntityCopyWith<$Res> {
  factory _$TicketInfoEntityCopyWith(_TicketInfoEntity value, $Res Function(_TicketInfoEntity) _then) = __$TicketInfoEntityCopyWithImpl;
@override @useResult
$Res call({
 int ticketId, String title, int price, String? thumbnailUrl, String? seatInfo, DateTime? eventDateTime, String? venueName, int? totalQuantity, int? remainingQuantity
});




}
/// @nodoc
class __$TicketInfoEntityCopyWithImpl<$Res>
    implements _$TicketInfoEntityCopyWith<$Res> {
  __$TicketInfoEntityCopyWithImpl(this._self, this._then);

  final _TicketInfoEntity _self;
  final $Res Function(_TicketInfoEntity) _then;

/// Create a copy of TicketInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,Object? title = null,Object? price = null,Object? thumbnailUrl = freezed,Object? seatInfo = freezed,Object? eventDateTime = freezed,Object? venueName = freezed,Object? totalQuantity = freezed,Object? remainingQuantity = freezed,}) {
  return _then(_TicketInfoEntity(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,seatInfo: freezed == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String?,eventDateTime: freezed == eventDateTime ? _self.eventDateTime : eventDateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,venueName: freezed == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String?,totalQuantity: freezed == totalQuantity ? _self.totalQuantity : totalQuantity // ignore: cast_nullable_to_non_nullable
as int?,remainingQuantity: freezed == remainingQuantity ? _self.remainingQuantity : remainingQuantity // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$ChatRoomListItemEntity {

 int get roomId; int get ticketId; String get ticketTitle; String? get ticketThumbnailUrl; OtherUserEntity get otherUser; String? get lastMessage; DateTime? get lastMessageAt; int get unreadCount; String get roomStatusCode; String get roomStatusName; int? get transactionId; String? get transactionStatusCode; String? get transactionStatusName;
/// Create a copy of ChatRoomListItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatRoomListItemEntityCopyWith<ChatRoomListItemEntity> get copyWith => _$ChatRoomListItemEntityCopyWithImpl<ChatRoomListItemEntity>(this as ChatRoomListItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatRoomListItemEntity&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.ticketTitle, ticketTitle) || other.ticketTitle == ticketTitle)&&(identical(other.ticketThumbnailUrl, ticketThumbnailUrl) || other.ticketThumbnailUrl == ticketThumbnailUrl)&&(identical(other.otherUser, otherUser) || other.otherUser == otherUser)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage)&&(identical(other.lastMessageAt, lastMessageAt) || other.lastMessageAt == lastMessageAt)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.roomStatusCode, roomStatusCode) || other.roomStatusCode == roomStatusCode)&&(identical(other.roomStatusName, roomStatusName) || other.roomStatusName == roomStatusName)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.transactionStatusCode, transactionStatusCode) || other.transactionStatusCode == transactionStatusCode)&&(identical(other.transactionStatusName, transactionStatusName) || other.transactionStatusName == transactionStatusName));
}


@override
int get hashCode => Object.hash(runtimeType,roomId,ticketId,ticketTitle,ticketThumbnailUrl,otherUser,lastMessage,lastMessageAt,unreadCount,roomStatusCode,roomStatusName,transactionId,transactionStatusCode,transactionStatusName);

@override
String toString() {
  return 'ChatRoomListItemEntity(roomId: $roomId, ticketId: $ticketId, ticketTitle: $ticketTitle, ticketThumbnailUrl: $ticketThumbnailUrl, otherUser: $otherUser, lastMessage: $lastMessage, lastMessageAt: $lastMessageAt, unreadCount: $unreadCount, roomStatusCode: $roomStatusCode, roomStatusName: $roomStatusName, transactionId: $transactionId, transactionStatusCode: $transactionStatusCode, transactionStatusName: $transactionStatusName)';
}


}

/// @nodoc
abstract mixin class $ChatRoomListItemEntityCopyWith<$Res>  {
  factory $ChatRoomListItemEntityCopyWith(ChatRoomListItemEntity value, $Res Function(ChatRoomListItemEntity) _then) = _$ChatRoomListItemEntityCopyWithImpl;
@useResult
$Res call({
 int roomId, int ticketId, String ticketTitle, String? ticketThumbnailUrl, OtherUserEntity otherUser, String? lastMessage, DateTime? lastMessageAt, int unreadCount, String roomStatusCode, String roomStatusName, int? transactionId, String? transactionStatusCode, String? transactionStatusName
});


$OtherUserEntityCopyWith<$Res> get otherUser;

}
/// @nodoc
class _$ChatRoomListItemEntityCopyWithImpl<$Res>
    implements $ChatRoomListItemEntityCopyWith<$Res> {
  _$ChatRoomListItemEntityCopyWithImpl(this._self, this._then);

  final ChatRoomListItemEntity _self;
  final $Res Function(ChatRoomListItemEntity) _then;

/// Create a copy of ChatRoomListItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roomId = null,Object? ticketId = null,Object? ticketTitle = null,Object? ticketThumbnailUrl = freezed,Object? otherUser = null,Object? lastMessage = freezed,Object? lastMessageAt = freezed,Object? unreadCount = null,Object? roomStatusCode = null,Object? roomStatusName = null,Object? transactionId = freezed,Object? transactionStatusCode = freezed,Object? transactionStatusName = freezed,}) {
  return _then(_self.copyWith(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,ticketTitle: null == ticketTitle ? _self.ticketTitle : ticketTitle // ignore: cast_nullable_to_non_nullable
as String,ticketThumbnailUrl: freezed == ticketThumbnailUrl ? _self.ticketThumbnailUrl : ticketThumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,otherUser: null == otherUser ? _self.otherUser : otherUser // ignore: cast_nullable_to_non_nullable
as OtherUserEntity,lastMessage: freezed == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as String?,lastMessageAt: freezed == lastMessageAt ? _self.lastMessageAt : lastMessageAt // ignore: cast_nullable_to_non_nullable
as DateTime?,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,roomStatusCode: null == roomStatusCode ? _self.roomStatusCode : roomStatusCode // ignore: cast_nullable_to_non_nullable
as String,roomStatusName: null == roomStatusName ? _self.roomStatusName : roomStatusName // ignore: cast_nullable_to_non_nullable
as String,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int?,transactionStatusCode: freezed == transactionStatusCode ? _self.transactionStatusCode : transactionStatusCode // ignore: cast_nullable_to_non_nullable
as String?,transactionStatusName: freezed == transactionStatusName ? _self.transactionStatusName : transactionStatusName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ChatRoomListItemEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OtherUserEntityCopyWith<$Res> get otherUser {
  
  return $OtherUserEntityCopyWith<$Res>(_self.otherUser, (value) {
    return _then(_self.copyWith(otherUser: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatRoomListItemEntity].
extension ChatRoomListItemEntityPatterns on ChatRoomListItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatRoomListItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatRoomListItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatRoomListItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _ChatRoomListItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatRoomListItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ChatRoomListItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int roomId,  int ticketId,  String ticketTitle,  String? ticketThumbnailUrl,  OtherUserEntity otherUser,  String? lastMessage,  DateTime? lastMessageAt,  int unreadCount,  String roomStatusCode,  String roomStatusName,  int? transactionId,  String? transactionStatusCode,  String? transactionStatusName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatRoomListItemEntity() when $default != null:
return $default(_that.roomId,_that.ticketId,_that.ticketTitle,_that.ticketThumbnailUrl,_that.otherUser,_that.lastMessage,_that.lastMessageAt,_that.unreadCount,_that.roomStatusCode,_that.roomStatusName,_that.transactionId,_that.transactionStatusCode,_that.transactionStatusName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int roomId,  int ticketId,  String ticketTitle,  String? ticketThumbnailUrl,  OtherUserEntity otherUser,  String? lastMessage,  DateTime? lastMessageAt,  int unreadCount,  String roomStatusCode,  String roomStatusName,  int? transactionId,  String? transactionStatusCode,  String? transactionStatusName)  $default,) {final _that = this;
switch (_that) {
case _ChatRoomListItemEntity():
return $default(_that.roomId,_that.ticketId,_that.ticketTitle,_that.ticketThumbnailUrl,_that.otherUser,_that.lastMessage,_that.lastMessageAt,_that.unreadCount,_that.roomStatusCode,_that.roomStatusName,_that.transactionId,_that.transactionStatusCode,_that.transactionStatusName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int roomId,  int ticketId,  String ticketTitle,  String? ticketThumbnailUrl,  OtherUserEntity otherUser,  String? lastMessage,  DateTime? lastMessageAt,  int unreadCount,  String roomStatusCode,  String roomStatusName,  int? transactionId,  String? transactionStatusCode,  String? transactionStatusName)?  $default,) {final _that = this;
switch (_that) {
case _ChatRoomListItemEntity() when $default != null:
return $default(_that.roomId,_that.ticketId,_that.ticketTitle,_that.ticketThumbnailUrl,_that.otherUser,_that.lastMessage,_that.lastMessageAt,_that.unreadCount,_that.roomStatusCode,_that.roomStatusName,_that.transactionId,_that.transactionStatusCode,_that.transactionStatusName);case _:
  return null;

}
}

}

/// @nodoc


class _ChatRoomListItemEntity implements ChatRoomListItemEntity {
  const _ChatRoomListItemEntity({required this.roomId, required this.ticketId, required this.ticketTitle, this.ticketThumbnailUrl, required this.otherUser, this.lastMessage, this.lastMessageAt, required this.unreadCount, required this.roomStatusCode, required this.roomStatusName, this.transactionId, this.transactionStatusCode, this.transactionStatusName});
  

@override final  int roomId;
@override final  int ticketId;
@override final  String ticketTitle;
@override final  String? ticketThumbnailUrl;
@override final  OtherUserEntity otherUser;
@override final  String? lastMessage;
@override final  DateTime? lastMessageAt;
@override final  int unreadCount;
@override final  String roomStatusCode;
@override final  String roomStatusName;
@override final  int? transactionId;
@override final  String? transactionStatusCode;
@override final  String? transactionStatusName;

/// Create a copy of ChatRoomListItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatRoomListItemEntityCopyWith<_ChatRoomListItemEntity> get copyWith => __$ChatRoomListItemEntityCopyWithImpl<_ChatRoomListItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatRoomListItemEntity&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.ticketTitle, ticketTitle) || other.ticketTitle == ticketTitle)&&(identical(other.ticketThumbnailUrl, ticketThumbnailUrl) || other.ticketThumbnailUrl == ticketThumbnailUrl)&&(identical(other.otherUser, otherUser) || other.otherUser == otherUser)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage)&&(identical(other.lastMessageAt, lastMessageAt) || other.lastMessageAt == lastMessageAt)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.roomStatusCode, roomStatusCode) || other.roomStatusCode == roomStatusCode)&&(identical(other.roomStatusName, roomStatusName) || other.roomStatusName == roomStatusName)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.transactionStatusCode, transactionStatusCode) || other.transactionStatusCode == transactionStatusCode)&&(identical(other.transactionStatusName, transactionStatusName) || other.transactionStatusName == transactionStatusName));
}


@override
int get hashCode => Object.hash(runtimeType,roomId,ticketId,ticketTitle,ticketThumbnailUrl,otherUser,lastMessage,lastMessageAt,unreadCount,roomStatusCode,roomStatusName,transactionId,transactionStatusCode,transactionStatusName);

@override
String toString() {
  return 'ChatRoomListItemEntity(roomId: $roomId, ticketId: $ticketId, ticketTitle: $ticketTitle, ticketThumbnailUrl: $ticketThumbnailUrl, otherUser: $otherUser, lastMessage: $lastMessage, lastMessageAt: $lastMessageAt, unreadCount: $unreadCount, roomStatusCode: $roomStatusCode, roomStatusName: $roomStatusName, transactionId: $transactionId, transactionStatusCode: $transactionStatusCode, transactionStatusName: $transactionStatusName)';
}


}

/// @nodoc
abstract mixin class _$ChatRoomListItemEntityCopyWith<$Res> implements $ChatRoomListItemEntityCopyWith<$Res> {
  factory _$ChatRoomListItemEntityCopyWith(_ChatRoomListItemEntity value, $Res Function(_ChatRoomListItemEntity) _then) = __$ChatRoomListItemEntityCopyWithImpl;
@override @useResult
$Res call({
 int roomId, int ticketId, String ticketTitle, String? ticketThumbnailUrl, OtherUserEntity otherUser, String? lastMessage, DateTime? lastMessageAt, int unreadCount, String roomStatusCode, String roomStatusName, int? transactionId, String? transactionStatusCode, String? transactionStatusName
});


@override $OtherUserEntityCopyWith<$Res> get otherUser;

}
/// @nodoc
class __$ChatRoomListItemEntityCopyWithImpl<$Res>
    implements _$ChatRoomListItemEntityCopyWith<$Res> {
  __$ChatRoomListItemEntityCopyWithImpl(this._self, this._then);

  final _ChatRoomListItemEntity _self;
  final $Res Function(_ChatRoomListItemEntity) _then;

/// Create a copy of ChatRoomListItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roomId = null,Object? ticketId = null,Object? ticketTitle = null,Object? ticketThumbnailUrl = freezed,Object? otherUser = null,Object? lastMessage = freezed,Object? lastMessageAt = freezed,Object? unreadCount = null,Object? roomStatusCode = null,Object? roomStatusName = null,Object? transactionId = freezed,Object? transactionStatusCode = freezed,Object? transactionStatusName = freezed,}) {
  return _then(_ChatRoomListItemEntity(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,ticketTitle: null == ticketTitle ? _self.ticketTitle : ticketTitle // ignore: cast_nullable_to_non_nullable
as String,ticketThumbnailUrl: freezed == ticketThumbnailUrl ? _self.ticketThumbnailUrl : ticketThumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,otherUser: null == otherUser ? _self.otherUser : otherUser // ignore: cast_nullable_to_non_nullable
as OtherUserEntity,lastMessage: freezed == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as String?,lastMessageAt: freezed == lastMessageAt ? _self.lastMessageAt : lastMessageAt // ignore: cast_nullable_to_non_nullable
as DateTime?,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,roomStatusCode: null == roomStatusCode ? _self.roomStatusCode : roomStatusCode // ignore: cast_nullable_to_non_nullable
as String,roomStatusName: null == roomStatusName ? _self.roomStatusName : roomStatusName // ignore: cast_nullable_to_non_nullable
as String,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int?,transactionStatusCode: freezed == transactionStatusCode ? _self.transactionStatusCode : transactionStatusCode // ignore: cast_nullable_to_non_nullable
as String?,transactionStatusName: freezed == transactionStatusName ? _self.transactionStatusName : transactionStatusName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ChatRoomListItemEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OtherUserEntityCopyWith<$Res> get otherUser {
  
  return $OtherUserEntityCopyWith<$Res>(_self.otherUser, (value) {
    return _then(_self.copyWith(otherUser: value));
  });
}
}

/// @nodoc
mixin _$OtherUserEntity {

 int get userId; String get nickname; String? get profileImageUrl;
/// Create a copy of OtherUserEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtherUserEntityCopyWith<OtherUserEntity> get copyWith => _$OtherUserEntityCopyWithImpl<OtherUserEntity>(this as OtherUserEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtherUserEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,userId,nickname,profileImageUrl);

@override
String toString() {
  return 'OtherUserEntity(userId: $userId, nickname: $nickname, profileImageUrl: $profileImageUrl)';
}


}

/// @nodoc
abstract mixin class $OtherUserEntityCopyWith<$Res>  {
  factory $OtherUserEntityCopyWith(OtherUserEntity value, $Res Function(OtherUserEntity) _then) = _$OtherUserEntityCopyWithImpl;
@useResult
$Res call({
 int userId, String nickname, String? profileImageUrl
});




}
/// @nodoc
class _$OtherUserEntityCopyWithImpl<$Res>
    implements $OtherUserEntityCopyWith<$Res> {
  _$OtherUserEntityCopyWithImpl(this._self, this._then);

  final OtherUserEntity _self;
  final $Res Function(OtherUserEntity) _then;

/// Create a copy of OtherUserEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? nickname = null,Object? profileImageUrl = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OtherUserEntity].
extension OtherUserEntityPatterns on OtherUserEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OtherUserEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OtherUserEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OtherUserEntity value)  $default,){
final _that = this;
switch (_that) {
case _OtherUserEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OtherUserEntity value)?  $default,){
final _that = this;
switch (_that) {
case _OtherUserEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userId,  String nickname,  String? profileImageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OtherUserEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userId,  String nickname,  String? profileImageUrl)  $default,) {final _that = this;
switch (_that) {
case _OtherUserEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userId,  String nickname,  String? profileImageUrl)?  $default,) {final _that = this;
switch (_that) {
case _OtherUserEntity() when $default != null:
return $default(_that.userId,_that.nickname,_that.profileImageUrl);case _:
  return null;

}
}

}

/// @nodoc


class _OtherUserEntity implements OtherUserEntity {
  const _OtherUserEntity({required this.userId, required this.nickname, this.profileImageUrl});
  

@override final  int userId;
@override final  String nickname;
@override final  String? profileImageUrl;

/// Create a copy of OtherUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtherUserEntityCopyWith<_OtherUserEntity> get copyWith => __$OtherUserEntityCopyWithImpl<_OtherUserEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtherUserEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,userId,nickname,profileImageUrl);

@override
String toString() {
  return 'OtherUserEntity(userId: $userId, nickname: $nickname, profileImageUrl: $profileImageUrl)';
}


}

/// @nodoc
abstract mixin class _$OtherUserEntityCopyWith<$Res> implements $OtherUserEntityCopyWith<$Res> {
  factory _$OtherUserEntityCopyWith(_OtherUserEntity value, $Res Function(_OtherUserEntity) _then) = __$OtherUserEntityCopyWithImpl;
@override @useResult
$Res call({
 int userId, String nickname, String? profileImageUrl
});




}
/// @nodoc
class __$OtherUserEntityCopyWithImpl<$Res>
    implements _$OtherUserEntityCopyWith<$Res> {
  __$OtherUserEntityCopyWithImpl(this._self, this._then);

  final _OtherUserEntity _self;
  final $Res Function(_OtherUserEntity) _then;

/// Create a copy of OtherUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? nickname = null,Object? profileImageUrl = freezed,}) {
  return _then(_OtherUserEntity(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
