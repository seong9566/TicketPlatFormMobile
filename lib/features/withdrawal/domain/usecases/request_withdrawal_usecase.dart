import 'package:ticket_platform_mobile/features/withdrawal/domain/entities/withdrawal_entity.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/repositories/withdrawal_repository.dart';

class RequestWithdrawalUsecase {
  final WithdrawalRepository _repository;

  RequestWithdrawalUsecase(this._repository);

  Future<WithdrawalEntity> call({required int amount, int? bankAccountId}) {
    return _repository.requestWithdrawal(
      amount: amount,
      bankAccountId: bankAccountId,
    );
  }
}
