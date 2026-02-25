import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/utils/date_format_util.dart';
import 'package:ticket_platform_mobile/core/utils/number_format_util.dart';
import 'package:ticket_platform_mobile/features/sales_dashboard/domain/entities/event_ticket_entity.dart';
import 'package:flutter/material.dart';

part 'event_ticket_ui_model.freezed.dart';

@freezed
abstract class EventTicketUiModel with _$EventTicketUiModel {
  const factory EventTicketUiModel({
    required int ticketId,
    required String seatInfo,
    required String priceText,
    required String originalPriceText,
    required String quantityText,
    required String statusText,
    required Color statusColor,
    Color? statusTextColor,
    int? transactionId,
    String? thumbnailUrl,
    required String dateText,
    required String totalSalesAmountText,
    @Default(false) bool showVerificationGuide,
  }) = _EventTicketUiModel;

  factory EventTicketUiModel.fromEntity(EventTicketEntity entity) {
    Color statusColor;
    Color? statusTextColor;
    var statusText = entity.statusName;

    switch (entity.statusCode) {
      case 'payment_completed':
      case 'settling':
        statusColor = AppColors.info;
        statusText = '결제 완료';
        break;
      case 'payment_cancelled':
      case 'cancelled':
      case 'refunded':
        statusColor = AppColors.error;
        statusText = '결제 취소';
        break;
      case 'settlement_completed':
      case 'completed':
        statusColor = AppColors.success;
        statusText = '정산 완료';
        break;
      case 'settlement_on_hold':
      case 'on_hold':
        statusColor = AppColors.warning;
        statusText = '정산 보류';
        break;
      case 'on_sale':
        statusColor = AppColors.success;
        statusText = '판매중';
        break;
      default:
        statusColor = AppColors.textSecondary;
    }

    final soldQuantity = entity.quantity - entity.remainingQuantity;
    final totalSalesAmount = soldQuantity * entity.price;

    return EventTicketUiModel(
      ticketId: entity.ticketId,
      seatInfo: entity.seatInfo?.isEmpty ?? true
          ? '좌석 정보 없음'
          : entity.seatInfo!,
      priceText: NumberFormatUtil.formatPrice(entity.price),
      originalPriceText: NumberFormatUtil.formatPrice(entity.originalPrice),
      quantityText: '판매 ${soldQuantity}장',
      totalSalesAmountText:
          '총 ${NumberFormatUtil.formatPrice(totalSalesAmount)}',
      statusText: statusText,
      statusColor: statusColor,
      statusTextColor: statusTextColor,
      showVerificationGuide:
          entity.statusCode == 'settlement_on_hold' ||
          entity.statusCode == 'on_hold',
      transactionId: entity.transactionId,
      thumbnailUrl: entity.thumbnailUrl,
      dateText: DateFormatUtil.formatCompactDate(entity.createdAt),
    );
  }
}
