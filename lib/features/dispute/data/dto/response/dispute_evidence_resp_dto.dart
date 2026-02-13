import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/dispute/domain/entities/dispute_entity.dart';

part 'dispute_evidence_resp_dto.freezed.dart';
part 'dispute_evidence_resp_dto.g.dart';

@freezed
abstract class DisputeEvidenceRespDto with _$DisputeEvidenceRespDto {
  const factory DisputeEvidenceRespDto({
    required int id,
    required String imageUrl,
    String? note,
    required String createdAt,
  }) = _DisputeEvidenceRespDto;

  factory DisputeEvidenceRespDto.fromJson(Map<String, dynamic> json) =>
      _$DisputeEvidenceRespDtoFromJson(json);
}

extension DisputeEvidenceRespDtoX on DisputeEvidenceRespDto {
  DisputeEvidenceEntity toEntity() {
    return DisputeEvidenceEntity(
      id: id,
      imageUrl: imageUrl,
      note: note,
      createdAt: DateTime.parse(createdAt),
    );
  }
}
