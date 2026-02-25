import 'package:ticket_platform_mobile/features/bank_account/domain/entities/bank_account_entity.dart';
import 'package:ticket_platform_mobile/features/bank_account/domain/repositories/bank_account_repository.dart';

class GetBankAccountUsecase {
  GetBankAccountUsecase(this._repository);

  final BankAccountRepository _repository;

  Future<BankAccountEntity?> call() {
    return _repository.getMyBankAccount();
  }
}
