import 'package:ticket_platform_mobile/features/withdrawal/domain/entities/balance_entity.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/entities/balance_history_entity.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/entities/withdrawal_entity.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/entities/withdrawal_history_entity.dart';

abstract class WithdrawalRepository {
  Future<BalanceEntity> getBalance();

  Future<BalanceHistoryEntity> getBalanceHistory({
    int page = 1,
    int pageSize = 20,
  });

  Future<WithdrawalEntity> requestWithdrawal({
    required int amount,
    int? bankAccountId,
  });

  Future<WithdrawalHistoryEntity> getWithdrawalHistory({
    int page = 1,
    int pageSize = 20,
  });

  Future<WithdrawalEntity> cancelWithdrawal(int withdrawalId);
}
