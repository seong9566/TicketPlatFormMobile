import 'package:ticket_platform_mobile/features/withdrawal/domain/entities/withdrawal_entity.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/repositories/withdrawal_repository.dart';

class CancelWithdrawalUsecase {
  final WithdrawalRepository _repository;

  CancelWithdrawalUsecase(this._repository);

  Future<WithdrawalEntity> call(int withdrawalId) {
    return _repository.cancelWithdrawal(withdrawalId);
  }
}
