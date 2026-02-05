import 'package:ticket_platform_mobile/features/profile/domain/entities/transaction_list_entity.dart';
import 'package:ticket_platform_mobile/features/profile/domain/repositories/transaction_history_repository.dart';

class GetSalesHistoryUsecase {
  final TransactionHistoryRepository _repository;

  GetSalesHistoryUsecase(this._repository);

  Future<TransactionListEntity> call({
    String? status,
    String? period,
    String? sortBy,
    String? cursor,
    int? limit,
  }) {
    return _repository.getSalesHistory(
      status: status,
      period: period,
      sortBy: sortBy,
      cursor: cursor,
      limit: limit,
    );
  }
}
