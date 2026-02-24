import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/reputation/domain/entities/reputation_entity.dart';

part 'reputation_check_resp_dto.freezed.dart';
part 'reputation_check_resp_dto.g.dart';

@freezed
abstract class ReputationCheckRespDto with _$ReputationCheckRespDto {
  const factory ReputationCheckRespDto({
    required bool canReview,
    required bool hasReviewed,
    DateTime? reviewDeadline,
  }) = _ReputationCheckRespDto;

  factory ReputationCheckRespDto.fromJson(Map<String, dynamic> json) =>
      _$ReputationCheckRespDtoFromJson(json);
}

extension ReputationCheckRespDtoX on ReputationCheckRespDto {
  ReputationCheckEntity toEntity() {
    return ReputationCheckEntity(
      canReview: canReview,
      hasReviewed: hasReviewed,
      reviewDeadline: reviewDeadline,
    );
  }
}
