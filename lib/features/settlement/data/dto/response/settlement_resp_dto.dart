import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/settlement/domain/entities/settlement_entity.dart';

part 'settlement_resp_dto.freezed.dart';
part 'settlement_resp_dto.g.dart';

@freezed
abstract class SettlementRespDto with _$SettlementRespDto {
  const factory SettlementRespDto({
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
    String? eventTitle,
    String? seatInfo,
  }) = _SettlementRespDto;

  factory SettlementRespDto.fromJson(Map<String, dynamic> json) =>
      _$SettlementRespDtoFromJson(json);
}

extension SettlementRespDtoX on SettlementRespDto {
  SettlementEntity toEntity() {
    return SettlementEntity(
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
      eventTitle: eventTitle,
      seatInfo: seatInfo,
    );
  }
}
