import 'package:flutter/material.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/utils/date_format_util.dart';
import 'package:ticket_platform_mobile/core/utils/number_format_util.dart';
import 'package:ticket_platform_mobile/features/dispute/domain/entities/dispute_entity.dart';

class DisputeListItemUiModel {
  final int id;
  final int transactionId;
  final String typeName;
  final String statusName;
  final DisputeStatusCode statusCode;
  final String description;
  final int evidenceCount;
  final String createdAtText;

  const DisputeListItemUiModel({
    required this.id,
    required this.transactionId,
    required this.typeName,
    required this.statusName,
    required this.statusCode,
    required this.description,
    required this.evidenceCount,
    required this.createdAtText,
  });

  factory DisputeListItemUiModel.fromEntity(DisputeListItemEntity entity) {
    return DisputeListItemUiModel(
      id: entity.id,
      transactionId: entity.transactionId,
      typeName: entity.typeName,
      statusName: entity.statusName,
      statusCode: entity.statusCode,
      description: entity.description,
      evidenceCount: entity.evidenceCount,
      createdAtText: DateFormatUtil.formatCompactDate(entity.createdAt),
    );
  }
}

class DisputeDetailUiModel {
  final int id;
  final int transactionId;
  final String typeName;
  final String statusName;
  final DisputeStatusCode statusCode;
  final String description;
  final String createdAtText;
  final List<DisputeEvidenceUiModel> evidences;
  final DisputeTransactionSummaryUiModel? transaction;

  const DisputeDetailUiModel({
    required this.id,
    required this.transactionId,
    required this.typeName,
    required this.statusName,
    required this.statusCode,
    required this.description,
    required this.createdAtText,
    required this.evidences,
    this.transaction,
  });

  bool get canCancel => statusCode == DisputeStatusCode.pending;

  bool get canAddEvidence =>
      statusCode == DisputeStatusCode.pending ||
      statusCode == DisputeStatusCode.inReview;

  factory DisputeDetailUiModel.fromEntity(DisputeDetailEntity entity) {
    return DisputeDetailUiModel(
      id: entity.id,
      transactionId: entity.transactionId,
      typeName: entity.typeName,
      statusName: entity.statusName,
      statusCode: entity.statusCode,
      description: entity.description,
      createdAtText: DateFormatUtil.formatDateTime(entity.createdAt),
      evidences: entity.evidences
          .map((e) => DisputeEvidenceUiModel.fromEntity(e))
          .toList(),
      transaction: entity.transaction != null
          ? DisputeTransactionSummaryUiModel.fromEntity(entity.transaction!)
          : null,
    );
  }
}

class DisputeEvidenceUiModel {
  final int id;
  final String imageUrl;
  final String? note;
  final String createdAtText;

  const DisputeEvidenceUiModel({
    required this.id,
    required this.imageUrl,
    this.note,
    required this.createdAtText,
  });

  factory DisputeEvidenceUiModel.fromEntity(DisputeEvidenceEntity entity) {
    return DisputeEvidenceUiModel(
      id: entity.id,
      imageUrl: entity.imageUrl,
      note: entity.note,
      createdAtText: DateFormatUtil.formatDateTime(entity.createdAt),
    );
  }
}

class DisputeTransactionSummaryUiModel {
  final int transactionId;
  final String ticketTitle;
  final String amountText;
  final String buyerNickname;
  final String sellerNickname;

  const DisputeTransactionSummaryUiModel({
    required this.transactionId,
    required this.ticketTitle,
    required this.amountText,
    required this.buyerNickname,
    required this.sellerNickname,
  });

  factory DisputeTransactionSummaryUiModel.fromEntity(
    DisputeTransactionSummaryEntity entity,
  ) {
    return DisputeTransactionSummaryUiModel(
      transactionId: entity.transactionId,
      ticketTitle: entity.ticketTitle,
      amountText: '${NumberFormatUtil.formatNumber(entity.amount)}원',
      buyerNickname: entity.buyerNickname ?? '-',
      sellerNickname: entity.sellerNickname ?? '-',
    );
  }
}

Color disputeStatusColor(DisputeStatusCode status) {
  switch (status) {
    case DisputeStatusCode.pending:
      return Colors.orange;
    case DisputeStatusCode.inReview:
      return Colors.blue;
    case DisputeStatusCode.resolvedBuyer:
      return AppColors.success;
    case DisputeStatusCode.resolvedSeller:
      return AppColors.textSecondary;
    case DisputeStatusCode.rejected:
      return AppColors.destructive;
    case DisputeStatusCode.cancelled:
      return AppColors.textTertiary;
  }
}
