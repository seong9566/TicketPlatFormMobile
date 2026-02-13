// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispute_evidence_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DisputeEvidenceRespDto _$DisputeEvidenceRespDtoFromJson(
  Map<String, dynamic> json,
) => _DisputeEvidenceRespDto(
  id: (json['id'] as num).toInt(),
  imageUrl: json['imageUrl'] as String,
  note: json['note'] as String?,
  createdAt: json['createdAt'] as String,
);

Map<String, dynamic> _$DisputeEvidenceRespDtoToJson(
  _DisputeEvidenceRespDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'imageUrl': instance.imageUrl,
  'note': instance.note,
  'createdAt': instance.createdAt,
};
