import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticket_platform_mobile/features/event/domain/entities/event_session.dart';

part 'event_state.freezed.dart';

@freezed
abstract class EventState with _$EventState {
  const factory EventState({
    @Default('콘서트') String selectedEvent,
    @Default([]) List<EventSessionUiModel> popularEventSessions,
    @Default([]) List<EventSessionUiModel> allEventSessions,
    @Default(true) bool isLoading,
    String? errorMessage,
  }) = _EventState;
}

@freezed
abstract class EventSessionUiModel with _$EventSessionUiModel {
  const factory EventSessionUiModel({
    required int id,
    required String name,
    required String description, // name + englishName
    required String eventTitle,
    required String imageUrl,
    required bool isNew,
    required bool isHot,
    required bool isSoldOut,
  }) = _EventSessionUiModel;

  factory EventSessionUiModel.fromEntity(EventSession entity) {
    return EventSessionUiModel(
      id: entity.id,
      name: entity.name,
      description: '${entity.name} (${entity.englishName})',
      eventTitle: entity.title,
      imageUrl: entity.imageUrl,
      isNew: entity.isNew,
      isHot: entity.isHot,
      isSoldOut: entity.ticketCount < 10,
    );
  }
}
