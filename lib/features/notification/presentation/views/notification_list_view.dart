import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_platform_mobile/core/navigation/deep_link_handler.dart';
import 'package:ticket_platform_mobile/core/theme/app_colors.dart';
import 'package:ticket_platform_mobile/core/theme/app_spacing.dart';
import 'package:ticket_platform_mobile/core/theme/app_text_styles.dart';
import 'package:ticket_platform_mobile/features/notification/presentation/ui_models/notification_ui_model.dart';
import 'package:ticket_platform_mobile/features/notification/presentation/viewmodels/notification_list_viewmodel.dart';
import 'package:ticket_platform_mobile/features/notification/presentation/viewmodels/unread_badge_viewmodel.dart';
import 'package:ticket_platform_mobile/features/notification/presentation/widgets/notification_item_widget.dart';

class NotificationListView extends ConsumerStatefulWidget {
  const NotificationListView({super.key});

  @override
  ConsumerState<NotificationListView> createState() =>
      _NotificationListViewState();
}

class _NotificationListViewState extends ConsumerState<NotificationListView> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(unreadBadgeViewModelProvider.notifier).syncUnreadCount();
    });
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      ref.read(notificationListViewModelProvider.notifier).loadMore();
    }
  }

  Future<void> _refresh() async {
    await ref.read(notificationListViewModelProvider.notifier).refresh();
    await ref.read(unreadBadgeViewModelProvider.notifier).syncUnreadCount();
  }

  Future<void> _markAllAsRead() async {
    final updatedCount = await ref
        .read(notificationListViewModelProvider.notifier)
        .markAllAsRead();

    if (updatedCount > 0) {
      ref.read(unreadBadgeViewModelProvider.notifier).clear();
    }

    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          updatedCount > 0 ? '전체 읽음 처리 완료 ($updatedCount건)' : '읽지 않은 알림이 없습니다.',
        ),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  Future<void> _onTapNotificationItem(NotificationUiModel item) async {
    if (!item.isRead) {
      final success = await ref
          .read(notificationListViewModelProvider.notifier)
          .markAsRead(item.id);
      if (success) {
        ref.read(unreadBadgeViewModelProvider.notifier).decrease();
      }
    }

    await ref
        .read(deepLinkHandlerProvider)
        .handle(typeCode: item.typeCode, extraData: item.data);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(notificationListViewModelProvider);

    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        foregroundColor: AppColors.textPrimary,
        title: const Text('알림', style: AppTextStyles.body1),
        actions: [
          TextButton(
            onPressed: _markAllAsRead,
            child: Text(
              '전체 읽음',
              style: AppTextStyles.caption.copyWith(color: AppColors.primary),
            ),
          ),
        ],
      ),
      body: state.when(
        data: (data) {
          if (data.items.isEmpty) {
            return RefreshIndicator(
              onRefresh: _refresh,
              child: ListView(
                children: const [
                  SizedBox(height: 180),
                  Icon(
                    Icons.notifications_none,
                    size: 48,
                    color: AppColors.textDisabled,
                  ),
                  SizedBox(height: AppSpacing.md),
                  Center(
                    child: Text('도착한 알림이 없습니다.', style: AppTextStyles.body2),
                  ),
                ],
              ),
            );
          }

          return RefreshIndicator(
            onRefresh: _refresh,
            child: ListView.separated(
              controller: _scrollController,
              padding: const EdgeInsets.all(AppSpacing.md),
              itemCount: data.items.length + (data.isLoadingMore ? 1 : 0),
              separatorBuilder: (_, __) =>
                  const SizedBox(height: AppSpacing.sm),
              itemBuilder: (context, index) {
                if (index == data.items.length) {
                  return const Padding(
                    padding: EdgeInsets.all(AppSpacing.md),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }

                final item = data.items[index];
                return NotificationItemWidget(
                  item: item,
                  onTap: () => _onTapNotificationItem(item),
                );
              },
            ),
          );
        },
        loading: () => const Center(
          child: CircularProgressIndicator(color: AppColors.primary),
        ),
        error: (error, stack) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.error_outline,
                    size: 48,
                    color: AppColors.destructive,
                  ),
                  const SizedBox(height: AppSpacing.md),
                  Text(
                    '알림을 불러오지 못했습니다.',
                    style: AppTextStyles.body2.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  TextButton(onPressed: _refresh, child: const Text('다시 시도')),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
