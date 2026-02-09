import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/profile/domain/entities/transaction_history_entity.dart';

part 'transaction_list_entity.freezed.dart';

@freezed
abstract class TransactionListEntity with _$TransactionListEntity {
  const factory TransactionListEntity({
    @Default([]) List<TransactionHistoryEntity> items,
    String? nextCursor,
    @Default(false) bool hasMore,
    int? totalCount,
  }) = _TransactionListEntity;
}
