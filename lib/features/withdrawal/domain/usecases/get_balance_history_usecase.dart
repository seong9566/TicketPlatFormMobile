import 'package:ticket_platform_mobile/features/withdrawal/domain/entities/balance_history_entity.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/repositories/withdrawal_repository.dart';

class GetBalanceHistoryUsecase {
  final WithdrawalRepository _repository;

  GetBalanceHistoryUsecase(this._repository);

  Future<BalanceHistoryEntity> call({int page = 1, int pageSize = 20}) {
    return _repository.getBalanceHistory(page: page, pageSize: pageSize);
  }
}
