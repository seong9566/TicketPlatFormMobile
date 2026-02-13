import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/dispute/data/dto/response/dispute_evidence_resp_dto.dart';
import 'package:ticket_platform_mobile/features/dispute/domain/entities/dispute_entity.dart';

part 'dispute_detail_resp_dto.freezed.dart';
part 'dispute_detail_resp_dto.g.dart';

@freezed
abstract class DisputeDetailRespDto with _$DisputeDetailRespDto {
  const factory DisputeDetailRespDto({
    required int id,
    required int transactionId,
    required String typeCode,
    required String typeName,
    required String statusCode,
    required String statusName,
    required String description,
    @Default([]) List<DisputeEvidenceRespDto> evidences,
    DisputeTransactionSummaryRespDto? transaction,
    required String createdAt,
  }) = _DisputeDetailRespDto;

  factory DisputeDetailRespDto.fromJson(Map<String, dynamic> json) =>
      _$DisputeDetailRespDtoFromJson(json);
}

@freezed
abstract class DisputeTransactionSummaryRespDto
    with _$DisputeTransactionSummaryRespDto {
  const factory DisputeTransactionSummaryRespDto({
    required int transactionId,
    required String ticketTitle,
    required int amount,
    String? buyerNickname,
    String? sellerNickname,
  }) = _DisputeTransactionSummaryRespDto;

  factory DisputeTransactionSummaryRespDto.fromJson(
    Map<String, dynamic> json,
  ) => _$DisputeTransactionSummaryRespDtoFromJson(json);
}

extension DisputeDetailRespDtoX on DisputeDetailRespDto {
  DisputeDetailEntity toEntity() {
    return DisputeDetailEntity(
      id: id,
      transactionId: transactionId,
      typeCode: disputeTypeCodeFromServer(typeCode),
      typeName: typeName,
      statusCode: disputeStatusCodeFromServer(statusCode),
      statusName: statusName,
      description: description,
      evidences: evidences.map((e) => e.toEntity()).toList(),
      transaction: transaction?.toEntity(),
      createdAt: DateTime.parse(createdAt),
    );
  }
}

extension DisputeTransactionSummaryRespDtoX
    on DisputeTransactionSummaryRespDto {
  DisputeTransactionSummaryEntity toEntity() {
    return DisputeTransactionSummaryEntity(
      transactionId: transactionId,
      ticketTitle: ticketTitle,
      amount: amount,
      buyerNickname: buyerNickname,
      sellerNickname: sellerNickname,
    );
  }
}
