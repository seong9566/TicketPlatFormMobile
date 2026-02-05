import 'package:ticket_platform_mobile/features/profile/domain/entities/transaction_list_entity.dart';

abstract class TransactionHistoryRepository {
  /// 판매 내역 조회
  Future<TransactionListEntity> getSalesHistory({
    String? status,
    String? period,
    String? sortBy,
    String? cursor,
    int? limit,
  });

  /// 구매 내역 조회
  Future<TransactionListEntity> getPurchasesHistory({
    String? status,
    String? period,
    String? sortBy,
    String? cursor,
    int? limit,
  });
}
