import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/entities/withdrawal_entity.dart';

part 'withdrawal_resp_dto.freezed.dart';
part 'withdrawal_resp_dto.g.dart';

@freezed
abstract class WithdrawalRespDto with _$WithdrawalRespDto {
  const factory WithdrawalRespDto({
    required int id,
    required int amount,
    required int fee,
    required int netAmount,
    required String statusCode,
    required String statusName,
    String? bankName,
    required String requestedAt,
    String? processedAt,
    String? failureReason,
  }) = _WithdrawalRespDto;

  factory WithdrawalRespDto.fromJson(Map<String, dynamic> json) =>
      _$WithdrawalRespDtoFromJson(json);
}

extension WithdrawalRespDtoX on WithdrawalRespDto {
  WithdrawalEntity toEntity() {
    return WithdrawalEntity(
      id: id,
      amount: amount,
      fee: fee,
      netAmount: netAmount,
      statusCode: statusCode,
      statusName: statusName,
      bankName: bankName,
      requestedAt: DateTime.tryParse(requestedAt) ?? DateTime.now(),
      processedAt: processedAt != null ? DateTime.tryParse(processedAt!) : null,
      failureReason: failureReason,
    );
  }
}
