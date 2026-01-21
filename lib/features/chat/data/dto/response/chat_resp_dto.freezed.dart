// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatRoomRespDto {

 int get roomId; TicketInfoDto get ticket; UserProfileDto get buyer; UserProfileDto get seller; String get statusCode; String get statusName; TransactionDto? get transaction; bool get canSendMessage; bool get canRequestPayment; bool get canConfirmPurchase; bool get canCancelTransaction; List<MessageDto> get messages;
/// Create a copy of ChatRoomRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatRoomRespDtoCopyWith<ChatRoomRespDto> get copyWith => _$ChatRoomRespDtoCopyWithImpl<ChatRoomRespDto>(this as ChatRoomRespDto, _$identity);

  /// Serializes this ChatRoomRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatRoomRespDto&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.ticket, ticket) || other.ticket == ticket)&&(identical(other.buyer, buyer) || other.buyer == buyer)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.transaction, transaction) || other.transaction == transaction)&&(identical(other.canSendMessage, canSendMessage) || other.canSendMessage == canSendMessage)&&(identical(other.canRequestPayment, canRequestPayment) || other.canRequestPayment == canRequestPayment)&&(identical(other.canConfirmPurchase, canConfirmPurchase) || other.canConfirmPurchase == canConfirmPurchase)&&(identical(other.canCancelTransaction, canCancelTransaction) || other.canCancelTransaction == canCancelTransaction)&&const DeepCollectionEquality().equals(other.messages, messages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,roomId,ticket,buyer,seller,statusCode,statusName,transaction,canSendMessage,canRequestPayment,canConfirmPurchase,canCancelTransaction,const DeepCollectionEquality().hash(messages));

@override
String toString() {
  return 'ChatRoomRespDto(roomId: $roomId, ticket: $ticket, buyer: $buyer, seller: $seller, statusCode: $statusCode, statusName: $statusName, transaction: $transaction, canSendMessage: $canSendMessage, canRequestPayment: $canRequestPayment, canConfirmPurchase: $canConfirmPurchase, canCancelTransaction: $canCancelTransaction, messages: $messages)';
}


}

/// @nodoc
abstract mixin class $ChatRoomRespDtoCopyWith<$Res>  {
  factory $ChatRoomRespDtoCopyWith(ChatRoomRespDto value, $Res Function(ChatRoomRespDto) _then) = _$ChatRoomRespDtoCopyWithImpl;
@useResult
$Res call({
 int roomId, TicketInfoDto ticket, UserProfileDto buyer, UserProfileDto seller, String statusCode, String statusName, TransactionDto? transaction, bool canSendMessage, bool canRequestPayment, bool canConfirmPurchase, bool canCancelTransaction, List<MessageDto> messages
});


$TicketInfoDtoCopyWith<$Res> get ticket;$UserProfileDtoCopyWith<$Res> get buyer;$UserProfileDtoCopyWith<$Res> get seller;$TransactionDtoCopyWith<$Res>? get transaction;

}
/// @nodoc
class _$ChatRoomRespDtoCopyWithImpl<$Res>
    implements $ChatRoomRespDtoCopyWith<$Res> {
  _$ChatRoomRespDtoCopyWithImpl(this._self, this._then);

  final ChatRoomRespDto _self;
  final $Res Function(ChatRoomRespDto) _then;

/// Create a copy of ChatRoomRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roomId = null,Object? ticket = null,Object? buyer = null,Object? seller = null,Object? statusCode = null,Object? statusName = null,Object? transaction = freezed,Object? canSendMessage = null,Object? canRequestPayment = null,Object? canConfirmPurchase = null,Object? canCancelTransaction = null,Object? messages = null,}) {
  return _then(_self.copyWith(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,ticket: null == ticket ? _self.ticket : ticket // ignore: cast_nullable_to_non_nullable
as TicketInfoDto,buyer: null == buyer ? _self.buyer : buyer // ignore: cast_nullable_to_non_nullable
as UserProfileDto,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as UserProfileDto,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,transaction: freezed == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as TransactionDto?,canSendMessage: null == canSendMessage ? _self.canSendMessage : canSendMessage // ignore: cast_nullable_to_non_nullable
as bool,canRequestPayment: null == canRequestPayment ? _self.canRequestPayment : canRequestPayment // ignore: cast_nullable_to_non_nullable
as bool,canConfirmPurchase: null == canConfirmPurchase ? _self.canConfirmPurchase : canConfirmPurchase // ignore: cast_nullable_to_non_nullable
as bool,canCancelTransaction: null == canCancelTransaction ? _self.canCancelTransaction : canCancelTransaction // ignore: cast_nullable_to_non_nullable
as bool,messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<MessageDto>,
  ));
}
/// Create a copy of ChatRoomRespDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketInfoDtoCopyWith<$Res> get ticket {
  
  return $TicketInfoDtoCopyWith<$Res>(_self.ticket, (value) {
    return _then(_self.copyWith(ticket: value));
  });
}/// Create a copy of ChatRoomRespDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileDtoCopyWith<$Res> get buyer {
  
  return $UserProfileDtoCopyWith<$Res>(_self.buyer, (value) {
    return _then(_self.copyWith(buyer: value));
  });
}/// Create a copy of ChatRoomRespDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileDtoCopyWith<$Res> get seller {
  
  return $UserProfileDtoCopyWith<$Res>(_self.seller, (value) {
    return _then(_self.copyWith(seller: value));
  });
}/// Create a copy of ChatRoomRespDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionDtoCopyWith<$Res>? get transaction {
    if (_self.transaction == null) {
    return null;
  }

  return $TransactionDtoCopyWith<$Res>(_self.transaction!, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatRoomRespDto].
