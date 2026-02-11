import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/features/notification/data/datasources/notification_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/notification/data/dto/request/delete_token_req_dto.dart';
import 'package:ticket_platform_mobile/features/notification/data/dto/request/get_notifications_req_dto.dart';
import 'package:ticket_platform_mobile/features/notification/data/dto/request/register_token_req_dto.dart';
import 'package:ticket_platform_mobile/features/notification/domain/entities/notification_list_entity.dart';
import 'package:ticket_platform_mobile/features/notification/domain/repositories/notification_repository.dart';

part 'notification_repository_impl.g.dart';

class NotificationRepositoryImpl implements NotificationRepository {
  NotificationRepositoryImpl(this._remoteDataSource);

  final NotificationRemoteDataSource _remoteDataSource;

  @override
  Future<void> registerToken({
    required String deviceToken,
    required String platform,
  }) async {
    final reqDto = RegisterTokenReqDto(
      deviceToken: deviceToken,
      platform: platform,
    );
    final response = await _remoteDataSource.registerToken(reqDto);
    if (!response.isSuccess) {
      throw Exception(
        response.message.isNotEmpty ? response.message : '토큰 등록 실패',
      );
    }
  }

  @override
  Future<void> deleteToken({required String deviceToken}) async {
    final reqDto = DeleteTokenReqDto(deviceToken: deviceToken);
    final response = await _remoteDataSource.deleteToken(reqDto);
    if (!response.isSuccess) {
      throw Exception(
        response.message.isNotEmpty ? response.message : '토큰 삭제 실패',
      );
    }
  }

  @override
  Future<NotificationListEntity> getNotifications({
    String? cursor,
    int limit = 20,
  }) async {
    final reqDto = GetNotificationsReqDto(cursor: cursor, limit: limit);
    final response = await _remoteDataSource.getNotifications(reqDto);

    return response.mapOrThrow(
      (dto) => dto.toEntity(),
      errorMessage: '알림 목록을 불러올 수 없습니다.',
    );
  }

  @override
  Future<void> markAsRead(int notificationId) async {
    final response = await _remoteDataSource.markAsRead(notificationId);
    if (!response.isSuccess) {
      throw Exception(
        response.message.isNotEmpty ? response.message : '읽음 처리 실패',
      );
    }
  }

  @override
  Future<int> markAllAsRead() async {
    final response = await _remoteDataSource.markAllAsRead();
    return response.mapOrThrow(
      (dto) => dto.updatedCount,
      errorMessage: '전체 읽음 처리에 실패했습니다.',
    );
  }

  @override
  Future<int> getUnreadCount() async {
    final response = await _remoteDataSource.getUnreadCount();
    return response.mapOrThrow(
      (dto) => dto.unreadCount,
      errorMessage: '미읽음 카운트를 불러올 수 없습니다.',
    );
  }
}

@riverpod
NotificationRepository notificationRepository(Ref ref) {
  return NotificationRepositoryImpl(
    ref.read(notificationRemoteDataSourceProvider),
  );
}
