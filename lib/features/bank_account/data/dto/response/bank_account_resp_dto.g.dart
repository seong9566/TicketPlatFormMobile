// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_account_resp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BankAccountRespDto _$BankAccountRespDtoFromJson(Map<String, dynamic> json) =>
    _BankAccountRespDto(
      id: (json['id'] as num).toInt(),
      bankName: json['bankName'] as String,
      bankCode: json['bankCode'] as String,
      accountNumber: json['accountNumber'] as String,
      accountHolder: json['accountHolder'] as String,
      verified: json['verified'] as bool,
      verifiedAt: json['verifiedAt'] as String?,
    );

Map<String, dynamic> _$BankAccountRespDtoToJson(_BankAccountRespDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bankName': instance.bankName,
      'bankCode': instance.bankCode,
      'accountNumber': instance.accountNumber,
      'accountHolder': instance.accountHolder,
      'verified': instance.verified,
      'verifiedAt': instance.verifiedAt,
    };
