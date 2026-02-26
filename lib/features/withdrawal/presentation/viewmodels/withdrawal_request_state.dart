import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/withdrawal/domain/entities/withdrawal_entity.dart';

part 'withdrawal_request_state.freezed.dart';

@freezed
abstract class WithdrawalRequestState with _$WithdrawalRequestState {
  const factory WithdrawalRequestState({
    @Default(false) bool isSubmitting,
    @Default(false) bool isSuccess,
    String? errorMessage,
    WithdrawalEntity? result,
  }) = _WithdrawalRequestState;
}
