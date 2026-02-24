import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/reputation/domain/entities/reputation_entity.dart';

part 'reputation_resp_dto.freezed.dart';
part 'reputation_resp_dto.g.dart';

@freezed
abstract class ReputationRespDto with _$ReputationRespDto {
  const factory ReputationRespDto({
    required int id,
    required String reviewerNickname,
    String? reviewerProfileImageUrl,
    required int score,
    required DateTime createdAt,
  }) = _ReputationRespDto;

  factory ReputationRespDto.fromJson(Map<String, dynamic> json) =>
      _$ReputationRespDtoFromJson(json);
}

extension ReputationRespDtoX on ReputationRespDto {
  ReputationEntity toEntity() {
    return ReputationEntity(
      id: id,
      reviewerNickname: reviewerNickname,
      reviewerProfileImageUrl: reviewerProfileImageUrl,
      score: score,
      createdAt: createdAt,
    );
  }
}