extension ChatRoomRespDtoPatterns on ChatRoomRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatRoomRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatRoomRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatRoomRespDto value)  $default,){
final _that = this;
switch (_that) {
case _ChatRoomRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatRoomRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChatRoomRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int roomId,  TicketInfoDto ticket,  UserProfileDto buyer,  UserProfileDto seller,  String statusCode,  String statusName,  TransactionDto? transaction,  bool canSendMessage,  bool canRequestPayment,  bool canConfirmPurchase,  bool canCancelTransaction,  List<MessageDto> messages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatRoomRespDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int roomId,  TicketInfoDto ticket,  UserProfileDto buyer,  UserProfileDto seller,  String statusCode,  String statusName,  TransactionDto? transaction,  bool canSendMessage,  bool canRequestPayment,  bool canConfirmPurchase,  bool canCancelTransaction,  List<MessageDto> messages)  $default,) {final _that = this;
switch (_that) {
case _ChatRoomRespDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int roomId,  TicketInfoDto ticket,  UserProfileDto buyer,  UserProfileDto seller,  String statusCode,  String statusName,  TransactionDto? transaction,  bool canSendMessage,  bool canRequestPayment,  bool canConfirmPurchase,  bool canCancelTransaction,  List<MessageDto> messages)?  $default,) {final _that = this;
switch (_that) {
case _ChatRoomRespDto() when $default != null:
return $default(_that.roomId,_that.ticket,_that.buyer,_that.seller,_that.statusCode,_that.statusName,_that.transaction,_that.canSendMessage,_that.canRequestPayment,_that.canConfirmPurchase,_that.canCancelTransaction,_that.messages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatRoomRespDto implements ChatRoomRespDto {
  const _ChatRoomRespDto({required this.roomId, required this.ticket, required this.buyer, required this.seller, required this.statusCode, required this.statusName, this.transaction, required this.canSendMessage, required this.canRequestPayment, required this.canConfirmPurchase, required this.canCancelTransaction, required final  List<MessageDto> messages}): _messages = messages;
  factory _ChatRoomRespDto.fromJson(Map<String, dynamic> json) => _$ChatRoomRespDtoFromJson(json);

@override final  int roomId;
@override final  TicketInfoDto ticket;
@override final  UserProfileDto buyer;
@override final  UserProfileDto seller;
@override final  String statusCode;
@override final  String statusName;
@override final  TransactionDto? transaction;
@override final  bool canSendMessage;
@override final  bool canRequestPayment;
@override final  bool canConfirmPurchase;
@override final  bool canCancelTransaction;
 final  List<MessageDto> _messages;
@override List<MessageDto> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}


/// Create a copy of ChatRoomRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatRoomRespDtoCopyWith<_ChatRoomRespDto> get copyWith => __$ChatRoomRespDtoCopyWithImpl<_ChatRoomRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatRoomRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatRoomRespDto&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.ticket, ticket) || other.ticket == ticket)&&(identical(other.buyer, buyer) || other.buyer == buyer)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.transaction, transaction) || other.transaction == transaction)&&(identical(other.canSendMessage, canSendMessage) || other.canSendMessage == canSendMessage)&&(identical(other.canRequestPayment, canRequestPayment) || other.canRequestPayment == canRequestPayment)&&(identical(other.canConfirmPurchase, canConfirmPurchase) || other.canConfirmPurchase == canConfirmPurchase)&&(identical(other.canCancelTransaction, canCancelTransaction) || other.canCancelTransaction == canCancelTransaction)&&const DeepCollectionEquality().equals(other._messages, _messages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,roomId,ticket,buyer,seller,statusCode,statusName,transaction,canSendMessage,canRequestPayment,canConfirmPurchase,canCancelTransaction,const DeepCollectionEquality().hash(_messages));

@override
String toString() {
  return 'ChatRoomRespDto(roomId: $roomId, ticket: $ticket, buyer: $buyer, seller: $seller, statusCode: $statusCode, statusName: $statusName, transaction: $transaction, canSendMessage: $canSendMessage, canRequestPayment: $canRequestPayment, canConfirmPurchase: $canConfirmPurchase, canCancelTransaction: $canCancelTransaction, messages: $messages)';
}


}

/// @nodoc
abstract mixin class _$ChatRoomRespDtoCopyWith<$Res> implements $ChatRoomRespDtoCopyWith<$Res> {
  factory _$ChatRoomRespDtoCopyWith(_ChatRoomRespDto value, $Res Function(_ChatRoomRespDto) _then) = __$ChatRoomRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int roomId, TicketInfoDto ticket, UserProfileDto buyer, UserProfileDto seller, String statusCode, String statusName, TransactionDto? transaction, bool canSendMessage, bool canRequestPayment, bool canConfirmPurchase, bool canCancelTransaction, List<MessageDto> messages
});


@override $TicketInfoDtoCopyWith<$Res> get ticket;@override $UserProfileDtoCopyWith<$Res> get buyer;@override $UserProfileDtoCopyWith<$Res> get seller;@override $TransactionDtoCopyWith<$Res>? get transaction;

}
/// @nodoc
class __$ChatRoomRespDtoCopyWithImpl<$Res>
    implements _$ChatRoomRespDtoCopyWith<$Res> {
  __$ChatRoomRespDtoCopyWithImpl(this._self, this._then);

  final _ChatRoomRespDto _self;
  final $Res Function(_ChatRoomRespDto) _then;

/// Create a copy of ChatRoomRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roomId = null,Object? ticket = null,Object? buyer = null,Object? seller = null,Object? statusCode = null,Object? statusName = null,Object? transaction = freezed,Object? canSendMessage = null,Object? canRequestPayment = null,Object? canConfirmPurchase = null,Object? canCancelTransaction = null,Object? messages = null,}) {
  return _then(_ChatRoomRespDto(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,ticket: null == ticket ? _self.ticket : ticket // ignore: cast_nullable_to_non_nullable
as TicketInfoDto,buyer: null == buyer ? _self.buyer : buyer // ignore: cast_nullable_to_non_nullable
as UserProfileDto,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as UserProfileDto,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,transaction: freezed == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as TransactionDto?,canSendMessage: null == canSendMessage ? _self.canSendMessage : canSendMessage // ignore: cast_nullable_to_non_nullable
as bool,canRequestPayment: null == canRequestPayment ? _self.canRequestPayment : canRequestPayment // ignore: cast_nullable_to_non_nullable
as bool,canConfirmPurchase: null == canConfirmPurchase ? _self.canConfirmPurchase : canConfirmPurchase // ignore: cast_nullable_to_non_nullable
as bool,canCancelTransaction: null == canCancelTransaction ? _self.canCancelTransaction : canCancelTransaction // ignore: cast_nullable_to_non_nullable
as bool,messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<MessageDto>,
  ));
}

/// Create a copy of ChatRoomRespDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketInfoDtoCopyWith<$Res> get ticket {
  
  return $TicketInfoDtoCopyWith<$Res>(_self.ticket, (value) {
    return _then(_self.copyWith(ticket: value));
  });
}/// Create a copy of ChatRoomRespDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileDtoCopyWith<$Res> get buyer {
  
  return $UserProfileDtoCopyWith<$Res>(_self.buyer, (value) {
    return _then(_self.copyWith(buyer: value));
  });
}/// Create a copy of ChatRoomRespDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileDtoCopyWith<$Res> get seller {
  
  return $UserProfileDtoCopyWith<$Res>(_self.seller, (value) {
    return _then(_self.copyWith(seller: value));
  });
}/// Create a copy of ChatRoomRespDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionDtoCopyWith<$Res>? get transaction {
    if (_self.transaction == null) {
    return null;
  }

  return $TransactionDtoCopyWith<$Res>(_self.transaction!, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}
}


/// @nodoc
mixin _$TicketInfoDto {

 int get ticketId; String get title; int get price; String? get thumbnailUrl;
/// Create a copy of TicketInfoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketInfoDtoCopyWith<TicketInfoDto> get copyWith => _$TicketInfoDtoCopyWithImpl<TicketInfoDto>(this as TicketInfoDto, _$identity);

  /// Serializes this TicketInfoDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketInfoDto&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketId,title,price,thumbnailUrl);

@override
String toString() {
  return 'TicketInfoDto(ticketId: $ticketId, title: $title, price: $price, thumbnailUrl: $thumbnailUrl)';
}


}

