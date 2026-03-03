import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/settlement/domain/entities/settlement_entity.dart';

part 'settlement_detail_resp_dto.freezed.dart';
part 'settlement_detail_resp_dto.g.dart';

@freezed
abstract class SettlementDetailRespDto with _$SettlementDetailRespDto {
  const factory SettlementDetailRespDto({
    required int id,
    required int transactionId,
    required int amount,
    required int fee,
    required int netAmount,
    required String statusCode,
    required String statusName,
    required String scheduledAt,
    String? processedAt,
    String? failureReason,
    int? retryCount,
    String? eventTitle,
    String? seatInfo,
    String? buyerNickname,
    String? bankName,
    String? accountNumber,
    String? accountHolder,
  }) = _SettlementDetailRespDto;

  factory SettlementDetailRespDto.fromJson(Map<String, dynamic> json) =>
      _$SettlementDetailRespDtoFromJson(json);
}

extension SettlementDetailRespDtoX on SettlementDetailRespDto {
  SettlementDetailEntity toEntity() {
    return SettlementDetailEntity(
      id: id,
      transactionId: transactionId,
      amount: amount,
      fee: fee,
      netAmount: netAmount,
      statusCode: statusCode,
      statusName: statusName,
      scheduledAt: DateTime.parse(scheduledAt),
      processedAt: processedAt != null ? DateTime.parse(processedAt!) : null,
      failureReason: failureReason,
      retryCount: retryCount,
      eventTitle: eventTitle,
      seatInfo: seatInfo,
      buyerNickname: buyerNickname,
      bankName: bankName,
      accountNumber: accountNumber,
      accountHolder: accountHolder,
    );
  }
}
