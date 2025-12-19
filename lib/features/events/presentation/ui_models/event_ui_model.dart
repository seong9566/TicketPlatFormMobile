import 'package:intl/intl.dart';
import 'package:ticket_platform_mobile/core/enums/category.dart';
import 'package:ticket_platform_mobile/features/events/domain/entities/event_entity.dart';

class EventUiModel {
  final String id;
  final String title;
  final String posterImageUrl;
  final String dateRange;
  final String location;
  final Category category;

  EventUiModel({
    required this.id,
    required this.title,
    required this.posterImageUrl,
    required this.dateRange,
    required this.location,
    required this.category,
  });

  factory EventUiModel.fromEntity(EventEntity entity) {
    final dateFormat = DateFormat('yyyy.MM.dd');
    final dateRange =
        '${dateFormat.format(entity.startDate)} - ${dateFormat.format(entity.endDate)}';

    return EventUiModel(
      id: entity.id,
      title: entity.title,
      posterImageUrl: entity.posterImageUrl,
      dateRange: dateRange,
      location: entity.location,
      category: entity.category,
    );
  }
}
