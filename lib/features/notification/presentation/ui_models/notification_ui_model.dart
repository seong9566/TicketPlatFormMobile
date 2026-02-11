import 'package:ticket_platform_mobile/core/utils/date_format_util.dart';
import 'package:ticket_platform_mobile/features/notification/domain/entities/notification_entity.dart';

class NotificationUiModel {
  const NotificationUiModel({
    required this.id,
    required this.typeCode,
    required this.typeName,
    required this.title,
    required this.body,
    required this.data,
    required this.isRead,
    required this.timeText,
  });

  final int id;
  final String typeCode;
  final String typeName;
  final String title;
  final String body;
  final Map<String, dynamic> data;
  final bool isRead;
  final String timeText;

  NotificationUiModel copyWith({bool? isRead}) {
    return NotificationUiModel(
      id: id,
      typeCode: typeCode,
      typeName: typeName,
      title: title,
      body: body,
      data: data,
      isRead: isRead ?? this.isRead,
      timeText: timeText,
    );
  }

  static NotificationUiModel fromEntity(NotificationEntity entity) {
    return NotificationUiModel(
      id: entity.id,
      typeCode: entity.typeCode,
      typeName: entity.typeName,
      title: entity.title,
      body: entity.body,
      data: entity.data,
      isRead: entity.isRead,
      timeText: _formatRelativeTime(entity.createdAt),
    );
  }

  static String _formatRelativeTime(DateTime? dateTime) {
    if (dateTime == null) return '';

    final now = DateTime.now();
    final diff = now.difference(dateTime.toLocal());

    if (diff.inSeconds < 60) return '방금 전';
    if (diff.inMinutes < 60) return '${diff.inMinutes}분 전';
    if (diff.inHours < 24) return '${diff.inHours}시간 전';
    if (diff.inDays < 7) return '${diff.inDays}일 전';

    return DateFormatUtil.formatCompactDate(dateTime.toLocal());
  }
}
