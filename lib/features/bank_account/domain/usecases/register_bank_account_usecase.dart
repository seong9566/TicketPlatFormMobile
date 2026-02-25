import 'package:ticket_platform_mobile/features/bank_account/domain/entities/bank_account_entity.dart';
import 'package:ticket_platform_mobile/features/bank_account/domain/repositories/bank_account_repository.dart';

class RegisterBankAccountUsecase {
  RegisterBankAccountUsecase(this._repository);

  final BankAccountRepository _repository;

  Future<BankAccountEntity> call({
    required String bankName,
    required String bankCode,
    required String accountNumber,
    required String accountHolder,
  }) {
    return _repository.registerBankAccount(
      bankName: bankName,
      bankCode: bankCode,
      accountNumber: accountNumber,
      accountHolder: accountHolder,
    );
  }
}
