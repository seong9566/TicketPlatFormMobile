import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/utils/date_format_util.dart';
import 'package:ticket_platform_mobile/core/utils/number_format_util.dart';
import 'package:ticket_platform_mobile/features/profile/domain/entities/transaction_history_entity.dart';
import 'package:flutter/material.dart';

part 'transaction_history_ui_model.freezed.dart';

@freezed
abstract class TransactionHistoryUiModel with _$TransactionHistoryUiModel {
  const factory TransactionHistoryUiModel({
    required int transactionId,
    required int ticketId,
    required String ticketTitle,
    String? ticketThumbnailUrl,
    required String eventDate,
    required String venueName,
    required String seatInfo,
    required String price,
    required String state,
    required Color stateColor,
    Color? stateTextColor,
    int? roomId,
    required String date,
  }) = _TransactionHistoryUiModel;

  factory TransactionHistoryUiModel.fromEntity(
    TransactionHistoryEntity entity,
  ) {
    // 상태별 색상 매핑
    Color stateColor;
    Color? stateTextColor;

    switch (entity.statusCode) {
      case 'paid':
      case 'confirmed':
      case 'completed':
        stateColor = AppColors.success;
        break;
      case 'pending_payment':
      case 'reserved':
        stateColor = AppColors.badgeWaitingBackground;
        stateTextColor = AppColors.badgeWaitingText;
        break;
      case 'cancelled':
      case 'refunded':
        stateColor = AppColors.error;
        break;
      default:
        stateColor = AppColors.textSecondary;
    }

    return TransactionHistoryUiModel(
      transactionId: entity.transactionId,
      ticketId: entity.ticketId,
      ticketTitle: entity.ticketTitle,
      ticketThumbnailUrl: entity.ticketThumbnailUrl,
      eventDate: DateFormatUtil.formatCompactDate(entity.eventDateTime),
      venueName: entity.venueName,
      seatInfo: entity.seatInfo,
      price: NumberFormatUtil.formatPrice(entity.totalAmount),
      state: entity.statusName,
      stateColor: stateColor,
      stateTextColor: stateTextColor,
      roomId: entity.roomId,
      date: DateFormatUtil.formatCompactDate(entity.createdAt),
    );
  }
}
