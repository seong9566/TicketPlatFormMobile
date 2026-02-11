import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';
import 'package:ticket_platform_mobile/features/notification/domain/entities/notification_entity.dart';

part 'notification_item_resp_dto.freezed.dart';
part 'notification_item_resp_dto.g.dart';

@freezed
abstract class NotificationItemRespDto with _$NotificationItemRespDto {
  const factory NotificationItemRespDto({
    @Default(0) int id,
    @Default('') String typeCode,
    @Default('') String typeName,
    @Default('') String title,
    @Default('') String body,
    String? data,
    @Default(false) bool readFlag,
    DateTime? readAt,
    DateTime? createdAt,
  }) = _NotificationItemRespDto;

  factory NotificationItemRespDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationItemRespDtoFromJson(json);
}

extension NotificationItemRespDtoX on NotificationItemRespDto {
  NotificationEntity toEntity() {
    return NotificationEntity(
      id: id,
      typeCode: typeCode,
      typeName: typeName,
      title: title,
      body: body,
      data: _parseDataJson(data),
      isRead: readFlag,
      readAt: readAt,
      createdAt: createdAt,
    );
  }

  Map<String, dynamic> _parseDataJson(String? rawJson) {
    if (rawJson == null || rawJson.trim().isEmpty) {
      return {};
    }

    try {
      final decoded = jsonDecode(rawJson);
      if (decoded is Map<String, dynamic>) {
        return decoded;
      }
      return {};
    } catch (e) {
      AppLogger.w('[NotificationItemRespDto] data json parse 실패: $e');
      return {};
    }
  }
}
