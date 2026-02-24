// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reputation_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReputationRespDto _$ReputationRespDtoFromJson(Map<String, dynamic> json) =>
    _ReputationRespDto(
      id: (json['id'] as num).toInt(),
      reviewerNickname: json['reviewerNickname'] as String,
      reviewerProfileImageUrl: json['reviewerProfileImageUrl'] as String?,
      score: (json['score'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$ReputationRespDtoToJson(_ReputationRespDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reviewerNickname': instance.reviewerNickname,
      'reviewerProfileImageUrl': instance.reviewerProfileImageUrl,
      'score': instance.score,
      'createdAt': instance.createdAt.toIso8601String(),
    };