/// @nodoc
abstract mixin class $TicketInfoDtoCopyWith<$Res>  {
  factory $TicketInfoDtoCopyWith(TicketInfoDto value, $Res Function(TicketInfoDto) _then) = _$TicketInfoDtoCopyWithImpl;
@useResult
$Res call({
 int ticketId, String title, int price, String? thumbnailUrl
});




}
/// @nodoc
class _$TicketInfoDtoCopyWithImpl<$Res>
    implements $TicketInfoDtoCopyWith<$Res> {
  _$TicketInfoDtoCopyWithImpl(this._self, this._then);

  final TicketInfoDto _self;
  final $Res Function(TicketInfoDto) _then;

/// Create a copy of TicketInfoDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,Object? title = null,Object? price = null,Object? thumbnailUrl = freezed,}) {
  return _then(_self.copyWith(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketInfoDto].
extension TicketInfoDtoPatterns on TicketInfoDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketInfoDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketInfoDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketInfoDto value)  $default,){
final _that = this;
switch (_that) {
case _TicketInfoDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketInfoDto value)?  $default,){
final _that = this;
switch (_that) {
case _TicketInfoDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int ticketId,  String title,  int price,  String? thumbnailUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketInfoDto() when $default != null:
return $default(_that.ticketId,_that.title,_that.price,_that.thumbnailUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int ticketId,  String title,  int price,  String? thumbnailUrl)  $default,) {final _that = this;
switch (_that) {
case _TicketInfoDto():
return $default(_that.ticketId,_that.title,_that.price,_that.thumbnailUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int ticketId,  String title,  int price,  String? thumbnailUrl)?  $default,) {final _that = this;
switch (_that) {
case _TicketInfoDto() when $default != null:
return $default(_that.ticketId,_that.title,_that.price,_that.thumbnailUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketInfoDto implements TicketInfoDto {
  const _TicketInfoDto({required this.ticketId, required this.title, required this.price, this.thumbnailUrl});
  factory _TicketInfoDto.fromJson(Map<String, dynamic> json) => _$TicketInfoDtoFromJson(json);

@override final  int ticketId;
@override final  String title;
@override final  int price;
@override final  String? thumbnailUrl;

/// Create a copy of TicketInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketInfoDtoCopyWith<_TicketInfoDto> get copyWith => __$TicketInfoDtoCopyWithImpl<_TicketInfoDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketInfoDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketInfoDto&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketId,title,price,thumbnailUrl);

@override
String toString() {
  return 'TicketInfoDto(ticketId: $ticketId, title: $title, price: $price, thumbnailUrl: $thumbnailUrl)';
}


}

/// @nodoc
abstract mixin class _$TicketInfoDtoCopyWith<$Res> implements $TicketInfoDtoCopyWith<$Res> {
  factory _$TicketInfoDtoCopyWith(_TicketInfoDto value, $Res Function(_TicketInfoDto) _then) = __$TicketInfoDtoCopyWithImpl;
@override @useResult
$Res call({
 int ticketId, String title, int price, String? thumbnailUrl
});




}
/// @nodoc
class __$TicketInfoDtoCopyWithImpl<$Res>
    implements _$TicketInfoDtoCopyWith<$Res> {
  __$TicketInfoDtoCopyWithImpl(this._self, this._then);

  final _TicketInfoDto _self;
  final $Res Function(_TicketInfoDto) _then;

/// Create a copy of TicketInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,Object? title = null,Object? price = null,Object? thumbnailUrl = freezed,}) {
  return _then(_TicketInfoDto(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$UserProfileDto {

 int get userId; String get nickname; String? get profileImageUrl; double get mannerTemperature;
/// Create a copy of UserProfileDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileDtoCopyWith<UserProfileDto> get copyWith => _$UserProfileDtoCopyWithImpl<UserProfileDto>(this as UserProfileDto, _$identity);

  /// Serializes this UserProfileDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfileDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.mannerTemperature, mannerTemperature) || other.mannerTemperature == mannerTemperature));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,nickname,profileImageUrl,mannerTemperature);

@override
String toString() {
  return 'UserProfileDto(userId: $userId, nickname: $nickname, profileImageUrl: $profileImageUrl, mannerTemperature: $mannerTemperature)';
}


}

/// @nodoc
abstract mixin class $UserProfileDtoCopyWith<$Res>  {
  factory $UserProfileDtoCopyWith(UserProfileDto value, $Res Function(UserProfileDto) _then) = _$UserProfileDtoCopyWithImpl;
@useResult
$Res call({
 int userId, String nickname, String? profileImageUrl, double mannerTemperature
});




}
/// @nodoc
class _$UserProfileDtoCopyWithImpl<$Res>
    implements $UserProfileDtoCopyWith<$Res> {
  _$UserProfileDtoCopyWithImpl(this._self, this._then);

  final UserProfileDto _self;
  final $Res Function(UserProfileDto) _then;

/// Create a copy of UserProfileDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? nickname = null,Object? profileImageUrl = freezed,Object? mannerTemperature = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,mannerTemperature: null == mannerTemperature ? _self.mannerTemperature : mannerTemperature // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [UserProfileDto].
extension UserProfileDtoPatterns on UserProfileDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserProfileDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserProfileDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserProfileDto value)  $default,){
final _that = this;
switch (_that) {
case _UserProfileDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserProfileDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserProfileDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userId,  String nickname,  String? profileImageUrl,  double mannerTemperature)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProfileDto() when $default != null:
return $default(_that.userId,_that.nickname,_that.profileImageUrl,_that.mannerTemperature);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userId,  String nickname,  String? profileImageUrl,  double mannerTemperature)  $default,) {final _that = this;
switch (_that) {
case _UserProfileDto():
return $default(_that.userId,_that.nickname,_that.profileImageUrl,_that.mannerTemperature);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userId,  String nickname,  String? profileImageUrl,  double mannerTemperature)?  $default,) {final _that = this;
switch (_that) {
case _UserProfileDto() when $default != null:
return $default(_that.userId,_that.nickname,_that.profileImageUrl,_that.mannerTemperature);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserProfileDto implements UserProfileDto {
  const _UserProfileDto({required this.userId, required this.nickname, this.profileImageUrl, required this.mannerTemperature});
  factory _UserProfileDto.fromJson(Map<String, dynamic> json) => _$UserProfileDtoFromJson(json);

@override final  int userId;
@override final  String nickname;
@override final  String? profileImageUrl;
@override final  double mannerTemperature;

/// Create a copy of UserProfileDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProfileDtoCopyWith<_UserProfileDto> get copyWith => __$UserProfileDtoCopyWithImpl<_UserProfileDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserProfileDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfileDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.mannerTemperature, mannerTemperature) || other.mannerTemperature == mannerTemperature));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,nickname,profileImageUrl,mannerTemperature);

@override
String toString() {
  return 'UserProfileDto(userId: $userId, nickname: $nickname, profileImageUrl: $profileImageUrl, mannerTemperature: $mannerTemperature)';
}


}

/// @nodoc
abstract mixin class _$UserProfileDtoCopyWith<$Res> implements $UserProfileDtoCopyWith<$Res> {
  factory _$UserProfileDtoCopyWith(_UserProfileDto value, $Res Function(_UserProfileDto) _then) = __$UserProfileDtoCopyWithImpl;
@override @useResult
$Res call({
 int userId, String nickname, String? profileImageUrl, double mannerTemperature
});




}
/// @nodoc
class __$UserProfileDtoCopyWithImpl<$Res>
    implements _$UserProfileDtoCopyWith<$Res> {
  __$UserProfileDtoCopyWithImpl(this._self, this._then);

  final _UserProfileDto _self;
  final $Res Function(_UserProfileDto) _then;

/// Create a copy of UserProfileDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? nickname = null,Object? profileImageUrl = freezed,Object? mannerTemperature = null,}) {
  return _then(_UserProfileDto(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,mannerTemperature: null == mannerTemperature ? _self.mannerTemperature : mannerTemperature // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$TransactionDto {

 int get transactionId; String get statusCode; String get statusName; int get amount; String? get paymentUrl; String? get confirmedAt; String? get cancelReason;
/// Create a copy of TransactionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionDtoCopyWith<TransactionDto> get copyWith => _$TransactionDtoCopyWithImpl<TransactionDto>(this as TransactionDto, _$identity);

  /// Serializes this TransactionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionDto&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl)&&(identical(other.confirmedAt, confirmedAt) || other.confirmedAt == confirmedAt)&&(identical(other.cancelReason, cancelReason) || other.cancelReason == cancelReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,statusCode,statusName,amount,paymentUrl,confirmedAt,cancelReason);

@override
String toString() {
  return 'TransactionDto(transactionId: $transactionId, statusCode: $statusCode, statusName: $statusName, amount: $amount, paymentUrl: $paymentUrl, confirmedAt: $confirmedAt, cancelReason: $cancelReason)';
}


}

/// @nodoc
abstract mixin class $TransactionDtoCopyWith<$Res>  {
  factory $TransactionDtoCopyWith(TransactionDto value, $Res Function(TransactionDto) _then) = _$TransactionDtoCopyWithImpl;
@useResult
$Res call({
 int transactionId, String statusCode, String statusName, int amount, String? paymentUrl, String? confirmedAt, String? cancelReason
});




}
/// @nodoc
class _$TransactionDtoCopyWithImpl<$Res>
    implements $TransactionDtoCopyWith<$Res> {
  _$TransactionDtoCopyWithImpl(this._self, this._then);

  final TransactionDto _self;
  final $Res Function(TransactionDto) _then;

/// Create a copy of TransactionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? statusCode = null,Object? statusName = null,Object? amount = null,Object? paymentUrl = freezed,Object? confirmedAt = freezed,Object? cancelReason = freezed,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,paymentUrl: freezed == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as String?,confirmedAt: freezed == confirmedAt ? _self.confirmedAt : confirmedAt // ignore: cast_nullable_to_non_nullable
as String?,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionDto].
extension TransactionDtoPatterns on TransactionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionDto value)  $default,){
final _that = this;
switch (_that) {
case _TransactionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionDto value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int transactionId,  String statusCode,  String statusName,  int amount,  String? paymentUrl,  String? confirmedAt,  String? cancelReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionDto() when $default != null:
return $default(_that.transactionId,_that.statusCode,_that.statusName,_that.amount,_that.paymentUrl,_that.confirmedAt,_that.cancelReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int transactionId,  String statusCode,  String statusName,  int amount,  String? paymentUrl,  String? confirmedAt,  String? cancelReason)  $default,) {final _that = this;
switch (_that) {
case _TransactionDto():
return $default(_that.transactionId,_that.statusCode,_that.statusName,_that.amount,_that.paymentUrl,_that.confirmedAt,_that.cancelReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int transactionId,  String statusCode,  String statusName,  int amount,  String? paymentUrl,  String? confirmedAt,  String? cancelReason)?  $default,) {final _that = this;
switch (_that) {
case _TransactionDto() when $default != null:
return $default(_that.transactionId,_that.statusCode,_that.statusName,_that.amount,_that.paymentUrl,_that.confirmedAt,_that.cancelReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionDto implements TransactionDto {
  const _TransactionDto({required this.transactionId, required this.statusCode, required this.statusName, required this.amount, this.paymentUrl, this.confirmedAt, this.cancelReason});
  factory _TransactionDto.fromJson(Map<String, dynamic> json) => _$TransactionDtoFromJson(json);

@override final  int transactionId;
@override final  String statusCode;
@override final  String statusName;
@override final  int amount;
@override final  String? paymentUrl;
@override final  String? confirmedAt;
@override final  String? cancelReason;

/// Create a copy of TransactionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionDtoCopyWith<_TransactionDto> get copyWith => __$TransactionDtoCopyWithImpl<_TransactionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionDto&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl)&&(identical(other.confirmedAt, confirmedAt) || other.confirmedAt == confirmedAt)&&(identical(other.cancelReason, cancelReason) || other.cancelReason == cancelReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,statusCode,statusName,amount,paymentUrl,confirmedAt,cancelReason);

@override
String toString() {
  return 'TransactionDto(transactionId: $transactionId, statusCode: $statusCode, statusName: $statusName, amount: $amount, paymentUrl: $paymentUrl, confirmedAt: $confirmedAt, cancelReason: $cancelReason)';
}


}

/// @nodoc
abstract mixin class _$TransactionDtoCopyWith<$Res> implements $TransactionDtoCopyWith<$Res> {
  factory _$TransactionDtoCopyWith(_TransactionDto value, $Res Function(_TransactionDto) _then) = __$TransactionDtoCopyWithImpl;
@override @useResult
$Res call({
 int transactionId, String statusCode, String statusName, int amount, String? paymentUrl, String? confirmedAt, String? cancelReason
});




}
/// @nodoc
class __$TransactionDtoCopyWithImpl<$Res>
    implements _$TransactionDtoCopyWith<$Res> {
  __$TransactionDtoCopyWithImpl(this._self, this._then);

  final _TransactionDto _self;
  final $Res Function(_TransactionDto) _then;

/// Create a copy of TransactionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? statusCode = null,Object? statusName = null,Object? amount = null,Object? paymentUrl = freezed,Object? confirmedAt = freezed,Object? cancelReason = freezed,}) {
  return _then(_TransactionDto(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,paymentUrl: freezed == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as String?,confirmedAt: freezed == confirmedAt ? _self.confirmedAt : confirmedAt // ignore: cast_nullable_to_non_nullable
as String?,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MessageDto {

 int get messageId; int get roomId; int get senderId; String get senderNickname; String? get senderProfileImage; String? get message; String? get imageUrl; String get createdAt; bool get isMyMessage;
/// Create a copy of MessageDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageDtoCopyWith<MessageDto> get copyWith => _$MessageDtoCopyWithImpl<MessageDto>(this as MessageDto, _$identity);

  /// Serializes this MessageDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageDto&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.senderNickname, senderNickname) || other.senderNickname == senderNickname)&&(identical(other.senderProfileImage, senderProfileImage) || other.senderProfileImage == senderProfileImage)&&(identical(other.message, message) || other.message == message)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.isMyMessage, isMyMessage) || other.isMyMessage == isMyMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messageId,roomId,senderId,senderNickname,senderProfileImage,message,imageUrl,createdAt,isMyMessage);

@override
String toString() {
  return 'MessageDto(messageId: $messageId, roomId: $roomId, senderId: $senderId, senderNickname: $senderNickname, senderProfileImage: $senderProfileImage, message: $message, imageUrl: $imageUrl, createdAt: $createdAt, isMyMessage: $isMyMessage)';
}


}

/// @nodoc
abstract mixin class $MessageDtoCopyWith<$Res>  {
  factory $MessageDtoCopyWith(MessageDto value, $Res Function(MessageDto) _then) = _$MessageDtoCopyWithImpl;
@useResult
$Res call({
 int messageId, int roomId, int senderId, String senderNickname, String? senderProfileImage, String? message, String? imageUrl, String createdAt, bool isMyMessage
});




}
/// @nodoc
class _$MessageDtoCopyWithImpl<$Res>
    implements $MessageDtoCopyWith<$Res> {
  _$MessageDtoCopyWithImpl(this._self, this._then);

  final MessageDto _self;
  final $Res Function(MessageDto) _then;

/// Create a copy of MessageDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messageId = null,Object? roomId = null,Object? senderId = null,Object? senderNickname = null,Object? senderProfileImage = freezed,Object? message = freezed,Object? imageUrl = freezed,Object? createdAt = null,Object? isMyMessage = null,}) {
  return _then(_self.copyWith(
messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as int,roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as int,senderNickname: null == senderNickname ? _self.senderNickname : senderNickname // ignore: cast_nullable_to_non_nullable
as String,senderProfileImage: freezed == senderProfileImage ? _self.senderProfileImage : senderProfileImage // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,isMyMessage: null == isMyMessage ? _self.isMyMessage : isMyMessage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MessageDto].
extension MessageDtoPatterns on MessageDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageDto value)  $default,){
final _that = this;
switch (_that) {
case _MessageDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageDto value)?  $default,){
final _that = this;
switch (_that) {
case _MessageDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int messageId,  int roomId,  int senderId,  String senderNickname,  String? senderProfileImage,  String? message,  String? imageUrl,  String createdAt,  bool isMyMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageDto() when $default != null:
return $default(_that.messageId,_that.roomId,_that.senderId,_that.senderNickname,_that.senderProfileImage,_that.message,_that.imageUrl,_that.createdAt,_that.isMyMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int messageId,  int roomId,  int senderId,  String senderNickname,  String? senderProfileImage,  String? message,  String? imageUrl,  String createdAt,  bool isMyMessage)  $default,) {final _that = this;
switch (_that) {
case _MessageDto():
return $default(_that.messageId,_that.roomId,_that.senderId,_that.senderNickname,_that.senderProfileImage,_that.message,_that.imageUrl,_that.createdAt,_that.isMyMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int messageId,  int roomId,  int senderId,  String senderNickname,  String? senderProfileImage,  String? message,  String? imageUrl,  String createdAt,  bool isMyMessage)?  $default,) {final _that = this;
switch (_that) {
case _MessageDto() when $default != null:
return $default(_that.messageId,_that.roomId,_that.senderId,_that.senderNickname,_that.senderProfileImage,_that.message,_that.imageUrl,_that.createdAt,_that.isMyMessage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageDto implements MessageDto {
  const _MessageDto({required this.messageId, required this.roomId, required this.senderId, required this.senderNickname, this.senderProfileImage, this.message, this.imageUrl, required this.createdAt, required this.isMyMessage});
  factory _MessageDto.fromJson(Map<String, dynamic> json) => _$MessageDtoFromJson(json);

@override final  int messageId;
@override final  int roomId;
@override final  int senderId;
@override final  String senderNickname;
@override final  String? senderProfileImage;
@override final  String? message;
@override final  String? imageUrl;
@override final  String createdAt;
@override final  bool isMyMessage;

/// Create a copy of MessageDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageDtoCopyWith<_MessageDto> get copyWith => __$MessageDtoCopyWithImpl<_MessageDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageDto&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.senderNickname, senderNickname) || other.senderNickname == senderNickname)&&(identical(other.senderProfileImage, senderProfileImage) || other.senderProfileImage == senderProfileImage)&&(identical(other.message, message) || other.message == message)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.isMyMessage, isMyMessage) || other.isMyMessage == isMyMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messageId,roomId,senderId,senderNickname,senderProfileImage,message,imageUrl,createdAt,isMyMessage);

@override
String toString() {
  return 'MessageDto(messageId: $messageId, roomId: $roomId, senderId: $senderId, senderNickname: $senderNickname, senderProfileImage: $senderProfileImage, message: $message, imageUrl: $imageUrl, createdAt: $createdAt, isMyMessage: $isMyMessage)';
}


}

/// @nodoc
abstract mixin class _$MessageDtoCopyWith<$Res> implements $MessageDtoCopyWith<$Res> {
  factory _$MessageDtoCopyWith(_MessageDto value, $Res Function(_MessageDto) _then) = __$MessageDtoCopyWithImpl;
@override @useResult
$Res call({
 int messageId, int roomId, int senderId, String senderNickname, String? senderProfileImage, String? message, String? imageUrl, String createdAt, bool isMyMessage
});




}
/// @nodoc
class __$MessageDtoCopyWithImpl<$Res>
    implements _$MessageDtoCopyWith<$Res> {
  __$MessageDtoCopyWithImpl(this._self, this._then);

  final _MessageDto _self;
  final $Res Function(_MessageDto) _then;

/// Create a copy of MessageDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messageId = null,Object? roomId = null,Object? senderId = null,Object? senderNickname = null,Object? senderProfileImage = freezed,Object? message = freezed,Object? imageUrl = freezed,Object? createdAt = null,Object? isMyMessage = null,}) {
  return _then(_MessageDto(
messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as int,roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as int,senderNickname: null == senderNickname ? _self.senderNickname : senderNickname // ignore: cast_nullable_to_non_nullable
as String,senderProfileImage: freezed == senderProfileImage ? _self.senderProfileImage : senderProfileImage // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,isMyMessage: null == isMyMessage ? _self.isMyMessage : isMyMessage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ChatRoomListItemDto {

 int get roomId; int get ticketId; String get ticketTitle; OtherUserDto get otherUser; String? get lastMessage; String? get lastMessageAt; int get unreadCount; String get roomStatusCode; String get roomStatusName; int? get transactionId; String? get transactionStatusCode; String? get transactionStatusName;
/// Create a copy of ChatRoomListItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatRoomListItemDtoCopyWith<ChatRoomListItemDto> get copyWith => _$ChatRoomListItemDtoCopyWithImpl<ChatRoomListItemDto>(this as ChatRoomListItemDto, _$identity);

  /// Serializes this ChatRoomListItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatRoomListItemDto&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.ticketTitle, ticketTitle) || other.ticketTitle == ticketTitle)&&(identical(other.otherUser, otherUser) || other.otherUser == otherUser)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage)&&(identical(other.lastMessageAt, lastMessageAt) || other.lastMessageAt == lastMessageAt)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.roomStatusCode, roomStatusCode) || other.roomStatusCode == roomStatusCode)&&(identical(other.roomStatusName, roomStatusName) || other.roomStatusName == roomStatusName)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.transactionStatusCode, transactionStatusCode) || other.transactionStatusCode == transactionStatusCode)&&(identical(other.transactionStatusName, transactionStatusName) || other.transactionStatusName == transactionStatusName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,roomId,ticketId,ticketTitle,otherUser,lastMessage,lastMessageAt,unreadCount,roomStatusCode,roomStatusName,transactionId,transactionStatusCode,transactionStatusName);

@override
String toString() {
  return 'ChatRoomListItemDto(roomId: $roomId, ticketId: $ticketId, ticketTitle: $ticketTitle, otherUser: $otherUser, lastMessage: $lastMessage, lastMessageAt: $lastMessageAt, unreadCount: $unreadCount, roomStatusCode: $roomStatusCode, roomStatusName: $roomStatusName, transactionId: $transactionId, transactionStatusCode: $transactionStatusCode, transactionStatusName: $transactionStatusName)';
}


}

/// @nodoc
abstract mixin class $ChatRoomListItemDtoCopyWith<$Res>  {
  factory $ChatRoomListItemDtoCopyWith(ChatRoomListItemDto value, $Res Function(ChatRoomListItemDto) _then) = _$ChatRoomListItemDtoCopyWithImpl;
@useResult
$Res call({
 int roomId, int ticketId, String ticketTitle, OtherUserDto otherUser, String? lastMessage, String? lastMessageAt, int unreadCount, String roomStatusCode, String roomStatusName, int? transactionId, String? transactionStatusCode, String? transactionStatusName
});


$OtherUserDtoCopyWith<$Res> get otherUser;

}
/// @nodoc
class _$ChatRoomListItemDtoCopyWithImpl<$Res>
    implements $ChatRoomListItemDtoCopyWith<$Res> {
  _$ChatRoomListItemDtoCopyWithImpl(this._self, this._then);

  final ChatRoomListItemDto _self;
  final $Res Function(ChatRoomListItemDto) _then;

/// Create a copy of ChatRoomListItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roomId = null,Object? ticketId = null,Object? ticketTitle = null,Object? otherUser = null,Object? lastMessage = freezed,Object? lastMessageAt = freezed,Object? unreadCount = null,Object? roomStatusCode = null,Object? roomStatusName = null,Object? transactionId = freezed,Object? transactionStatusCode = freezed,Object? transactionStatusName = freezed,}) {
  return _then(_self.copyWith(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,ticketTitle: null == ticketTitle ? _self.ticketTitle : ticketTitle // ignore: cast_nullable_to_non_nullable
as String,otherUser: null == otherUser ? _self.otherUser : otherUser // ignore: cast_nullable_to_non_nullable
as OtherUserDto,lastMessage: freezed == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as String?,lastMessageAt: freezed == lastMessageAt ? _self.lastMessageAt : lastMessageAt // ignore: cast_nullable_to_non_nullable
as String?,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,roomStatusCode: null == roomStatusCode ? _self.roomStatusCode : roomStatusCode // ignore: cast_nullable_to_non_nullable
as String,roomStatusName: null == roomStatusName ? _self.roomStatusName : roomStatusName // ignore: cast_nullable_to_non_nullable
as String,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int?,transactionStatusCode: freezed == transactionStatusCode ? _self.transactionStatusCode : transactionStatusCode // ignore: cast_nullable_to_non_nullable
as String?,transactionStatusName: freezed == transactionStatusName ? _self.transactionStatusName : transactionStatusName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ChatRoomListItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OtherUserDtoCopyWith<$Res> get otherUser {
  
  return $OtherUserDtoCopyWith<$Res>(_self.otherUser, (value) {
    return _then(_self.copyWith(otherUser: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatRoomListItemDto].
extension ChatRoomListItemDtoPatterns on ChatRoomListItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatRoomListItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatRoomListItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatRoomListItemDto value)  $default,){
final _that = this;
switch (_that) {
case _ChatRoomListItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatRoomListItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChatRoomListItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int roomId,  int ticketId,  String ticketTitle,  OtherUserDto otherUser,  String? lastMessage,  String? lastMessageAt,  int unreadCount,  String roomStatusCode,  String roomStatusName,  int? transactionId,  String? transactionStatusCode,  String? transactionStatusName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatRoomListItemDto() when $default != null:
return $default(_that.roomId,_that.ticketId,_that.ticketTitle,_that.otherUser,_that.lastMessage,_that.lastMessageAt,_that.unreadCount,_that.roomStatusCode,_that.roomStatusName,_that.transactionId,_that.transactionStatusCode,_that.transactionStatusName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int roomId,  int ticketId,  String ticketTitle,  OtherUserDto otherUser,  String? lastMessage,  String? lastMessageAt,  int unreadCount,  String roomStatusCode,  String roomStatusName,  int? transactionId,  String? transactionStatusCode,  String? transactionStatusName)  $default,) {final _that = this;
switch (_that) {
case _ChatRoomListItemDto():
return $default(_that.roomId,_that.ticketId,_that.ticketTitle,_that.otherUser,_that.lastMessage,_that.lastMessageAt,_that.unreadCount,_that.roomStatusCode,_that.roomStatusName,_that.transactionId,_that.transactionStatusCode,_that.transactionStatusName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int roomId,  int ticketId,  String ticketTitle,  OtherUserDto otherUser,  String? lastMessage,  String? lastMessageAt,  int unreadCount,  String roomStatusCode,  String roomStatusName,  int? transactionId,  String? transactionStatusCode,  String? transactionStatusName)?  $default,) {final _that = this;
switch (_that) {
case _ChatRoomListItemDto() when $default != null:
return $default(_that.roomId,_that.ticketId,_that.ticketTitle,_that.otherUser,_that.lastMessage,_that.lastMessageAt,_that.unreadCount,_that.roomStatusCode,_that.roomStatusName,_that.transactionId,_that.transactionStatusCode,_that.transactionStatusName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatRoomListItemDto implements ChatRoomListItemDto {
  const _ChatRoomListItemDto({required this.roomId, required this.ticketId, required this.ticketTitle, required this.otherUser, this.lastMessage, this.lastMessageAt, required this.unreadCount, required this.roomStatusCode, required this.roomStatusName, this.transactionId, this.transactionStatusCode, this.transactionStatusName});
  factory _ChatRoomListItemDto.fromJson(Map<String, dynamic> json) => _$ChatRoomListItemDtoFromJson(json);

@override final  int roomId;
@override final  int ticketId;
@override final  String ticketTitle;
@override final  OtherUserDto otherUser;
@override final  String? lastMessage;
@override final  String? lastMessageAt;
@override final  int unreadCount;
@override final  String roomStatusCode;
@override final  String roomStatusName;
@override final  int? transactionId;
@override final  String? transactionStatusCode;
@override final  String? transactionStatusName;

/// Create a copy of ChatRoomListItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatRoomListItemDtoCopyWith<_ChatRoomListItemDto> get copyWith => __$ChatRoomListItemDtoCopyWithImpl<_ChatRoomListItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatRoomListItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatRoomListItemDto&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.ticketTitle, ticketTitle) || other.ticketTitle == ticketTitle)&&(identical(other.otherUser, otherUser) || other.otherUser == otherUser)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage)&&(identical(other.lastMessageAt, lastMessageAt) || other.lastMessageAt == lastMessageAt)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.roomStatusCode, roomStatusCode) || other.roomStatusCode == roomStatusCode)&&(identical(other.roomStatusName, roomStatusName) || other.roomStatusName == roomStatusName)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.transactionStatusCode, transactionStatusCode) || other.transactionStatusCode == transactionStatusCode)&&(identical(other.transactionStatusName, transactionStatusName) || other.transactionStatusName == transactionStatusName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,roomId,ticketId,ticketTitle,otherUser,lastMessage,lastMessageAt,unreadCount,roomStatusCode,roomStatusName,transactionId,transactionStatusCode,transactionStatusName);

@override
String toString() {
  return 'ChatRoomListItemDto(roomId: $roomId, ticketId: $ticketId, ticketTitle: $ticketTitle, otherUser: $otherUser, lastMessage: $lastMessage, lastMessageAt: $lastMessageAt, unreadCount: $unreadCount, roomStatusCode: $roomStatusCode, roomStatusName: $roomStatusName, transactionId: $transactionId, transactionStatusCode: $transactionStatusCode, transactionStatusName: $transactionStatusName)';
}


}

/// @nodoc
abstract mixin class _$ChatRoomListItemDtoCopyWith<$Res> implements $ChatRoomListItemDtoCopyWith<$Res> {
  factory _$ChatRoomListItemDtoCopyWith(_ChatRoomListItemDto value, $Res Function(_ChatRoomListItemDto) _then) = __$ChatRoomListItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int roomId, int ticketId, String ticketTitle, OtherUserDto otherUser, String? lastMessage, String? lastMessageAt, int unreadCount, String roomStatusCode, String roomStatusName, int? transactionId, String? transactionStatusCode, String? transactionStatusName
});


@override $OtherUserDtoCopyWith<$Res> get otherUser;

}
/// @nodoc
class __$ChatRoomListItemDtoCopyWithImpl<$Res>
    implements _$ChatRoomListItemDtoCopyWith<$Res> {
  __$ChatRoomListItemDtoCopyWithImpl(this._self, this._then);

  final _ChatRoomListItemDto _self;
  final $Res Function(_ChatRoomListItemDto) _then;

/// Create a copy of ChatRoomListItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roomId = null,Object? ticketId = null,Object? ticketTitle = null,Object? otherUser = null,Object? lastMessage = freezed,Object? lastMessageAt = freezed,Object? unreadCount = null,Object? roomStatusCode = null,Object? roomStatusName = null,Object? transactionId = freezed,Object? transactionStatusCode = freezed,Object? transactionStatusName = freezed,}) {
  return _then(_ChatRoomListItemDto(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,ticketTitle: null == ticketTitle ? _self.ticketTitle : ticketTitle // ignore: cast_nullable_to_non_nullable
as String,otherUser: null == otherUser ? _self.otherUser : otherUser // ignore: cast_nullable_to_non_nullable
as OtherUserDto,lastMessage: freezed == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as String?,lastMessageAt: freezed == lastMessageAt ? _self.lastMessageAt : lastMessageAt // ignore: cast_nullable_to_non_nullable
as String?,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,roomStatusCode: null == roomStatusCode ? _self.roomStatusCode : roomStatusCode // ignore: cast_nullable_to_non_nullable
as String,roomStatusName: null == roomStatusName ? _self.roomStatusName : roomStatusName // ignore: cast_nullable_to_non_nullable
as String,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int?,transactionStatusCode: freezed == transactionStatusCode ? _self.transactionStatusCode : transactionStatusCode // ignore: cast_nullable_to_non_nullable
as String?,transactionStatusName: freezed == transactionStatusName ? _self.transactionStatusName : transactionStatusName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ChatRoomListItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OtherUserDtoCopyWith<$Res> get otherUser {
  
  return $OtherUserDtoCopyWith<$Res>(_self.otherUser, (value) {
    return _then(_self.copyWith(otherUser: value));
  });
}
}


/// @nodoc
mixin _$OtherUserDto {

 int get userId; String get nickname; String? get profileImageUrl;
/// Create a copy of OtherUserDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtherUserDtoCopyWith<OtherUserDto> get copyWith => _$OtherUserDtoCopyWithImpl<OtherUserDto>(this as OtherUserDto, _$identity);

  /// Serializes this OtherUserDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtherUserDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,nickname,profileImageUrl);

@override
String toString() {
  return 'OtherUserDto(userId: $userId, nickname: $nickname, profileImageUrl: $profileImageUrl)';
}


}

/// @nodoc
abstract mixin class $OtherUserDtoCopyWith<$Res>  {
  factory $OtherUserDtoCopyWith(OtherUserDto value, $Res Function(OtherUserDto) _then) = _$OtherUserDtoCopyWithImpl;
@useResult
$Res call({
 int userId, String nickname, String? profileImageUrl
});




}
/// @nodoc
class _$OtherUserDtoCopyWithImpl<$Res>
    implements $OtherUserDtoCopyWith<$Res> {
  _$OtherUserDtoCopyWithImpl(this._self, this._then);

  final OtherUserDto _self;
  final $Res Function(OtherUserDto) _then;

/// Create a copy of OtherUserDto
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


/// Adds pattern-matching-related methods to [OtherUserDto].
extension OtherUserDtoPatterns on OtherUserDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OtherUserDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OtherUserDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OtherUserDto value)  $default,){
final _that = this;
switch (_that) {
case _OtherUserDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OtherUserDto value)?  $default,){
final _that = this;
switch (_that) {
case _OtherUserDto() when $default != null:
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
case _OtherUserDto() when $default != null:
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
case _OtherUserDto():
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
case _OtherUserDto() when $default != null:
return $default(_that.userId,_that.nickname,_that.profileImageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OtherUserDto implements OtherUserDto {
  const _OtherUserDto({required this.userId, required this.nickname, this.profileImageUrl});
  factory _OtherUserDto.fromJson(Map<String, dynamic> json) => _$OtherUserDtoFromJson(json);

@override final  int userId;
@override final  String nickname;
@override final  String? profileImageUrl;

/// Create a copy of OtherUserDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtherUserDtoCopyWith<_OtherUserDto> get copyWith => __$OtherUserDtoCopyWithImpl<_OtherUserDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OtherUserDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtherUserDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,nickname,profileImageUrl);

@override
String toString() {
  return 'OtherUserDto(userId: $userId, nickname: $nickname, profileImageUrl: $profileImageUrl)';
}


}

/// @nodoc
abstract mixin class _$OtherUserDtoCopyWith<$Res> implements $OtherUserDtoCopyWith<$Res> {
  factory _$OtherUserDtoCopyWith(_OtherUserDto value, $Res Function(_OtherUserDto) _then) = __$OtherUserDtoCopyWithImpl;
@override @useResult
$Res call({
 int userId, String nickname, String? profileImageUrl
});




}
/// @nodoc
class __$OtherUserDtoCopyWithImpl<$Res>
    implements _$OtherUserDtoCopyWith<$Res> {
  __$OtherUserDtoCopyWithImpl(this._self, this._then);

  final _OtherUserDto _self;
  final $Res Function(_OtherUserDto) _then;

/// Create a copy of OtherUserDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? nickname = null,Object? profileImageUrl = freezed,}) {
  return _then(_OtherUserDto(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SendMessageRespDto {

 int get messageId; int get roomId; int get senderId; String get senderNickname; String? get senderProfileImage; String? get message; String? get imageUrl; String get createdAt; bool get success;
/// Create a copy of SendMessageRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendMessageRespDtoCopyWith<SendMessageRespDto> get copyWith => _$SendMessageRespDtoCopyWithImpl<SendMessageRespDto>(this as SendMessageRespDto, _$identity);

  /// Serializes this SendMessageRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendMessageRespDto&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.senderNickname, senderNickname) || other.senderNickname == senderNickname)&&(identical(other.senderProfileImage, senderProfileImage) || other.senderProfileImage == senderProfileImage)&&(identical(other.message, message) || other.message == message)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messageId,roomId,senderId,senderNickname,senderProfileImage,message,imageUrl,createdAt,success);

@override
String toString() {
  return 'SendMessageRespDto(messageId: $messageId, roomId: $roomId, senderId: $senderId, senderNickname: $senderNickname, senderProfileImage: $senderProfileImage, message: $message, imageUrl: $imageUrl, createdAt: $createdAt, success: $success)';
}


}

/// @nodoc
abstract mixin class $SendMessageRespDtoCopyWith<$Res>  {
  factory $SendMessageRespDtoCopyWith(SendMessageRespDto value, $Res Function(SendMessageRespDto) _then) = _$SendMessageRespDtoCopyWithImpl;
@useResult
$Res call({
 int messageId, int roomId, int senderId, String senderNickname, String? senderProfileImage, String? message, String? imageUrl, String createdAt, bool success
});




}
/// @nodoc
class _$SendMessageRespDtoCopyWithImpl<$Res>
    implements $SendMessageRespDtoCopyWith<$Res> {
  _$SendMessageRespDtoCopyWithImpl(this._self, this._then);

  final SendMessageRespDto _self;
  final $Res Function(SendMessageRespDto) _then;

/// Create a copy of SendMessageRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messageId = null,Object? roomId = null,Object? senderId = null,Object? senderNickname = null,Object? senderProfileImage = freezed,Object? message = freezed,Object? imageUrl = freezed,Object? createdAt = null,Object? success = null,}) {
  return _then(_self.copyWith(
messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as int,roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as int,senderNickname: null == senderNickname ? _self.senderNickname : senderNickname // ignore: cast_nullable_to_non_nullable
as String,senderProfileImage: freezed == senderProfileImage ? _self.senderProfileImage : senderProfileImage // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SendMessageRespDto].
extension SendMessageRespDtoPatterns on SendMessageRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SendMessageRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SendMessageRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SendMessageRespDto value)  $default,){
final _that = this;
switch (_that) {
case _SendMessageRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SendMessageRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _SendMessageRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int messageId,  int roomId,  int senderId,  String senderNickname,  String? senderProfileImage,  String? message,  String? imageUrl,  String createdAt,  bool success)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SendMessageRespDto() when $default != null:
return $default(_that.messageId,_that.roomId,_that.senderId,_that.senderNickname,_that.senderProfileImage,_that.message,_that.imageUrl,_that.createdAt,_that.success);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int messageId,  int roomId,  int senderId,  String senderNickname,  String? senderProfileImage,  String? message,  String? imageUrl,  String createdAt,  bool success)  $default,) {final _that = this;
switch (_that) {
case _SendMessageRespDto():
return $default(_that.messageId,_that.roomId,_that.senderId,_that.senderNickname,_that.senderProfileImage,_that.message,_that.imageUrl,_that.createdAt,_that.success);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int messageId,  int roomId,  int senderId,  String senderNickname,  String? senderProfileImage,  String? message,  String? imageUrl,  String createdAt,  bool success)?  $default,) {final _that = this;
switch (_that) {
case _SendMessageRespDto() when $default != null:
return $default(_that.messageId,_that.roomId,_that.senderId,_that.senderNickname,_that.senderProfileImage,_that.message,_that.imageUrl,_that.createdAt,_that.success);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SendMessageRespDto implements SendMessageRespDto {
  const _SendMessageRespDto({required this.messageId, required this.roomId, required this.senderId, required this.senderNickname, this.senderProfileImage, this.message, this.imageUrl, required this.createdAt, required this.success});
  factory _SendMessageRespDto.fromJson(Map<String, dynamic> json) => _$SendMessageRespDtoFromJson(json);

@override final  int messageId;
@override final  int roomId;
@override final  int senderId;
@override final  String senderNickname;
@override final  String? senderProfileImage;
@override final  String? message;
@override final  String? imageUrl;
@override final  String createdAt;
@override final  bool success;

/// Create a copy of SendMessageRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendMessageRespDtoCopyWith<_SendMessageRespDto> get copyWith => __$SendMessageRespDtoCopyWithImpl<_SendMessageRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SendMessageRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendMessageRespDto&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.senderNickname, senderNickname) || other.senderNickname == senderNickname)&&(identical(other.senderProfileImage, senderProfileImage) || other.senderProfileImage == senderProfileImage)&&(identical(other.message, message) || other.message == message)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messageId,roomId,senderId,senderNickname,senderProfileImage,message,imageUrl,createdAt,success);

@override
String toString() {
  return 'SendMessageRespDto(messageId: $messageId, roomId: $roomId, senderId: $senderId, senderNickname: $senderNickname, senderProfileImage: $senderProfileImage, message: $message, imageUrl: $imageUrl, createdAt: $createdAt, success: $success)';
}


}

/// @nodoc
abstract mixin class _$SendMessageRespDtoCopyWith<$Res> implements $SendMessageRespDtoCopyWith<$Res> {
  factory _$SendMessageRespDtoCopyWith(_SendMessageRespDto value, $Res Function(_SendMessageRespDto) _then) = __$SendMessageRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int messageId, int roomId, int senderId, String senderNickname, String? senderProfileImage, String? message, String? imageUrl, String createdAt, bool success
});




}
/// @nodoc
class __$SendMessageRespDtoCopyWithImpl<$Res>
    implements _$SendMessageRespDtoCopyWith<$Res> {
  __$SendMessageRespDtoCopyWithImpl(this._self, this._then);

  final _SendMessageRespDto _self;
  final $Res Function(_SendMessageRespDto) _then;

/// Create a copy of SendMessageRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messageId = null,Object? roomId = null,Object? senderId = null,Object? senderNickname = null,Object? senderProfileImage = freezed,Object? message = freezed,Object? imageUrl = freezed,Object? createdAt = null,Object? success = null,}) {
  return _then(_SendMessageRespDto(
messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as int,roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as int,senderNickname: null == senderNickname ? _self.senderNickname : senderNickname // ignore: cast_nullable_to_non_nullable
as String,senderProfileImage: freezed == senderProfileImage ? _self.senderProfileImage : senderProfileImage // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$PaymentRequestRespDto {

 String get paymentUrl; int get transactionId; int get amount;
/// Create a copy of PaymentRequestRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentRequestRespDtoCopyWith<PaymentRequestRespDto> get copyWith => _$PaymentRequestRespDtoCopyWithImpl<PaymentRequestRespDto>(this as PaymentRequestRespDto, _$identity);

  /// Serializes this PaymentRequestRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentRequestRespDto&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentUrl,transactionId,amount);

@override
String toString() {
  return 'PaymentRequestRespDto(paymentUrl: $paymentUrl, transactionId: $transactionId, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $PaymentRequestRespDtoCopyWith<$Res>  {
  factory $PaymentRequestRespDtoCopyWith(PaymentRequestRespDto value, $Res Function(PaymentRequestRespDto) _then) = _$PaymentRequestRespDtoCopyWithImpl;
@useResult
$Res call({
 String paymentUrl, int transactionId, int amount
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
@pragma('vm:prefer-inline') @override $Res call({Object? paymentUrl = null,Object? transactionId = null,Object? amount = null,}) {
  return _then(_self.copyWith(
paymentUrl: null == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as String,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String paymentUrl,  int transactionId,  int amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentRequestRespDto() when $default != null:
return $default(_that.paymentUrl,_that.transactionId,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String paymentUrl,  int transactionId,  int amount)  $default,) {final _that = this;
switch (_that) {
case _PaymentRequestRespDto():
return $default(_that.paymentUrl,_that.transactionId,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String paymentUrl,  int transactionId,  int amount)?  $default,) {final _that = this;
switch (_that) {
case _PaymentRequestRespDto() when $default != null:
return $default(_that.paymentUrl,_that.transactionId,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentRequestRespDto implements PaymentRequestRespDto {
  const _PaymentRequestRespDto({required this.paymentUrl, required this.transactionId, required this.amount});
  factory _PaymentRequestRespDto.fromJson(Map<String, dynamic> json) => _$PaymentRequestRespDtoFromJson(json);

@override final  String paymentUrl;
@override final  int transactionId;
@override final  int amount;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentRequestRespDto&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentUrl,transactionId,amount);

@override
String toString() {
  return 'PaymentRequestRespDto(paymentUrl: $paymentUrl, transactionId: $transactionId, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$PaymentRequestRespDtoCopyWith<$Res> implements $PaymentRequestRespDtoCopyWith<$Res> {
  factory _$PaymentRequestRespDtoCopyWith(_PaymentRequestRespDto value, $Res Function(_PaymentRequestRespDto) _then) = __$PaymentRequestRespDtoCopyWithImpl;
@override @useResult
$Res call({
 String paymentUrl, int transactionId, int amount
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
@override @pragma('vm:prefer-inline') $Res call({Object? paymentUrl = null,Object? transactionId = null,Object? amount = null,}) {
  return _then(_PaymentRequestRespDto(
paymentUrl: null == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as String,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$PurchaseConfirmRespDto {

 int get transactionId; String get confirmedAt; bool get success;
/// Create a copy of PurchaseConfirmRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchaseConfirmRespDtoCopyWith<PurchaseConfirmRespDto> get copyWith => _$PurchaseConfirmRespDtoCopyWithImpl<PurchaseConfirmRespDto>(this as PurchaseConfirmRespDto, _$identity);

  /// Serializes this PurchaseConfirmRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseConfirmRespDto&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.confirmedAt, confirmedAt) || other.confirmedAt == confirmedAt)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,confirmedAt,success);

@override
String toString() {
  return 'PurchaseConfirmRespDto(transactionId: $transactionId, confirmedAt: $confirmedAt, success: $success)';
}


}

/// @nodoc
abstract mixin class $PurchaseConfirmRespDtoCopyWith<$Res>  {
  factory $PurchaseConfirmRespDtoCopyWith(PurchaseConfirmRespDto value, $Res Function(PurchaseConfirmRespDto) _then) = _$PurchaseConfirmRespDtoCopyWithImpl;
@useResult
$Res call({
 int transactionId, String confirmedAt, bool success
});




}
/// @nodoc
class _$PurchaseConfirmRespDtoCopyWithImpl<$Res>
    implements $PurchaseConfirmRespDtoCopyWith<$Res> {
  _$PurchaseConfirmRespDtoCopyWithImpl(this._self, this._then);

  final PurchaseConfirmRespDto _self;
  final $Res Function(PurchaseConfirmRespDto) _then;

/// Create a copy of PurchaseConfirmRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? confirmedAt = null,Object? success = null,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,confirmedAt: null == confirmedAt ? _self.confirmedAt : confirmedAt // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PurchaseConfirmRespDto].
extension PurchaseConfirmRespDtoPatterns on PurchaseConfirmRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PurchaseConfirmRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PurchaseConfirmRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PurchaseConfirmRespDto value)  $default,){
final _that = this;
switch (_that) {
case _PurchaseConfirmRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PurchaseConfirmRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _PurchaseConfirmRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int transactionId,  String confirmedAt,  bool success)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PurchaseConfirmRespDto() when $default != null:
return $default(_that.transactionId,_that.confirmedAt,_that.success);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int transactionId,  String confirmedAt,  bool success)  $default,) {final _that = this;
switch (_that) {
case _PurchaseConfirmRespDto():
return $default(_that.transactionId,_that.confirmedAt,_that.success);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int transactionId,  String confirmedAt,  bool success)?  $default,) {final _that = this;
switch (_that) {
case _PurchaseConfirmRespDto() when $default != null:
return $default(_that.transactionId,_that.confirmedAt,_that.success);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PurchaseConfirmRespDto implements PurchaseConfirmRespDto {
  const _PurchaseConfirmRespDto({required this.transactionId, required this.confirmedAt, required this.success});
  factory _PurchaseConfirmRespDto.fromJson(Map<String, dynamic> json) => _$PurchaseConfirmRespDtoFromJson(json);

@override final  int transactionId;
@override final  String confirmedAt;
@override final  bool success;

/// Create a copy of PurchaseConfirmRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PurchaseConfirmRespDtoCopyWith<_PurchaseConfirmRespDto> get copyWith => __$PurchaseConfirmRespDtoCopyWithImpl<_PurchaseConfirmRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PurchaseConfirmRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PurchaseConfirmRespDto&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.confirmedAt, confirmedAt) || other.confirmedAt == confirmedAt)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,confirmedAt,success);

@override
String toString() {
  return 'PurchaseConfirmRespDto(transactionId: $transactionId, confirmedAt: $confirmedAt, success: $success)';
}


}

/// @nodoc
abstract mixin class _$PurchaseConfirmRespDtoCopyWith<$Res> implements $PurchaseConfirmRespDtoCopyWith<$Res> {
  factory _$PurchaseConfirmRespDtoCopyWith(_PurchaseConfirmRespDto value, $Res Function(_PurchaseConfirmRespDto) _then) = __$PurchaseConfirmRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int transactionId, String confirmedAt, bool success
});




}
/// @nodoc
class __$PurchaseConfirmRespDtoCopyWithImpl<$Res>
    implements _$PurchaseConfirmRespDtoCopyWith<$Res> {
  __$PurchaseConfirmRespDtoCopyWithImpl(this._self, this._then);

  final _PurchaseConfirmRespDto _self;
  final $Res Function(_PurchaseConfirmRespDto) _then;

/// Create a copy of PurchaseConfirmRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? confirmedAt = null,Object? success = null,}) {
  return _then(_PurchaseConfirmRespDto(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,confirmedAt: null == confirmedAt ? _self.confirmedAt : confirmedAt // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ImageUrlRefreshRespDto {

 String get imageUrl; String get expiresAt;
/// Create a copy of ImageUrlRefreshRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageUrlRefreshRespDtoCopyWith<ImageUrlRefreshRespDto> get copyWith => _$ImageUrlRefreshRespDtoCopyWithImpl<ImageUrlRefreshRespDto>(this as ImageUrlRefreshRespDto, _$identity);

  /// Serializes this ImageUrlRefreshRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageUrlRefreshRespDto&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageUrl,expiresAt);

@override
String toString() {
  return 'ImageUrlRefreshRespDto(imageUrl: $imageUrl, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class $ImageUrlRefreshRespDtoCopyWith<$Res>  {
  factory $ImageUrlRefreshRespDtoCopyWith(ImageUrlRefreshRespDto value, $Res Function(ImageUrlRefreshRespDto) _then) = _$ImageUrlRefreshRespDtoCopyWithImpl;
@useResult
$Res call({
 String imageUrl, String expiresAt
});




}
/// @nodoc
class _$ImageUrlRefreshRespDtoCopyWithImpl<$Res>
    implements $ImageUrlRefreshRespDtoCopyWith<$Res> {
  _$ImageUrlRefreshRespDtoCopyWithImpl(this._self, this._then);

  final ImageUrlRefreshRespDto _self;
  final $Res Function(ImageUrlRefreshRespDto) _then;

/// Create a copy of ImageUrlRefreshRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imageUrl = null,Object? expiresAt = null,}) {
  return _then(_self.copyWith(
imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ImageUrlRefreshRespDto].
extension ImageUrlRefreshRespDtoPatterns on ImageUrlRefreshRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImageUrlRefreshRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImageUrlRefreshRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImageUrlRefreshRespDto value)  $default,){
final _that = this;
switch (_that) {
case _ImageUrlRefreshRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImageUrlRefreshRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _ImageUrlRefreshRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String imageUrl,  String expiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImageUrlRefreshRespDto() when $default != null:
return $default(_that.imageUrl,_that.expiresAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String imageUrl,  String expiresAt)  $default,) {final _that = this;
switch (_that) {
case _ImageUrlRefreshRespDto():
return $default(_that.imageUrl,_that.expiresAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String imageUrl,  String expiresAt)?  $default,) {final _that = this;
switch (_that) {
case _ImageUrlRefreshRespDto() when $default != null:
return $default(_that.imageUrl,_that.expiresAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ImageUrlRefreshRespDto implements ImageUrlRefreshRespDto {
  const _ImageUrlRefreshRespDto({required this.imageUrl, required this.expiresAt});
  factory _ImageUrlRefreshRespDto.fromJson(Map<String, dynamic> json) => _$ImageUrlRefreshRespDtoFromJson(json);

@override final  String imageUrl;
@override final  String expiresAt;

/// Create a copy of ImageUrlRefreshRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageUrlRefreshRespDtoCopyWith<_ImageUrlRefreshRespDto> get copyWith => __$ImageUrlRefreshRespDtoCopyWithImpl<_ImageUrlRefreshRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImageUrlRefreshRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageUrlRefreshRespDto&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageUrl,expiresAt);

@override
String toString() {
  return 'ImageUrlRefreshRespDto(imageUrl: $imageUrl, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class _$ImageUrlRefreshRespDtoCopyWith<$Res> implements $ImageUrlRefreshRespDtoCopyWith<$Res> {
  factory _$ImageUrlRefreshRespDtoCopyWith(_ImageUrlRefreshRespDto value, $Res Function(_ImageUrlRefreshRespDto) _then) = __$ImageUrlRefreshRespDtoCopyWithImpl;
@override @useResult
$Res call({
 String imageUrl, String expiresAt
});




}
/// @nodoc
class __$ImageUrlRefreshRespDtoCopyWithImpl<$Res>
    implements _$ImageUrlRefreshRespDtoCopyWith<$Res> {
  __$ImageUrlRefreshRespDtoCopyWithImpl(this._self, this._then);

  final _ImageUrlRefreshRespDto _self;
  final $Res Function(_ImageUrlRefreshRespDto) _then;

/// Create a copy of ImageUrlRefreshRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageUrl = null,Object? expiresAt = null,}) {
  return _then(_ImageUrlRefreshRespDto(
imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
