import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/bank_account/domain/entities/bank_account_entity.dart';

part 'bank_account_resp_dto.freezed.dart';
part 'bank_account_resp_dto.g.dart';

@freezed
abstract class BankAccountRespDto with _$BankAccountRespDto {
  const factory BankAccountRespDto({
    required int id,
    required String bankName,
    required String bankCode,
    required String accountNumber,
    required String accountHolder,
    required bool verified,
    String? verifiedAt,
  }) = _BankAccountRespDto;

  factory BankAccountRespDto.fromJson(Map<String, dynamic> json) =>
      _$BankAccountRespDtoFromJson(json);
}

extension BankAccountRespDtoX on BankAccountRespDto {
  BankAccountEntity toEntity() {
    return BankAccountEntity(
      id: id,
      bankName: bankName,
      bankCode: bankCode,
      accountNumber: accountNumber,
      accountHolder: accountHolder,
      verified: verified,
      verifiedAt: verifiedAt != null ? DateTime.tryParse(verifiedAt!) : null,
    );
  }
}
