import 'package:ticket_platform_mobile/features/bank_account/domain/repositories/bank_account_repository.dart';

class ConfirmVerificationUsecase {
  ConfirmVerificationUsecase(this._repository);

  final BankAccountRepository _repository;

  Future<bool> call({required String code}) {
    return _repository.confirmVerification(code: code);
  }
}
