import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';
import 'package:ticket_platform_mobile/features/notification/presentation/providers/notification_providers_di.dart';

part 'unread_badge_viewmodel.g.dart';

@Riverpod(keepAlive: true)
class UnreadBadgeViewModel extends _$UnreadBadgeViewModel {
  @override
  int build() => 0;

  Future<void> syncUnreadCount() async {
    try {
      final unreadCount = await ref.read(getUnreadCountUsecaseProvider).call();
      state = unreadCount;
    } catch (e, stack) {
      AppLogger.e('[UnreadBadge] sync 실패', e, stack);
    }
  }

  void increase([int by = 1]) {
    final safeBy = by < 1 ? 1 : by;
    state = state + safeBy;
  }

  void decrease([int by = 1]) {
    final safeBy = by < 1 ? 1 : by;
    final next = state - safeBy;
    state = next < 0 ? 0 : next;
  }

  void clear() {
    state = 0;
  }
}
