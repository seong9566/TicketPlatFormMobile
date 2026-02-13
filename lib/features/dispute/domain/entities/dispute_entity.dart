import 'package:freezed_annotation/freezed_annotation.dart';

part 'dispute_entity.freezed.dart';

enum DisputeTypeCode {
  fakeTicket,
  wrongTicket,
  noDelivery,
  rudeBehavior,
  other,
}

enum DisputeStatusCode {
  pending,
  inReview,
  resolvedBuyer,
  resolvedSeller,
  rejected,
  cancelled,
}

@freezed
abstract class DisputeListEntity with _$DisputeListEntity {
  const factory DisputeListEntity({
    @Default([]) List<DisputeListItemEntity> items,
    String? nextCursor,
    @Default(false) bool hasMore,
  }) = _DisputeListEntity;
}

@freezed
abstract class DisputeListItemEntity with _$DisputeListItemEntity {
  const factory DisputeListItemEntity({
    required int id,
    required int transactionId,
    required DisputeTypeCode typeCode,
    required String typeName,
    required DisputeStatusCode statusCode,
    required String statusName,
    required String description,
    required int evidenceCount,
    required DateTime createdAt,
  }) = _DisputeListItemEntity;
}

@freezed
abstract class DisputeDetailEntity with _$DisputeDetailEntity {
  const factory DisputeDetailEntity({
    required int id,
    required int transactionId,
    required DisputeTypeCode typeCode,
    required String typeName,
    required DisputeStatusCode statusCode,
    required String statusName,
    required String description,
    @Default([]) List<DisputeEvidenceEntity> evidences,
    DisputeTransactionSummaryEntity? transaction,
    required DateTime createdAt,
  }) = _DisputeDetailEntity;
}

@freezed
abstract class DisputeEvidenceEntity with _$DisputeEvidenceEntity {
  const factory DisputeEvidenceEntity({
    required int id,
    required String imageUrl,
    String? note,
    required DateTime createdAt,
  }) = _DisputeEvidenceEntity;
}

@freezed
abstract class DisputeTransactionSummaryEntity
    with _$DisputeTransactionSummaryEntity {
  const factory DisputeTransactionSummaryEntity({
    required int transactionId,
    required String ticketTitle,
    required int amount,
    String? buyerNickname,
    String? sellerNickname,
  }) = _DisputeTransactionSummaryEntity;
}

DisputeTypeCode disputeTypeCodeFromServer(String code) {
  switch (code.toUpperCase()) {
    case 'FAKE_TICKET':
      return DisputeTypeCode.fakeTicket;
    case 'WRONG_TICKET':
      return DisputeTypeCode.wrongTicket;
    case 'NO_DELIVERY':
      return DisputeTypeCode.noDelivery;
    case 'RUDE_BEHAVIOR':
      return DisputeTypeCode.rudeBehavior;
    default:
      return DisputeTypeCode.other;
  }
}

DisputeStatusCode disputeStatusCodeFromServer(String code) {
  switch (code.toUpperCase()) {
    case 'PENDING':
      return DisputeStatusCode.pending;
    case 'IN_REVIEW':
      return DisputeStatusCode.inReview;
    case 'RESOLVED_BUYER':
      return DisputeStatusCode.resolvedBuyer;
    case 'RESOLVED_SELLER':
      return DisputeStatusCode.resolvedSeller;
    case 'REJECTED':
      return DisputeStatusCode.rejected;
    case 'CANCELLED':
      return DisputeStatusCode.cancelled;
    default:
      return DisputeStatusCode.pending;
  }
}
