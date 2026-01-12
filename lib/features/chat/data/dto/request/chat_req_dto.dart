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
    return {
      'roomId': roomId,
      if (message != null) 'message': message,
    };
  }
}

class RequestPaymentReqDto {
  final int transactionId;

  RequestPaymentReqDto({required this.transactionId});

  Map<String, dynamic> toMap() {
    return {'transactionId': transactionId};
  }
}

class ConfirmPurchaseReqDto {
  final int transactionId;

  ConfirmPurchaseReqDto({required this.transactionId});

  Map<String, dynamic> toMap() {
    return {'transactionId': transactionId};
  }
}

class CancelTransactionReqDto {
  final int transactionId;
  final String cancelReason;

  CancelTransactionReqDto({
    required this.transactionId,
    required this.cancelReason,
  });

  Map<String, dynamic> toMap() {
    return {
      'transactionId': transactionId,
      'cancelReason': cancelReason,
    };
  }
}
