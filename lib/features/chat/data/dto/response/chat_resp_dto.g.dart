// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatRoomRespDto _$ChatRoomRespDtoFromJson(Map<String, dynamic> json) =>
    _ChatRoomRespDto(
      roomId: (json['roomId'] as num).toInt(),
      ticket: TicketInfoDto.fromJson(json['ticket'] as Map<String, dynamic>),
      buyer: UserProfileDto.fromJson(json['buyer'] as Map<String, dynamic>),
      seller: UserProfileDto.fromJson(json['seller'] as Map<String, dynamic>),
      statusCode: json['statusCode'] as String,
      statusName: json['statusName'] as String,
      transaction: json['transaction'] == null
          ? null
          : TransactionDto.fromJson(
              json['transaction'] as Map<String, dynamic>,
            ),
      canSendMessage: json['canSendMessage'] as bool,
      canRequestPayment: json['canRequestPayment'] as bool,
      canConfirmPurchase: json['canConfirmPurchase'] as bool,
      canCancelTransaction: json['canCancelTransaction'] as bool,
      messages: (json['messages'] as List<dynamic>)
          .map((e) => MessageDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChatRoomRespDtoToJson(_ChatRoomRespDto instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'ticket': instance.ticket,
      'buyer': instance.buyer,
      'seller': instance.seller,
      'statusCode': instance.statusCode,
      'statusName': instance.statusName,
      'transaction': instance.transaction,
      'canSendMessage': instance.canSendMessage,
      'canRequestPayment': instance.canRequestPayment,
      'canConfirmPurchase': instance.canConfirmPurchase,
      'canCancelTransaction': instance.canCancelTransaction,
      'messages': instance.messages,
    };

_TicketInfoDto _$TicketInfoDtoFromJson(Map<String, dynamic> json) =>
    _TicketInfoDto(
      ticketId: (json['ticketId'] as num).toInt(),
      title: json['title'] as String,
      price: (json['price'] as num).toInt(),
      thumbnailUrl: json['thumbnailUrl'] as String?,
    );

Map<String, dynamic> _$TicketInfoDtoToJson(_TicketInfoDto instance) =>
    <String, dynamic>{
      'ticketId': instance.ticketId,
      'title': instance.title,
      'price': instance.price,
      'thumbnailUrl': instance.thumbnailUrl,
    };

_UserProfileDto _$UserProfileDtoFromJson(Map<String, dynamic> json) =>
    _UserProfileDto(
      userId: (json['userId'] as num).toInt(),
      nickname: json['nickname'] as String,
      profileImageUrl: json['profileImageUrl'] as String?,
      mannerTemperature: (json['mannerTemperature'] as num).toDouble(),
    );

Map<String, dynamic> _$UserProfileDtoToJson(_UserProfileDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'nickname': instance.nickname,
      'profileImageUrl': instance.profileImageUrl,
      'mannerTemperature': instance.mannerTemperature,
    };

_TransactionDto _$TransactionDtoFromJson(Map<String, dynamic> json) =>
    _TransactionDto(
      transactionId: (json['transactionId'] as num).toInt(),
      statusCode: json['statusCode'] as String,
      statusName: json['statusName'] as String,
      amount: (json['amount'] as num).toInt(),
      paymentUrl: json['paymentUrl'] as String?,
      confirmedAt: json['confirmedAt'] as String?,
      cancelReason: json['cancelReason'] as String?,
    );

Map<String, dynamic> _$TransactionDtoToJson(_TransactionDto instance) =>
    <String, dynamic>{
      'transactionId': instance.transactionId,
      'statusCode': instance.statusCode,
      'statusName': instance.statusName,
      'amount': instance.amount,
      'paymentUrl': instance.paymentUrl,
      'confirmedAt': instance.confirmedAt,
      'cancelReason': instance.cancelReason,
    };

_MessageDto _$MessageDtoFromJson(Map<String, dynamic> json) => _MessageDto(
  messageId: (json['messageId'] as num).toInt(),
  roomId: (json['roomId'] as num).toInt(),
  senderId: (json['senderId'] as num).toInt(),
  senderNickname: json['senderNickname'] as String,
  senderProfileImage: json['senderProfileImage'] as String?,
  message: json['message'] as String?,
  imageUrl: json['imageUrl'] as String?,
  createdAt: json['createdAt'] as String,
  isMyMessage: json['isMyMessage'] as bool,
);

Map<String, dynamic> _$MessageDtoToJson(_MessageDto instance) =>
    <String, dynamic>{
      'messageId': instance.messageId,
      'roomId': instance.roomId,
      'senderId': instance.senderId,
      'senderNickname': instance.senderNickname,
      'senderProfileImage': instance.senderProfileImage,
      'message': instance.message,
      'imageUrl': instance.imageUrl,
      'createdAt': instance.createdAt,
      'isMyMessage': instance.isMyMessage,
    };

_ChatRoomListItemDto _$ChatRoomListItemDtoFromJson(Map<String, dynamic> json) =>
    _ChatRoomListItemDto(
      roomId: (json['roomId'] as num).toInt(),
      ticketId: (json['ticketId'] as num).toInt(),
      ticketTitle: json['ticketTitle'] as String,
      otherUser: OtherUserDto.fromJson(
        json['otherUser'] as Map<String, dynamic>,
      ),
      lastMessage: json['lastMessage'] as String?,
      lastMessageAt: json['lastMessageAt'] as String?,
      unreadCount: (json['unreadCount'] as num).toInt(),
      roomStatusCode: json['roomStatusCode'] as String,
      roomStatusName: json['roomStatusName'] as String,
      transactionId: (json['transactionId'] as num?)?.toInt(),
      transactionStatusCode: json['transactionStatusCode'] as String?,
      transactionStatusName: json['transactionStatusName'] as String?,
    );

Map<String, dynamic> _$ChatRoomListItemDtoToJson(
  _ChatRoomListItemDto instance,
) => <String, dynamic>{
  'roomId': instance.roomId,
  'ticketId': instance.ticketId,
  'ticketTitle': instance.ticketTitle,
  'otherUser': instance.otherUser,
  'lastMessage': instance.lastMessage,
  'lastMessageAt': instance.lastMessageAt,
  'unreadCount': instance.unreadCount,
  'roomStatusCode': instance.roomStatusCode,
  'roomStatusName': instance.roomStatusName,
  'transactionId': instance.transactionId,
  'transactionStatusCode': instance.transactionStatusCode,
  'transactionStatusName': instance.transactionStatusName,
};

_OtherUserDto _$OtherUserDtoFromJson(Map<String, dynamic> json) =>
    _OtherUserDto(
      userId: (json['userId'] as num).toInt(),
      nickname: json['nickname'] as String,
      profileImageUrl: json['profileImageUrl'] as String?,
    );

Map<String, dynamic> _$OtherUserDtoToJson(_OtherUserDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'nickname': instance.nickname,
      'profileImageUrl': instance.profileImageUrl,
    };

_SendMessageRespDto _$SendMessageRespDtoFromJson(Map<String, dynamic> json) =>
    _SendMessageRespDto(
      messageId: (json['messageId'] as num).toInt(),
      roomId: (json['roomId'] as num).toInt(),
      senderId: (json['senderId'] as num).toInt(),
      senderNickname: json['senderNickname'] as String,
      senderProfileImage: json['senderProfileImage'] as String?,
      message: json['message'] as String?,
      imageUrl: json['imageUrl'] as String?,
      createdAt: json['createdAt'] as String,
      success: json['success'] as bool,
    );

Map<String, dynamic> _$SendMessageRespDtoToJson(_SendMessageRespDto instance) =>
    <String, dynamic>{
      'messageId': instance.messageId,
      'roomId': instance.roomId,
      'senderId': instance.senderId,
      'senderNickname': instance.senderNickname,
      'senderProfileImage': instance.senderProfileImage,
      'message': instance.message,
      'imageUrl': instance.imageUrl,
      'createdAt': instance.createdAt,
      'success': instance.success,
    };

_PaymentRequestRespDto _$PaymentRequestRespDtoFromJson(
  Map<String, dynamic> json,
) => _PaymentRequestRespDto(
  paymentUrl: json['paymentUrl'] as String,
  transactionId: (json['transactionId'] as num).toInt(),
  amount: (json['amount'] as num).toInt(),
);

Map<String, dynamic> _$PaymentRequestRespDtoToJson(
  _PaymentRequestRespDto instance,
) => <String, dynamic>{
  'paymentUrl': instance.paymentUrl,
  'transactionId': instance.transactionId,
  'amount': instance.amount,
};

_PurchaseConfirmRespDto _$PurchaseConfirmRespDtoFromJson(
  Map<String, dynamic> json,
) => _PurchaseConfirmRespDto(
  transactionId: (json['transactionId'] as num).toInt(),
  confirmedAt: json['confirmedAt'] as String,
  success: json['success'] as bool,
);

Map<String, dynamic> _$PurchaseConfirmRespDtoToJson(
  _PurchaseConfirmRespDto instance,
) => <String, dynamic>{
  'transactionId': instance.transactionId,
  'confirmedAt': instance.confirmedAt,
  'success': instance.success,
};

_ImageUrlRefreshRespDto _$ImageUrlRefreshRespDtoFromJson(
  Map<String, dynamic> json,
) => _ImageUrlRefreshRespDto(
  imageUrl: json['imageUrl'] as String,
  expiresAt: json['expiresAt'] as String,
);

Map<String, dynamic> _$ImageUrlRefreshRespDtoToJson(
  _ImageUrlRefreshRespDto instance,
) => <String, dynamic>{
  'imageUrl': instance.imageUrl,
  'expiresAt': instance.expiresAt,
};
