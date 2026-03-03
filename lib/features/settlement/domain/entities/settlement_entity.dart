import 'package:freezed_annotation/freezed_annotation.dart';

part 'settlement_entity.freezed.dart';

@freezed
abstract class SettlementEntity with _$SettlementEntity {
  const factory SettlementEntity({
    required int id,
    required int transactionId,
    required int amount,
    required int fee,
    required int netAmount,
    required String statusCode,
    required String statusName,
    required DateTime scheduledAt,
    DateTime? processedAt,
    String? failureReason,
    String? eventTitle,
    String? seatInfo,
  }) = _SettlementEntity;
}

@freezed
abstract class SettlementListEntity with _$SettlementListEntity {
  const factory SettlementListEntity({
    @Default([]) List<SettlementEntity> settlements,
    required int totalCount,
    required int totalNetAmount,
  }) = _SettlementListEntity;
}

@freezed
abstract class SettlementDetailEntity with _$SettlementDetailEntity {
  const factory SettlementDetailEntity({
    required int id,
    required int transactionId,
    required int amount,
    required int fee,
    required int netAmount,
    required String statusCode,
    required String statusName,
    required DateTime scheduledAt,
    DateTime? processedAt,
    String? failureReason,
    int? retryCount,
    String? eventTitle,
    String? seatInfo,
    String? buyerNickname,
    String? bankName,
    String? accountNumber,
    String? accountHolder,
  }) = _SettlementDetailEntity;
}
