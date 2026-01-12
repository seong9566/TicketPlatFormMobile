import 'package:ticket_platform_mobile/features/chat/domain/entities/chat_room_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/message_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/transaction_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/user_profile_entity.dart';

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
      timeDisplay: _formatTime(entity.lastMessageAt),
      unreadCount: entity.unreadCount,
      roomStatusCode: entity.roomStatusCode,
      roomStatusName: entity.roomStatusName,
      transactionId: entity.transactionId,
      transactionStatusCode: entity.transactionStatusCode,
      transactionStatusName: entity.transactionStatusName,
    );
  }

  static String _formatTime(DateTime? dateTime) {
    if (dateTime == null) return '';

    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));
    final messageDate = DateTime(dateTime.year, dateTime.month, dateTime.day);

    if (messageDate == today) {
      final hour = dateTime.hour;
      final minute = dateTime.minute.toString().padLeft(2, '0');
      final period = hour < 12 ? '오전' : '오후';
      final displayHour = hour == 0 ? 12 : (hour > 12 ? hour - 12 : hour);
      return '$period $displayHour:$minute';
    } else if (messageDate == yesterday) {
      return '어제';
    } else if (now.difference(dateTime).inDays < 7) {
      const weekdays = ['월', '화', '수', '목', '금', '토', '일'];
      return '${weekdays[dateTime.weekday - 1]}요일';
    } else {
      return '${dateTime.month}월${dateTime.day}일';
    }
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
}

class TicketInfoUiModel {
  final int ticketId;
  final String title;
  final String price;
  final int priceValue;
  final String? thumbnailUrl;

  TicketInfoUiModel({
    required this.ticketId,
    required this.title,
    required this.price,
    required this.priceValue,
    this.thumbnailUrl,
  });

  factory TicketInfoUiModel.fromEntity(TicketInfoEntity entity) {
    return TicketInfoUiModel(
      ticketId: entity.ticketId,
      title: entity.title,
      price: '${_formatNumber(entity.price)}원',
      priceValue: entity.price,
      thumbnailUrl: entity.thumbnailUrl,
    );
  }

  static String _formatNumber(int number) {
    return number.toString().replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (Match m) => '${m[1]},',
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
      amount: '${_formatNumber(entity.amount)}원',
      amountValue: entity.amount,
      paymentUrl: entity.paymentUrl,
      confirmedAt: entity.confirmedAt?.toIso8601String(),
      cancelReason: entity.cancelReason,
    );
  }

  static String _formatNumber(int number) {
    return number.toString().replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (Match m) => '${m[1]},',
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
  final String? imageUrl;
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
      createdAt: entity.createdAt,
      timeDisplay: _formatTime(entity.createdAt),
      isMyMessage: entity.isMyMessage,
    );
  }

  static String _formatTime(DateTime dateTime) {
    final hour = dateTime.hour;
    final minute = dateTime.minute.toString().padLeft(2, '0');
    final period = hour < 12 ? '오전' : '오후';
    final displayHour = hour == 0 ? 12 : (hour > 12 ? hour - 12 : hour);
    return '$period $displayHour:$minute';
  }
}
