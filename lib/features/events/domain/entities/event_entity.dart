import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/core/enums/category.dart';

part 'event_entity.freezed.dart';

@freezed
abstract class EventEntity with _$EventEntity {
  const factory EventEntity({
    required String id,
    required String title,
    required String posterImageUrl,
    required DateTime startDate,
    required DateTime endDate,
    required String location,
    required Category category,
  }) = _EventEntity;
}
