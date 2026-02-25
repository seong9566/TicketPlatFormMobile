// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_bank_account_req_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterBankAccountReqDto _$RegisterBankAccountReqDtoFromJson(
  Map<String, dynamic> json,
) => _RegisterBankAccountReqDto(
  bankName: json['bankName'] as String,
  bankCode: json['bankCode'] as String,
  accountNumber: json['accountNumber'] as String,
  accountHolder: json['accountHolder'] as String,
);

Map<String, dynamic> _$RegisterBankAccountReqDtoToJson(
  _RegisterBankAccountReqDto instance,
) => <String, dynamic>{
  'bankName': instance.bankName,
  'bankCode': instance.bankCode,
  'accountNumber': instance.accountNumber,
  'accountHolder': instance.accountHolder,
};
