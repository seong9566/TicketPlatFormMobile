import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/entities/balance_transaction_entity.dart';

part 'balance_history_entity.freezed.dart';

@freezed
abstract class BalanceHistoryEntity with _$BalanceHistoryEntity {
  const factory BalanceHistoryEntity({
    @Default([]) List<BalanceTransactionEntity> items,
    required int totalCount,
    required int page,
    required int pageSize,
  }) = _BalanceHistoryEntity;
}
