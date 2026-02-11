import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';
import 'package:ticket_platform_mobile/features/notification/domain/entities/notification_list_entity.dart';
import 'package:ticket_platform_mobile/features/notification/presentation/providers/notification_providers_di.dart';
import 'package:ticket_platform_mobile/features/notification/presentation/ui_models/notification_ui_model.dart';

part 'notification_list_viewmodel.freezed.dart';
part 'notification_list_viewmodel.g.dart';

@freezed
abstract class NotificationListState with _$NotificationListState {
  const factory NotificationListState({
    @Default([]) List<NotificationUiModel> items,
    String? nextCursor,
    @Default(false) bool hasMore,
    @Default(false) bool isLoadingMore,
  }) = _NotificationListState;
}

@riverpod
class NotificationListViewModel extends _$NotificationListViewModel {
  @override
  Future<NotificationListState> build() async {
    return _fetchNotifications();
  }

  Future<NotificationListState> _fetchNotifications({
    String? cursor,
    int limit = 20,
  }) async {
    final currentState = state.value;
    final result = await _executeGetNotifications(cursor: cursor, limit: limit);
    final newItems = result.items.map(NotificationUiModel.fromEntity).toList();

    if (cursor == null) {
      return NotificationListState(
        items: newItems,
        nextCursor: result.nextCursor,
        hasMore: result.hasMore,
      );
    }

    return currentState!.copyWith(
      items: [...currentState.items, ...newItems],
      nextCursor: result.nextCursor,
      hasMore: result.hasMore,
      isLoadingMore: false,
    );
  }

  Future<NotificationListEntity> _executeGetNotifications({
    String? cursor,
    int limit = 20,
  }) async {
    final usecase = ref.read(getNotificationsUsecaseProvider);
    return usecase.call(cursor: cursor, limit: limit);
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetchNotifications());
  }

  Future<void> loadMore() async {
    final currentState = state.value;
    if (currentState == null ||
        !currentState.hasMore ||
        currentState.isLoadingMore ||
        currentState.nextCursor == null) {
      return;
    }

    state = AsyncValue.data(currentState.copyWith(isLoadingMore: true));

    try {
      final newState = await _fetchNotifications(
        cursor: currentState.nextCursor,
      );
      state = AsyncValue.data(newState);
    } catch (e, stack) {
      AppLogger.e('[NotificationList] loadMore 실패', e, stack);
      state = AsyncValue.data(currentState.copyWith(isLoadingMore: false));
    }
  }

  Future<bool> markAsRead(int notificationId) async {
    final currentState = state.value;
    if (currentState == null) {
      return false;
    }

    NotificationUiModel? target;
    for (final item in currentState.items) {
      if (item.id == notificationId) {
        target = item;
        break;
      }
    }

    if (target == null || target.isRead) {
      return false;
    }

    try {
      await ref.read(markNotificationReadUsecaseProvider).call(notificationId);

      final updatedItems = currentState.items.map((item) {
        if (item.id != notificationId) {
          return item;
        }
        return item.copyWith(isRead: true);
      }).toList();

      state = AsyncValue.data(currentState.copyWith(items: updatedItems));
      return true;
    } catch (e, stack) {
      AppLogger.e('[NotificationList] markAsRead 실패', e, stack);
      return false;
    }
  }

  Future<int> markAllAsRead() async {
    final currentState = state.value;
    if (currentState == null || currentState.items.isEmpty) {
      return 0;
    }

    try {
      final updatedCount = await ref
          .read(markAllNotificationsReadUsecaseProvider)
          .call();
      final updatedItems = currentState.items
          .map((item) => item.copyWith(isRead: true))
          .toList();

      state = AsyncValue.data(currentState.copyWith(items: updatedItems));
      return updatedCount;
    } catch (e, stack) {
      AppLogger.e('[NotificationList] markAllAsRead 실패', e, stack);
      return 0;
    }
  }
}
