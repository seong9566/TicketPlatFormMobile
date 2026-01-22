import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/date_format_util.dart';
import 'package:ticket_platform_mobile/core/utils/number_format_util.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/chat_room_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/message_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/transaction_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/user_profile_entity.dart';

part 'chat_room_ui_model.freezed.dart';

class ImageInfoUiModel {
  final String url;
  final DateTime? expiresAt;

  ImageInfoUiModel({
    required this.url,
    this.expiresAt,
  });

  factory ImageInfoUiModel.fromEntity(ImageInfoEntity entity) {
    return ImageInfoUiModel(
      url: entity.url,
      expiresAt: entity.expiresAt,
    );
  }
}

class ChatRoomListUiModel {
  final int roomId;
  final int ticketId;
  final String ticketTitle;
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

@freezed
abstract class ChatRoomDetailUiModel with _$ChatRoomDetailUiModel {
  const factory ChatRoomDetailUiModel({
    required int roomId,
    required TicketInfoUiModel ticket,
    required UserProfileUiModel buyer,
    required UserProfileUiModel seller,
    required String statusCode,
    required String statusName,
    TransactionUiModel? transaction,
    required bool canSendMessage,
    required bool canRequestPayment,
    required bool canConfirmPurchase,
    required bool canCancelTransaction,
    required List<MessageUiModel> messages,
  }) = _ChatRoomDetailUiModel;

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

  TicketInfoUiModel({
    required this.ticketId,
    required this.title,
    required this.price,
    required this.priceValue,
    this.thumbnailUrl,
    this.seatInfo,
    this.dateTime,
    this.location,
  });

  factory TicketInfoUiModel.fromEntity(TicketInfoEntity entity) {
    return TicketInfoUiModel(
      ticketId: entity.ticketId,
      title: entity.title,
      price: NumberFormatUtil.formatPrice(entity.price),
      priceValue: entity.price,
      thumbnailUrl: entity.thumbnailUrl,
      // TODO: API에서 상세 정보를 내려주면 연동 필요. 현재는 더미 데이터로 UI 구현.
      seatInfo: '1층 VIP A구역 3열 15번',
      dateTime: '2025.02.14 (금) 19:30',
      location: '블루스퀘어 신한카드홀',
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
  final String statusCode;
  final String statusName;
  final String amount;
  final int amountValue;
  final String? paymentUrl;
  final String? confirmedAt;
  final String? cancelReason;

  TransactionUiModel({
    required this.transactionId,
    required this.statusCode,
    required this.statusName,
    required this.amount,
    required this.amountValue,
    this.paymentUrl,
    this.confirmedAt,
    this.cancelReason,
  });

  factory TransactionUiModel.fromEntity(TransactionEntity entity) {
    return TransactionUiModel(
      transactionId: entity.transactionId,
      statusCode: entity.statusCode,
      statusName: entity.statusName,
      amount: NumberFormatUtil.formatPrice(entity.amount),
      amountValue: entity.amount,
      paymentUrl: entity.paymentUrl,
      confirmedAt: entity.confirmedAt?.toIso8601String(),
      cancelReason: entity.cancelReason,
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
  @Deprecated('Use images instead')
  final String? imageUrl;
  final List<ImageInfoUiModel>? images;
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
    this.imageUrl,
    this.images,
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
      imageUrl: entity.imageUrl,
      images: entity.images?.map(ImageInfoUiModel.fromEntity).toList(),
      createdAt: entity.createdAt,
      timeDisplay: DateFormatUtil.formatChatTime(entity.createdAt),
      isMyMessage: entity.isMyMessage,
    );
  }
}
