// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_room_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatRoomDetailUiModel {

 int get roomId; TicketInfoUiModel get ticket; UserProfileUiModel get buyer; UserProfileUiModel get seller; String get statusCode; String get statusName; TransactionUiModel? get transaction; bool get canSendMessage; bool get canRequestPayment; bool get canConfirmPurchase; bool get canCancelTransaction; List<MessageUiModel> get messages;
/// Create a copy of ChatRoomDetailUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatRoomDetailUiModelCopyWith<ChatRoomDetailUiModel> get copyWith => _$ChatRoomDetailUiModelCopyWithImpl<ChatRoomDetailUiModel>(this as ChatRoomDetailUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatRoomDetailUiModel&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.ticket, ticket) || other.ticket == ticket)&&(identical(other.buyer, buyer) || other.buyer == buyer)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.transaction, transaction) || other.transaction == transaction)&&(identical(other.canSendMessage, canSendMessage) || other.canSendMessage == canSendMessage)&&(identical(other.canRequestPayment, canRequestPayment) || other.canRequestPayment == canRequestPayment)&&(identical(other.canConfirmPurchase, canConfirmPurchase) || other.canConfirmPurchase == canConfirmPurchase)&&(identical(other.canCancelTransaction, canCancelTransaction) || other.canCancelTransaction == canCancelTransaction)&&const DeepCollectionEquality().equals(other.messages, messages));
}


@override
int get hashCode => Object.hash(runtimeType,roomId,ticket,buyer,seller,statusCode,statusName,transaction,canSendMessage,canRequestPayment,canConfirmPurchase,canCancelTransaction,const DeepCollectionEquality().hash(messages));

@override
String toString() {
  return 'ChatRoomDetailUiModel(roomId: $roomId, ticket: $ticket, buyer: $buyer, seller: $seller, statusCode: $statusCode, statusName: $statusName, transaction: $transaction, canSendMessage: $canSendMessage, canRequestPayment: $canRequestPayment, canConfirmPurchase: $canConfirmPurchase, canCancelTransaction: $canCancelTransaction, messages: $messages)';
}


}

