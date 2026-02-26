import 'package:freezed_annotation/freezed_annotation.dart';

part 'withdrawal_entity.freezed.dart';

@freezed
abstract class WithdrawalEntity with _$WithdrawalEntity {
  const factory WithdrawalEntity({
    required int id,
    required int amount,
    required int fee,
    required int netAmount,
    required String statusCode,
    required String statusName,
    String? bankName,
    required DateTime requestedAt,
    DateTime? processedAt,
    String? failureReason,
  }) = _WithdrawalEntity;
}
