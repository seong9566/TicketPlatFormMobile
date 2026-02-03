import 'package:ticket_platform_mobile/core/utils/date_format_util.dart';
import 'package:ticket_platform_mobile/core/utils/number_format_util.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/chat_room_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/message_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/transaction_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/user_profile_entity.dart';

class ImageInfoUiModel {
  final String url;
  final DateTime? expiresAt;

  ImageInfoUiModel({required this.url, this.expiresAt});

  factory ImageInfoUiModel.fromEntity(ImageInfoEntity entity) {
    return ImageInfoUiModel(url: entity.url, expiresAt: entity.expiresAt);
  }
}

class ChatRoomListUiModel {
  final int roomId;
  final int ticketId;
  final String ticketTitle;
  final String? ticketThumbnailUrl;
  final String otherUserNickname;
  final String? otherUserProfileImageUrl;
  final String lastMessage;
  final String timeDisplay;
  final int unreadCount;
  final String roomStatusCode;
  final String roomStatusName;
  final int? transactionId;
  final String? transactionStatusCode;
  final String? transactionStatusName;

  ChatRoomListUiModel({
    required this.roomId,
    required this.ticketId,
    required this.ticketTitle,
    this.ticketThumbnailUrl,
    required this.otherUserNickname,
    this.otherUserProfileImageUrl,
    required this.lastMessage,
    required this.timeDisplay,
    this.unreadCount = 0,
    required this.roomStatusCode,
    required this.roomStatusName,
    this.transactionId,
    this.transactionStatusCode,
    this.transactionStatusName,
  });

  factory ChatRoomListUiModel.fromEntity(ChatRoomListItemEntity entity) {
    return ChatRoomListUiModel(
      roomId: entity.roomId,
      ticketId: entity.ticketId,
      ticketTitle: entity.ticketTitle,
      ticketThumbnailUrl: entity.ticketThumbnailUrl,
      otherUserNickname: entity.otherUser.nickname,
      otherUserProfileImageUrl: entity.otherUser.profileImageUrl,
      lastMessage: entity.lastMessage ?? '',
      timeDisplay: DateFormatUtil.formatChatTime(entity.lastMessageAt),
      unreadCount: entity.unreadCount,
      roomStatusCode: entity.roomStatusCode,
      roomStatusName: entity.roomStatusName,
      transactionId: entity.transactionId,
      transactionStatusCode: entity.transactionStatusCode,
      transactionStatusName: entity.transactionStatusName,
    );
  }
}

class ChatRoomDetailUiModel {
  final int roomId;
  final TicketInfoUiModel ticket;
  final UserProfileUiModel buyer;
  final UserProfileUiModel seller;
  final String statusCode;
  final String statusName;
  final TransactionUiModel? transaction;
  final bool canSendMessage;
  final bool canRequestPayment;
  final bool canConfirmPurchase;
  final bool canCancelTransaction;
  final List<MessageUiModel> messages;

  ChatRoomDetailUiModel({
    required this.roomId,
    required this.ticket,
    required this.buyer,
    required this.seller,
    required this.statusCode,
    required this.statusName,
    this.transaction,
    required this.canSendMessage,
    required this.canRequestPayment,
    required this.canConfirmPurchase,
    required this.canCancelTransaction,
    required this.messages,
  });

  factory ChatRoomDetailUiModel.fromEntity(ChatRoomEntity entity) {
    return ChatRoomDetailUiModel(
      roomId: entity.roomId,
      ticket: TicketInfoUiModel.fromEntity(entity.ticket),
      buyer: UserProfileUiModel.fromEntity(entity.buyer),
      seller: UserProfileUiModel.fromEntity(entity.seller),
      statusCode: entity.statusCode,
      statusName: entity.statusName,
      transaction: entity.transaction != null
          ? TransactionUiModel.fromEntity(entity.transaction!)
          : null,
      canSendMessage: entity.canSendMessage,
      canRequestPayment: entity.canRequestPayment,
      canConfirmPurchase: entity.canConfirmPurchase,
      canCancelTransaction: entity.canCancelTransaction,
      messages: entity.messages.map(MessageUiModel.fromEntity).toList(),
    );
  }

  ChatRoomDetailUiModel copyWith({
    int? roomId,
    TicketInfoUiModel? ticket,
    UserProfileUiModel? buyer,
    UserProfileUiModel? seller,
    String? statusCode,
    String? statusName,
    TransactionUiModel? transaction,
    bool? canSendMessage,
    bool? canRequestPayment,
    bool? canConfirmPurchase,
    bool? canCancelTransaction,
    List<MessageUiModel>? messages,
  }) {
    return ChatRoomDetailUiModel(
      roomId: roomId ?? this.roomId,
      ticket: ticket ?? this.ticket,
      buyer: buyer ?? this.buyer,
      seller: seller ?? this.seller,
      statusCode: statusCode ?? this.statusCode,
      statusName: statusName ?? this.statusName,
      transaction: transaction ?? this.transaction,
      canSendMessage: canSendMessage ?? this.canSendMessage,
      canRequestPayment: canRequestPayment ?? this.canRequestPayment,
      canConfirmPurchase: canConfirmPurchase ?? this.canConfirmPurchase,
      canCancelTransaction: canCancelTransaction ?? this.canCancelTransaction,
      messages: messages ?? this.messages,
    );
  }
}

