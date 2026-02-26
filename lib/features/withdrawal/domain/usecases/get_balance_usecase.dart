import 'package:ticket_platform_mobile/features/withdrawal/domain/entities/balance_entity.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/repositories/withdrawal_repository.dart';

class GetBalanceUsecase {
  final WithdrawalRepository _repository;

  GetBalanceUsecase(this._repository);

  Future<BalanceEntity> call() => _repository.getBalance();
}
