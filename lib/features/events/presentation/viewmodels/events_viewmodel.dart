import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/enums/category.dart';
import 'package:ticket_platform_mobile/features/events/presentation/providers/events_providers_di.dart';
import 'package:ticket_platform_mobile/features/events/presentation/ui_models/event_ui_model.dart';

part 'events_viewmodel.freezed.dart';
part 'events_viewmodel.g.dart';

@freezed
abstract class EventsState with _$EventsState {
  const factory EventsState({
    @Default([]) List<EventUiModel> events,
    @Default(Category.concert) Category selectedCategory,
    @Default('') String searchQuery,
    @Default(false) bool isLoading,
  }) = _EventsState;
}

@riverpod
class EventsViewModel extends _$EventsViewModel {
  @override
  FutureOr<EventsState> build({String? initialCategory}) async {
    final cat = initialCategory != null
        ? Category.fromLabel(initialCategory)
        : Category.concert;
    return _fetchEvents(cat);
  }

  Future<EventsState> _fetchEvents(Category category) async {
    final usecase = ref.read(getEventsUsecaseProvider);
    final entities = await usecase.call(category);
    final uiModels = entities.map((e) => EventUiModel.fromEntity(e)).toList();

    return EventsState(
      events: uiModels,
      selectedCategory: category,
      isLoading: false,
    );
  }

  Future<void> changeCategory(Category category) async {
    if (state.hasValue) {
      state = AsyncValue.data(state.value!.copyWith(isLoading: true));
    }
    final result = await AsyncValue.guard(() => _fetchEvents(category));
    state = result;
  }

  Future<void> updateSearchQuery(String query) async {
    final currentState = state.value;
    if (currentState != null) {
      state = AsyncValue.data(currentState.copyWith(searchQuery: query));
    }
  }

  List<EventUiModel> getFilteredEvents(EventsState s) {
    if (s.searchQuery.isEmpty) return s.events;
    return s.events
        .where(
          (e) => e.title.toLowerCase().contains(s.searchQuery.toLowerCase()),
        )
        .toList();
  }
}
