import 'package:ticket_platform_mobile/features/bank_account/domain/repositories/bank_account_repository.dart';

class DeleteBankAccountUsecase {
  DeleteBankAccountUsecase(this._repository);

  final BankAccountRepository _repository;

  Future<void> call() {
    return _repository.deleteBankAccount();
  }
}
