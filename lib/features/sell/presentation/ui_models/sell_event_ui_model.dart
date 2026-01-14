import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/sell/domain/entities/sell_event_entity.dart';
import 'package:ticket_platform_mobile/core/utils/date_format_util.dart';

part 'sell_event_ui_model.freezed.dart';

@freezed
abstract class SellEventUiModel with _$SellEventUiModel {
  const factory SellEventUiModel({
    required int eventId,
    required String title,
    String? posterImageUrl,
    required String venueName,
    required String dateText,
    required DateTime startAt,
    required DateTime endAt,
  }) = _SellEventUiModel;

  factory SellEventUiModel.fromEntity(SellEventEntity entity) {
    final dateText =
        '${DateFormatUtil.formatCompactDate(entity.startAt)} - ${DateFormatUtil.formatCompactDate(entity.endAt)}';

    return SellEventUiModel(
      eventId: entity.eventId,
      title: entity.title,
      posterImageUrl: entity.posterImageUrl,
      venueName: entity.venueName,
      dateText: dateText,
      startAt: entity.startAt,
      endAt: entity.endAt,
    );
  }
}