/// @nodoc
abstract mixin class $ChatRoomDetailUiModelCopyWith<$Res>  {
  factory $ChatRoomDetailUiModelCopyWith(ChatRoomDetailUiModel value, $Res Function(ChatRoomDetailUiModel) _then) = _$ChatRoomDetailUiModelCopyWithImpl;
@useResult
$Res call({
 int roomId, TicketInfoUiModel ticket, UserProfileUiModel buyer, UserProfileUiModel seller, String statusCode, String statusName, TransactionUiModel? transaction, bool canSendMessage, bool canRequestPayment, bool canConfirmPurchase, bool canCancelTransaction, List<MessageUiModel> messages
});




}
/// @nodoc
class _$ChatRoomDetailUiModelCopyWithImpl<$Res>
    implements $ChatRoomDetailUiModelCopyWith<$Res> {
  _$ChatRoomDetailUiModelCopyWithImpl(this._self, this._then);

  final ChatRoomDetailUiModel _self;
  final $Res Function(ChatRoomDetailUiModel) _then;

/// Create a copy of ChatRoomDetailUiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roomId = null,Object? ticket = null,Object? buyer = null,Object? seller = null,Object? statusCode = null,Object? statusName = null,Object? transaction = freezed,Object? canSendMessage = null,Object? canRequestPayment = null,Object? canConfirmPurchase = null,Object? canCancelTransaction = null,Object? messages = null,}) {
  return _then(_self.copyWith(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,ticket: null == ticket ? _self.ticket : ticket // ignore: cast_nullable_to_non_nullable
as TicketInfoUiModel,buyer: null == buyer ? _self.buyer : buyer // ignore: cast_nullable_to_non_nullable
as UserProfileUiModel,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as UserProfileUiModel,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,transaction: freezed == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as TransactionUiModel?,canSendMessage: null == canSendMessage ? _self.canSendMessage : canSendMessage // ignore: cast_nullable_to_non_nullable
as bool,canRequestPayment: null == canRequestPayment ? _self.canRequestPayment : canRequestPayment // ignore: cast_nullable_to_non_nullable
as bool,canConfirmPurchase: null == canConfirmPurchase ? _self.canConfirmPurchase : canConfirmPurchase // ignore: cast_nullable_to_non_nullable
as bool,canCancelTransaction: null == canCancelTransaction ? _self.canCancelTransaction : canCancelTransaction // ignore: cast_nullable_to_non_nullable
as bool,messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<MessageUiModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatRoomDetailUiModel].
extension ChatRoomDetailUiModelPatterns on ChatRoomDetailUiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatRoomDetailUiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatRoomDetailUiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatRoomDetailUiModel value)  $default,){
final _that = this;
switch (_that) {
case _ChatRoomDetailUiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatRoomDetailUiModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChatRoomDetailUiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int roomId,  TicketInfoUiModel ticket,  UserProfileUiModel buyer,  UserProfileUiModel seller,  String statusCode,  String statusName,  TransactionUiModel? transaction,  bool canSendMessage,  bool canRequestPayment,  bool canConfirmPurchase,  bool canCancelTransaction,  List<MessageUiModel> messages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatRoomDetailUiModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int roomId,  TicketInfoUiModel ticket,  UserProfileUiModel buyer,  UserProfileUiModel seller,  String statusCode,  String statusName,  TransactionUiModel? transaction,  bool canSendMessage,  bool canRequestPayment,  bool canConfirmPurchase,  bool canCancelTransaction,  List<MessageUiModel> messages)  $default,) {final _that = this;
switch (_that) {
case _ChatRoomDetailUiModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int roomId,  TicketInfoUiModel ticket,  UserProfileUiModel buyer,  UserProfileUiModel seller,  String statusCode,  String statusName,  TransactionUiModel? transaction,  bool canSendMessage,  bool canRequestPayment,  bool canConfirmPurchase,  bool canCancelTransaction,  List<MessageUiModel> messages)?  $default,) {final _that = this;
switch (_that) {
case _ChatRoomDetailUiModel() when $default != null:
return $default(_that.roomId,_that.ticket,_that.buyer,_that.seller,_that.statusCode,_that.statusName,_that.transaction,_that.canSendMessage,_that.canRequestPayment,_that.canConfirmPurchase,_that.canCancelTransaction,_that.messages);case _:
  return null;

}
}

}

/// @nodoc


class _ChatRoomDetailUiModel implements ChatRoomDetailUiModel {
  const _ChatRoomDetailUiModel({required this.roomId, required this.ticket, required this.buyer, required this.seller, required this.statusCode, required this.statusName, this.transaction, required this.canSendMessage, required this.canRequestPayment, required this.canConfirmPurchase, required this.canCancelTransaction, required final  List<MessageUiModel> messages}): _messages = messages;
  

@override final  int roomId;
@override final  TicketInfoUiModel ticket;
@override final  UserProfileUiModel buyer;
@override final  UserProfileUiModel seller;
@override final  String statusCode;
@override final  String statusName;
@override final  TransactionUiModel? transaction;
@override final  bool canSendMessage;
@override final  bool canRequestPayment;
@override final  bool canConfirmPurchase;
@override final  bool canCancelTransaction;
 final  List<MessageUiModel> _messages;
@override List<MessageUiModel> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}


