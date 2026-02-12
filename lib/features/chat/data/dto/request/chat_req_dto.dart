import 'package:ticket_platform_mobile/core/utils/logger.dart';

class CreateChatRoomReqDto {
  final int ticketId;

  CreateChatRoomReqDto({required this.ticketId});

  Map<String, dynamic> toMap() {
    return {'ticketId': ticketId};
  }
}

class SendMessageReqDto {
  final int roomId;
  final String? message;

  SendMessageReqDto({required this.roomId, this.message});

  Map<String, dynamic> toMap() {
    return {'roomId': roomId, if (message != null) 'message': message};
  }
}

/// 메시지 읽음 처리 요청 DTO
class MarkAsReadReqDto {
  final int roomId;

  MarkAsReadReqDto({required this.roomId});

  Map<String, dynamic> toMap() {
    return {'roomId': roomId};
  }
}

class RequestPaymentReqDto {
  final int roomId;
  final int quantity;

  RequestPaymentReqDto({required this.roomId, required this.quantity});

  Map<String, dynamic> toMap() {
    final map = {'roomId': roomId, 'quantity': quantity};
    AppLogger.d('📤 [RequestPaymentReqDto] toMap: $map');
    return map;
  }
}

class ConfirmPurchaseReqDto {
  final int roomId;
  final int transactionId;

  ConfirmPurchaseReqDto({required this.roomId, required this.transactionId});

  Map<String, dynamic> toMap() {
    return {'roomId': roomId, 'transactionId': transactionId};
  }
}

class CancelTransactionReqDto {
  final int roomId;
  final int transactionId;
  final String cancelReason;

  CancelTransactionReqDto({
    required this.roomId,
    required this.transactionId,
    required this.cancelReason,
  });

  Map<String, dynamic> toMap() {
    return {
      'roomId': roomId,
      'transactionId': transactionId,
      'cancelReason': cancelReason,
    };
  }
}

class LeaveChatRoomReqDto {
  final int roomId;

  LeaveChatRoomReqDto({required this.roomId});

  Map<String, dynamic> toMap() {
    return {'roomId': roomId};
  }
}
