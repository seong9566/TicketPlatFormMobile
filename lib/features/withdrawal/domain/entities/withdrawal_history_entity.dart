import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/entities/withdrawal_entity.dart';

part 'withdrawal_history_entity.freezed.dart';

@freezed
abstract class WithdrawalHistoryEntity with _$WithdrawalHistoryEntity {
  const factory WithdrawalHistoryEntity({
    @Default([]) List<WithdrawalEntity> items,
    required int totalCount,
    required int page,
    required int pageSize,
  }) = _WithdrawalHistoryEntity;
}
