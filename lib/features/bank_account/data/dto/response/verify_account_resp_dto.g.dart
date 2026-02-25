// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_account_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyAccountRespDto _$VerifyAccountRespDtoFromJson(
  Map<String, dynamic> json,
) => _VerifyAccountRespDto(
  verified: json['verified'] as bool,
  message: json['message'] as String,
  provider: json['provider'] as String?,
  verificationStatus: json['verificationStatus'] as String?,
  verificationTier: json['verificationTier'] as String?,
  reasonCode: json['reasonCode'] as String?,
);

Map<String, dynamic> _$VerifyAccountRespDtoToJson(
  _VerifyAccountRespDto instance,
) => <String, dynamic>{
  'verified': instance.verified,
  'message': instance.message,
  'provider': instance.provider,
  'verificationStatus': instance.verificationStatus,
  'verificationTier': instance.verificationTier,
  'reasonCode': instance.reasonCode,
};
