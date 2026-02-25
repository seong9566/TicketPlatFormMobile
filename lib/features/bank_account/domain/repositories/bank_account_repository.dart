import 'package:ticket_platform_mobile/features/bank_account/domain/entities/bank_account_entity.dart';
import 'package:ticket_platform_mobile/features/bank_account/domain/usecases/request_verification_usecase.dart';

abstract class BankAccountRepository {
  Future<BankAccountEntity> registerBankAccount({
    required String bankName,
    required String bankCode,
    required String accountNumber,
    required String accountHolder,
  });

  Future<BankAccountEntity?> getMyBankAccount();

  Future<void> deleteBankAccount();

  Future<RequestVerificationResult> requestVerification();

  Future<bool> confirmVerification({required String code});
}
