import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/dispute/domain/entities/dispute_entity.dart';

part 'dispute_create_resp_dto.freezed.dart';
part 'dispute_create_resp_dto.g.dart';

@freezed
abstract class DisputeCreateRespDto with _$DisputeCreateRespDto {
  const factory DisputeCreateRespDto({
    required int id,
    required int transactionId,
    required String typeCode,
    required String typeName,
    required String statusCode,
    required String statusName,
    required String description,
    required String createdAt,
  }) = _DisputeCreateRespDto;

  factory DisputeCreateRespDto.fromJson(Map<String, dynamic> json) =>
      _$DisputeCreateRespDtoFromJson(json);
}

extension DisputeCreateRespDtoX on DisputeCreateRespDto {
  DisputeDetailEntity toEntity() {
    return DisputeDetailEntity(
      id: id,
      transactionId: transactionId,
      typeCode: disputeTypeCodeFromServer(typeCode),
      typeName: typeName,
      statusCode: disputeStatusCodeFromServer(statusCode),
      statusName: statusName,
      description: description,
      createdAt: DateTime.parse(createdAt),
      evidences: const [],
    );
  }
}
