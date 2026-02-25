import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_bank_account_req_dto.freezed.dart';
part 'register_bank_account_req_dto.g.dart';

@freezed
abstract class RegisterBankAccountReqDto with _$RegisterBankAccountReqDto {
  const factory RegisterBankAccountReqDto({
    required String bankName,
    required String bankCode,
    required String accountNumber,
    required String accountHolder,
  }) = _RegisterBankAccountReqDto;

  factory RegisterBankAccountReqDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterBankAccountReqDtoFromJson(json);
}
