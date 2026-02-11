import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/notification/data/repositories/notification_repository_impl.dart';
import 'package:ticket_platform_mobile/features/notification/domain/usecases/delete_fcm_token_usecase.dart';
import 'package:ticket_platform_mobile/features/notification/domain/usecases/get_notifications_usecase.dart';
import 'package:ticket_platform_mobile/features/notification/domain/usecases/get_unread_count_usecase.dart';
import 'package:ticket_platform_mobile/features/notification/domain/usecases/mark_all_notifications_read_usecase.dart';
import 'package:ticket_platform_mobile/features/notification/domain/usecases/mark_notification_read_usecase.dart';
import 'package:ticket_platform_mobile/features/notification/domain/usecases/register_fcm_token_usecase.dart';

part 'notification_providers_di.g.dart';

@riverpod
GetNotificationsUsecase getNotificationsUsecase(Ref ref) {
  return GetNotificationsUsecase(ref.read(notificationRepositoryProvider));
}

@riverpod
GetUnreadCountUsecase getUnreadCountUsecase(Ref ref) {
  return GetUnreadCountUsecase(ref.read(notificationRepositoryProvider));
}

@riverpod
MarkNotificationReadUsecase markNotificationReadUsecase(Ref ref) {
  return MarkNotificationReadUsecase(ref.read(notificationRepositoryProvider));
}

@riverpod
MarkAllNotificationsReadUsecase markAllNotificationsReadUsecase(Ref ref) {
  return MarkAllNotificationsReadUsecase(
    ref.read(notificationRepositoryProvider),
  );
}

@riverpod
RegisterFcmTokenUsecase registerFcmTokenUsecase(Ref ref) {
  return RegisterFcmTokenUsecase(ref.read(notificationRepositoryProvider));
}

@riverpod
DeleteFcmTokenUsecase deleteFcmTokenUsecase(Ref ref) {
  return DeleteFcmTokenUsecase(ref.read(notificationRepositoryProvider));
}
