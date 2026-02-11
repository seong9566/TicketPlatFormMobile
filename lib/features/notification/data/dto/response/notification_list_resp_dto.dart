import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/notification/data/dto/response/notification_item_resp_dto.dart';
import 'package:ticket_platform_mobile/features/notification/domain/entities/notification_list_entity.dart';

part 'notification_list_resp_dto.freezed.dart';
part 'notification_list_resp_dto.g.dart';

@freezed
abstract class NotificationListRespDto with _$NotificationListRespDto {
  const factory NotificationListRespDto({
    @Default([]) List<NotificationItemRespDto> items,
    String? nextCursor,
    @Default(false) bool hasMore,
  }) = _NotificationListRespDto;

  factory NotificationListRespDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationListRespDtoFromJson(json);
}

extension NotificationListRespDtoX on NotificationListRespDto {
  NotificationListEntity toEntity() {
    return NotificationListEntity(
      items: items.map((e) => e.toEntity()).toList(),
      nextCursor: nextCursor,
      hasMore: hasMore,
    );
  }
}
