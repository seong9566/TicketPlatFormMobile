import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/network/api_endpoint.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/core/network/dio_provider.dart';
import 'package:ticket_platform_mobile/core/network/safe_api_call.dart';
import 'package:ticket_platform_mobile/features/notification/data/dto/request/delete_token_req_dto.dart';
import 'package:ticket_platform_mobile/features/notification/data/dto/request/get_notifications_req_dto.dart';
import 'package:ticket_platform_mobile/features/notification/data/dto/request/register_token_req_dto.dart';
import 'package:ticket_platform_mobile/features/notification/data/dto/response/notification_list_resp_dto.dart';
import 'package:ticket_platform_mobile/features/notification/data/dto/response/read_all_resp_dto.dart';
import 'package:ticket_platform_mobile/features/notification/data/dto/response/unread_count_resp_dto.dart';

part 'notification_remote_data_source.g.dart';

abstract class NotificationRemoteDataSource {
  Future<BaseResponse<void>> registerToken(RegisterTokenReqDto reqDto);

  Future<BaseResponse<void>> deleteToken(DeleteTokenReqDto reqDto);

  Future<BaseResponse<NotificationListRespDto>> getNotifications(
    GetNotificationsReqDto reqDto,
  );

  Future<BaseResponse<void>> markAsRead(int notificationId);

  Future<BaseResponse<ReadAllRespDto>> markAllAsRead();

  Future<BaseResponse<UnreadCountRespDto>> getUnreadCount();
}

class NotificationRemoteDataSourceImpl implements NotificationRemoteDataSource {
  NotificationRemoteDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<BaseResponse<void>> registerToken(RegisterTokenReqDto reqDto) async {
    return safeApiCall<void>(
      apiCall: (options) => _dio.post(
        ApiEndpoint.notificationToken,
        data: reqDto.toMap(),
        options: options,
      ),
      apiName: 'registerNotificationToken',
      dataParser: (_) {},
    );
  }

  @override
  Future<BaseResponse<void>> deleteToken(DeleteTokenReqDto reqDto) async {
    return safeApiCall<void>(
      apiCall: (options) => _dio.delete(
        ApiEndpoint.notificationToken,
        data: reqDto.toMap(),
        options: options,
      ),
      apiName: 'deleteNotificationToken',
      dataParser: (_) {},
    );
  }

  @override
  Future<BaseResponse<NotificationListRespDto>> getNotifications(
    GetNotificationsReqDto reqDto,
  ) async {
    return safeApiCall<NotificationListRespDto>(
      apiCall: (options) => _dio.get(
        ApiEndpoint.notifications,
        queryParameters: reqDto.toMap(),
        options: options,
      ),
      apiName: 'getNotifications',
      dataParser: (json) =>
          NotificationListRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<void>> markAsRead(int notificationId) async {
    return safeApiCall<void>(
      apiCall: (options) => _dio.put(
        ApiEndpoint.notificationRead(notificationId),
        options: options,
      ),
      apiName: 'markNotificationAsRead',
      dataParser: (_) {},
    );
  }

  @override
  Future<BaseResponse<ReadAllRespDto>> markAllAsRead() async {
    return safeApiCall<ReadAllRespDto>(
      apiCall: (options) =>
          _dio.put(ApiEndpoint.notificationsReadAll, options: options),
      apiName: 'markAllNotificationsAsRead',
      dataParser: (json) =>
          ReadAllRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<UnreadCountRespDto>> getUnreadCount() async {
    return safeApiCall<UnreadCountRespDto>(
      apiCall: (options) =>
          _dio.get(ApiEndpoint.notificationsUnreadCount, options: options),
      apiName: 'getNotificationUnreadCount',
      dataParser: (json) =>
          UnreadCountRespDto.fromJson(json as Map<String, dynamic>),
    );
  }
}

@riverpod
NotificationRemoteDataSource notificationRemoteDataSource(Ref ref) {
  return NotificationRemoteDataSourceImpl(ref.read(dioProvider));
}