class TicketInfoUiModel {
  final int ticketId;
  final String title;
  final String price;
  final int priceValue;
  final String? thumbnailUrl;
  final String? seatInfo;
  final String? dateTime;
  final String? location;
  final int? totalQuantity;
  final int? remainingQuantity;

  TicketInfoUiModel({
    required this.ticketId,
    required this.title,
    required this.price,
    required this.priceValue,
    this.thumbnailUrl,
    this.seatInfo,
    this.dateTime,
    this.location,
    this.totalQuantity,
    this.remainingQuantity,
  });

  factory TicketInfoUiModel.fromEntity(TicketInfoEntity entity) {
    return TicketInfoUiModel(
      ticketId: entity.ticketId,
      title: entity.title,
      price: NumberFormatUtil.formatPrice(entity.price),
      priceValue: entity.price,
      thumbnailUrl: entity.thumbnailUrl,
      seatInfo: entity.seatInfo,
      dateTime: entity.eventDateTime != null
          ? DateFormatUtil.formatDateTime(entity.eventDateTime!)
          : null,
      location: entity.venueName,
      totalQuantity: entity.totalQuantity,
      remainingQuantity: entity.remainingQuantity,
    );
  }
}

class UserProfileUiModel {
  final int userId;
  final String nickname;
  final String? profileImageUrl;
  final String mannerTemperature;
  final double mannerTemperatureValue;

  UserProfileUiModel({
    required this.userId,
    required this.nickname,
    this.profileImageUrl,
    required this.mannerTemperature,
    required this.mannerTemperatureValue,
  });

  factory UserProfileUiModel.fromEntity(UserProfileEntity entity) {
    return UserProfileUiModel(
      userId: entity.userId,
      nickname: entity.nickname,
      profileImageUrl: entity.profileImageUrl,
      mannerTemperature: '${entity.mannerTemperature}°C',
      mannerTemperatureValue: entity.mannerTemperature,
    );
  }
}

class TransactionUiModel {
  final int transactionId;
  final TransactionStatus status;
  final String statusName;
  final String? confirmedAt;
  final String? cancelledAt;
  TransactionUiModel({
    required this.transactionId,
    required this.status,
    required this.statusName,
    this.confirmedAt,
    this.cancelledAt,
  });

  factory TransactionUiModel.fromEntity(TransactionEntity entity) {
    return TransactionUiModel(
      transactionId: entity.transactionId,
      status: entity.status,
      statusName: entity.statusName,
      confirmedAt: entity.confirmedAt?.toIso8601String(),
      cancelledAt: entity.cancelledAt?.toIso8601String(),
    );
  }
}

class MessageUiModel {
  final int messageId;
  final int roomId;
  final int senderId;
  final String senderNickname;
  final String? senderProfileImage;
  final String? message;
  final List<ImageInfoUiModel>? images;
  final MessageType type;
  final DateTime createdAt;
  final String timeDisplay;
  final bool isMyMessage;

  MessageUiModel({
    required this.messageId,
    required this.roomId,
    required this.senderId,
    required this.senderNickname,
    this.senderProfileImage,
    this.message,
    this.images,
    required this.type,
    required this.createdAt,
    required this.timeDisplay,
    required this.isMyMessage,
  });

  factory MessageUiModel.fromEntity(MessageEntity entity) {
    return MessageUiModel(
      messageId: entity.messageId,
      roomId: entity.roomId,
      senderId: entity.senderId,
      senderNickname: entity.senderNickname,
      senderProfileImage: entity.senderProfileImage,
      message: entity.message,
      images: entity.images?.map(ImageInfoUiModel.fromEntity).toList(),
      type: entity.type,
      createdAt: entity.createdAt,
      timeDisplay: DateFormatUtil.formatChatTime(entity.createdAt),
      isMyMessage: entity.isMyMessage,
    );
  }

  MessageUiModel copyWith({
    int? messageId,
    int? roomId,
    int? senderId,
    String? senderNickname,
    String? senderProfileImage,
    String? message,
    List<ImageInfoUiModel>? images,
    MessageType? type,
    DateTime? createdAt,
    String? timeDisplay,
    bool? isMyMessage,
  }) {
    return MessageUiModel(
      messageId: messageId ?? this.messageId,
      roomId: roomId ?? this.roomId,
      senderId: senderId ?? this.senderId,
      senderNickname: senderNickname ?? this.senderNickname,
      senderProfileImage: senderProfileImage ?? this.senderProfileImage,
      message: message ?? this.message,
      images: images ?? this.images,
      type: type ?? this.type,
      createdAt: createdAt ?? this.createdAt,
      timeDisplay: timeDisplay ?? this.timeDisplay,
      isMyMessage: isMyMessage ?? this.isMyMessage,
    );
  }
}
