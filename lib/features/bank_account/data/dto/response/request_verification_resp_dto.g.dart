// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_verification_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RequestVerificationRespDto _$RequestVerificationRespDtoFromJson(
  Map<String, dynamic> json,
) => _RequestVerificationRespDto(
  expiresAt: json['expiresAt'] as String?,
  message: json['message'] as String,
  provider: json['provider'] as String?,
  verificationStatus: json['verificationStatus'] as String?,
  verificationTier: json['verificationTier'] as String?,
  reasonCode: json['reasonCode'] as String?,
);

Map<String, dynamic> _$RequestVerificationRespDtoToJson(
  _RequestVerificationRespDto instance,
) => <String, dynamic>{
  'expiresAt': instance.expiresAt,
  'message': instance.message,
  'provider': instance.provider,
  'verificationStatus': instance.verificationStatus,
  'verificationTier': instance.verificationTier,
  'reasonCode': instance.reasonCode,
};
