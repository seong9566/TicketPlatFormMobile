import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/utils/date_format_util.dart';
import 'package:ticket_platform_mobile/features/sales_dashboard/domain/entities/event_group_entity.dart';
import 'package:flutter/material.dart';

part 'event_group_ui_model.freezed.dart';

@freezed
abstract class EventGroupUiModel with _$EventGroupUiModel {
  const factory EventGroupUiModel({
    required int eventId,
    required String eventTitle,
    String? posterImageUrl,
    required String venueName,
    required String eventDate,
    required String representativeSeatInfoText,
    required String totalCountText,
    required String onSaleCountText,
    required String completedCountText,
    required String settlingCountText,
    required Color onSaleBadgeColor,
    required Color completedBadgeColor,
    required Color settlingBadgeColor,
    required String salesSummaryText,
    required double salesProgressRate,
    required String remainingCountText,
  }) = _EventGroupUiModel;

  factory EventGroupUiModel.fromEntity(EventGroupEntity entity) {
    final soldCount = entity.totalCount - entity.onSaleCount;
    return EventGroupUiModel(
      eventId: entity.eventId,
      eventTitle: entity.eventTitle.isEmpty ? '공연 정보 없음' : entity.eventTitle,
      posterImageUrl: entity.posterImageUrl,
      venueName: entity.venueName?.isEmpty ?? true
          ? '장소 미정'
          : entity.venueName!,
      eventDate: entity.earliestEventDatetime != null
          ? DateFormatUtil.formatCompactDate(entity.earliestEventDatetime!)
          : '-',
      representativeSeatInfoText: entity.representativeSeatInfo?.isEmpty ?? true
          ? ''
          : entity.representativeSeatInfo!,
      totalCountText: '총 ${entity.totalCount}장',
      onSaleCountText: entity.onSaleCount > 0
          ? '판매중 ${entity.onSaleCount}'
          : '',
      completedCountText: entity.completedCount > 0
          ? '완료 ${entity.completedCount}'
          : '',
      settlingCountText: entity.settlingCount > 0
          ? '정산중 ${entity.settlingCount}'
          : '',
      onSaleBadgeColor: AppColors.success,
      completedBadgeColor: AppColors.info,
      settlingBadgeColor: AppColors.badgeWaitingBackground,
      salesSummaryText: '판매 ${soldCount}장 / 총 ${entity.totalCount}장',
      salesProgressRate: entity.totalCount == 0
          ? 0.0
          : soldCount / entity.totalCount,
      remainingCountText: '남은 재고 ${entity.onSaleCount}장',
    );
  }
}