/// Create a copy of ChatRoomDetailUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatRoomDetailUiModelCopyWith<_ChatRoomDetailUiModel> get copyWith => __$ChatRoomDetailUiModelCopyWithImpl<_ChatRoomDetailUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatRoomDetailUiModel&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.ticket, ticket) || other.ticket == ticket)&&(identical(other.buyer, buyer) || other.buyer == buyer)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusName, statusName) || other.statusName == statusName)&&(identical(other.transaction, transaction) || other.transaction == transaction)&&(identical(other.canSendMessage, canSendMessage) || other.canSendMessage == canSendMessage)&&(identical(other.canRequestPayment, canRequestPayment) || other.canRequestPayment == canRequestPayment)&&(identical(other.canConfirmPurchase, canConfirmPurchase) || other.canConfirmPurchase == canConfirmPurchase)&&(identical(other.canCancelTransaction, canCancelTransaction) || other.canCancelTransaction == canCancelTransaction)&&const DeepCollectionEquality().equals(other._messages, _messages));
}


@override
int get hashCode => Object.hash(runtimeType,roomId,ticket,buyer,seller,statusCode,statusName,transaction,canSendMessage,canRequestPayment,canConfirmPurchase,canCancelTransaction,const DeepCollectionEquality().hash(_messages));

@override
String toString() {
  return 'ChatRoomDetailUiModel(roomId: $roomId, ticket: $ticket, buyer: $buyer, seller: $seller, statusCode: $statusCode, statusName: $statusName, transaction: $transaction, canSendMessage: $canSendMessage, canRequestPayment: $canRequestPayment, canConfirmPurchase: $canConfirmPurchase, canCancelTransaction: $canCancelTransaction, messages: $messages)';
}


}

/// @nodoc
abstract mixin class _$ChatRoomDetailUiModelCopyWith<$Res> implements $ChatRoomDetailUiModelCopyWith<$Res> {
  factory _$ChatRoomDetailUiModelCopyWith(_ChatRoomDetailUiModel value, $Res Function(_ChatRoomDetailUiModel) _then) = __$ChatRoomDetailUiModelCopyWithImpl;
@override @useResult
$Res call({
 int roomId, TicketInfoUiModel ticket, UserProfileUiModel buyer, UserProfileUiModel seller, String statusCode, String statusName, TransactionUiModel? transaction, bool canSendMessage, bool canRequestPayment, bool canConfirmPurchase, bool canCancelTransaction, List<MessageUiModel> messages
});




}
/// @nodoc
class __$ChatRoomDetailUiModelCopyWithImpl<$Res>
    implements _$ChatRoomDetailUiModelCopyWith<$Res> {
  __$ChatRoomDetailUiModelCopyWithImpl(this._self, this._then);

  final _ChatRoomDetailUiModel _self;
  final $Res Function(_ChatRoomDetailUiModel) _then;

/// Create a copy of ChatRoomDetailUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roomId = null,Object? ticket = null,Object? buyer = null,Object? seller = null,Object? statusCode = null,Object? statusName = null,Object? transaction = freezed,Object? canSendMessage = null,Object? canRequestPayment = null,Object? canConfirmPurchase = null,Object? canCancelTransaction = null,Object? messages = null,}) {
  return _then(_ChatRoomDetailUiModel(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,ticket: null == ticket ? _self.ticket : ticket // ignore: cast_nullable_to_non_nullable
as TicketInfoUiModel,buyer: null == buyer ? _self.buyer : buyer // ignore: cast_nullable_to_non_nullable
as UserProfileUiModel,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as UserProfileUiModel,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,transaction: freezed == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as TransactionUiModel?,canSendMessage: null == canSendMessage ? _self.canSendMessage : canSendMessage // ignore: cast_nullable_to_non_nullable
as bool,canRequestPayment: null == canRequestPayment ? _self.canRequestPayment : canRequestPayment // ignore: cast_nullable_to_non_nullable
as bool,canConfirmPurchase: null == canConfirmPurchase ? _self.canConfirmPurchase : canConfirmPurchase // ignore: cast_nullable_to_non_nullable
as bool,canCancelTransaction: null == canCancelTransaction ? _self.canCancelTransaction : canCancelTransaction // ignore: cast_nullable_to_non_nullable
as bool,messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<MessageUiModel>,
  ));
}


}

// dart format on
