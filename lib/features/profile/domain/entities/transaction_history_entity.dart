import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_history_entity.freezed.dart';

@freezed
abstract class TransactionHistoryEntity with _$TransactionHistoryEntity {
  const factory TransactionHistoryEntity({
    required int transactionId,
    required int ticketId,
    required String ticketTitle,
    String? ticketThumbnailUrl,
    required DateTime eventDateTime,
    required String venueName,
    required String seatInfo,
    required int quantity,
    required int unitPrice,
    required int totalAmount,
    required String statusCode,
    required String statusName,
    TransactionUserEntity? buyer,
    TransactionUserEntity? seller,
    int? roomId,
    required DateTime createdAt,
    DateTime? paidAt,
    DateTime? confirmedAt,
    DateTime? cancelledAt,
  }) = _TransactionHistoryEntity;
}

@freezed
abstract class TransactionUserEntity with _$TransactionUserEntity {
  const factory TransactionUserEntity({
    required int userId,
    String? nickname,
    String? profileImageUrl,
  }) = _TransactionUserEntity;
}
