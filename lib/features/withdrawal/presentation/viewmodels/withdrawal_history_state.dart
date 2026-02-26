import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/entities/withdrawal_entity.dart';

part 'withdrawal_history_state.freezed.dart';

@freezed
abstract class WithdrawalHistoryState with _$WithdrawalHistoryState {
  const factory WithdrawalHistoryState({
    @Default([]) List<WithdrawalEntity> items,
    @Default(0) int totalCount,
    @Default(1) int page,
    @Default(20) int pageSize,
    @Default(false) bool isLoadingMore,
  }) = _WithdrawalHistoryState;
}
