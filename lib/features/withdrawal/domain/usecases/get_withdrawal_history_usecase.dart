import 'package:ticket_platform_mobile/features/withdrawal/domain/entities/withdrawal_history_entity.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/repositories/withdrawal_repository.dart';

class GetWithdrawalHistoryUsecase {
  final WithdrawalRepository _repository;

  GetWithdrawalHistoryUsecase(this._repository);

  Future<WithdrawalHistoryEntity> call({int page = 1, int pageSize = 20}) {
    return _repository.getWithdrawalHistory(page: page, pageSize: pageSize);
  }
}
