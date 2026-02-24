import 'package:freezed_annotation/freezed_annotation.dart';

part 'reputation_entity.freezed.dart';

@freezed
abstract class ReputationEntity with _$ReputationEntity {
  const factory ReputationEntity({
    required int id,
    required String reviewerNickname,
    String? reviewerProfileImageUrl,
    required int score,
    required DateTime createdAt,
  }) = _ReputationEntity;
}

@freezed
abstract class ReputationCheckEntity with _$ReputationCheckEntity {
  const factory ReputationCheckEntity({
    required bool canReview,
    required bool hasReviewed,
    DateTime? reviewDeadline,
  }) = _ReputationCheckEntity;
}
