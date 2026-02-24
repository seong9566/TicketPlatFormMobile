// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reputation_check_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReputationCheckRespDto _$ReputationCheckRespDtoFromJson(
  Map<String, dynamic> json,
) => _ReputationCheckRespDto(
  canReview: json['canReview'] as bool,
  hasReviewed: json['hasReviewed'] as bool,
  reviewDeadline: json['reviewDeadline'] == null
      ? null
      : DateTime.parse(json['reviewDeadline'] as String),
);

Map<String, dynamic> _$ReputationCheckRespDtoToJson(
  _ReputationCheckRespDto instance,
) => <String, dynamic>{
  'canReview': instance.canReview,
  'hasReviewed': instance.hasReviewed,
  'reviewDeadline': instance.reviewDeadline?.toIso8601String(),
};
