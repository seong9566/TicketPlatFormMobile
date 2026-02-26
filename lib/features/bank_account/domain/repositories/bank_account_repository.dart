import 'package:ticket_platform_mobile/features/bank_account/domain/entities/bank_account_entity.dart';

abstract class BankAccountRepository {
  Future<BankAccountEntity> registerBankAccount({
    required String bankName,
    required String bankCode,
    required String accountNumber,
    required String accountHolder,
  });

  Future<BankAccountEntity?> getMyBankAccount();

  Future<void> deleteBankAccount();
}
