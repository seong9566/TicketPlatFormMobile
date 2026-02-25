import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_account_entity.freezed.dart';

@freezed
abstract class BankAccountEntity with _$BankAccountEntity {
  const factory BankAccountEntity({
    required int id,
    required String bankName,
    required String bankCode,
    required String accountNumber,
    required String accountHolder,
    required bool verified,
    DateTime? verifiedAt,
  }) = _BankAccountEntity;
}
