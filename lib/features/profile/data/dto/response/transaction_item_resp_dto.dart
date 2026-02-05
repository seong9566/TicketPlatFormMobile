import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/profile/domain/entities/transaction_history_entity.dart';

part 'transaction_item_resp_dto.freezed.dart';
part 'transaction_item_resp_dto.g.dart';

@freezed
abstract class TransactionItemRespDto with _$TransactionItemRespDto {
  const factory TransactionItemRespDto({
    required int transactionId,
    required int ticketId,
    required String ticketTitle,
    String? ticketThumbnailUrl,
    required String eventDateTime,
    String? venueName,
    String? seatInfo,
    required int quantity,
    required int unitPrice,
    required int totalAmount,
    required String statusCode,
    required String statusName,
    TransactionUserRespDto? buyer,
    TransactionUserRespDto? seller,
    int? roomId,
    required String createdAt,
    String? paidAt,
    String? confirmedAt,
    String? cancelledAt,
  }) = _TransactionItemRespDto;

  factory TransactionItemRespDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionItemRespDtoFromJson(json);
}

@freezed
abstract class TransactionUserRespDto with _$TransactionUserRespDto {
  const factory TransactionUserRespDto({
    required int userId,
    String? nickname,
    String? profileImageUrl,
  }) = _TransactionUserRespDto;

  factory TransactionUserRespDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionUserRespDtoFromJson(json);
}

extension TransactionItemRespDtoX on TransactionItemRespDto {
  TransactionHistoryEntity toEntity() {
    return TransactionHistoryEntity(
      transactionId: transactionId,
      ticketId: ticketId,
      ticketTitle: ticketTitle,
      ticketThumbnailUrl: ticketThumbnailUrl,
      eventDateTime: DateTime.parse(eventDateTime),
      venueName: venueName ?? '',
      seatInfo: seatInfo ?? '',
      quantity: quantity,
      unitPrice: unitPrice,
      totalAmount: totalAmount,
      statusCode: statusCode,
      statusName: statusName,
      buyer: buyer != null
          ? TransactionUserEntity(
              userId: buyer!.userId,
              nickname: buyer!.nickname,
              profileImageUrl: buyer!.profileImageUrl,
            )
          : null,
      seller: seller != null
          ? TransactionUserEntity(
              userId: seller!.userId,
              nickname: seller!.nickname,
              profileImageUrl: seller!.profileImageUrl,
            )
          : null,
      roomId: roomId,
      createdAt: DateTime.parse(createdAt),
      paidAt: paidAt != null ? DateTime.parse(paidAt!) : null,
      confirmedAt: confirmedAt != null ? DateTime.parse(confirmedAt!) : null,
      cancelledAt: cancelledAt != null ? DateTime.parse(cancelledAt!) : null,
    );
  }
}
