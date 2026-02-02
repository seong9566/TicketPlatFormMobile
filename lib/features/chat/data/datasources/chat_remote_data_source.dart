import 'dart:io';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/error/failures.dart';
import 'package:ticket_platform_mobile/core/network/api_endpoint.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/core/network/dio_provider.dart';
import 'package:ticket_platform_mobile/core/network/safe_api_call.dart';
import 'package:ticket_platform_mobile/features/chat/data/dto/request/chat_req_dto.dart';
import 'package:ticket_platform_mobile/features/chat/data/dto/response/chat_resp_dto.dart';

part 'chat_remote_data_source.g.dart';

abstract class ChatRemoteDataSource {
  /// 채팅방 목록 조회
  Future<BaseResponse<List<ChatRoomListItemDto>>> getChatRooms({
    int page = 1,
    int pageSize = 20,
  });

  /// 채팅방 상세 조회
  Future<BaseResponse<ChatRoomRespDto>> getChatRoomDetail(int roomId);

  /// 티켓 ID로 기존 채팅방 조회 (생성하지 않음)
  Future<BaseResponse<ChatRoomRespDto>> getChatRoomByTicket(int ticketId);

  /// 채팅방 생성 또는 조회
  Future<BaseResponse<ChatRoomRespDto>> createOrGetChatRoom(
    CreateChatRoomReqDto req,
  );

  /// 메시지 전송
  Future<BaseResponse<SendMessageRespDto>> sendMessage({
    required int roomId,
    String? message,
    List<File>? imageFiles,
  });

  /// 메시지 목록 조회
  Future<BaseResponse<List<MessageDto>>> getMessages({
    required int roomId,
    int? lastMessageId,
    int limit = 50,
  });

  /// 메시지 읽음 처리
  Future<BaseResponse<void>> markAsRead(int roomId);

  /// 결제 요청
  Future<BaseResponse<PaymentRequestRespDto>> requestPayment(
    RequestPaymentReqDto req,
  );

  /// 구매 확정
  Future<BaseResponse<PurchaseConfirmRespDto>> confirmPurchase(
    ConfirmPurchaseReqDto req,
  );

  /// 거래 취소
  Future<BaseResponse<void>> cancelTransaction(CancelTransactionReqDto req);

  /// 채팅방 나가기
  Future<BaseResponse<void>> leaveRoom(LeaveChatRoomReqDto req);

  /// 이미지 URL 재발급
  Future<BaseResponse<ImageUrlRefreshRespDto>> refreshImageUrl(int messageId);
}

class ChatRemoteDataSourceImpl implements ChatRemoteDataSource {
  ChatRemoteDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<BaseResponse<List<ChatRoomListItemDto>>> getChatRooms({
    int page = 1,
    int pageSize = 20,
  }) async {
    return safeApiCall<List<ChatRoomListItemDto>>(
      apiCall: (options) => _dio.get(
        ApiEndpoint.chatRooms,
        queryParameters: {'page': page, 'pageSize': pageSize},
        options: options,
      ),
      apiName: 'getChatRooms',
      dataParser: (json) => (json as List)
          .map((e) => ChatRoomListItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Future<BaseResponse<ChatRoomRespDto>> getChatRoomDetail(int roomId) async {
    return safeApiCall<ChatRoomRespDto>(
      apiCall: (options) => _dio.get(
        ApiEndpoint.chatRoomDetail,
        queryParameters: {'roomId': roomId},
        options: options,
      ),
      apiName: 'getChatRoomDetail',
      dataParser: (json) =>
          ChatRoomRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<ChatRoomRespDto>> getChatRoomByTicket(
    int ticketId,
  ) async {
    try {
      // 404를 조용히 처리하기 위해 safeApiCall을 사용하지 않음
      final response = await _dio.get(
        ApiEndpoint.chatRoomByTicket,
        queryParameters: {'ticketId': ticketId},
      );

      final responseData = response.data;
      if (responseData is Map<String, dynamic>) {
        return BaseResponse<ChatRoomRespDto>.fromJson(
          responseData,
          (json) => ChatRoomRespDto.fromJson(json as Map<String, dynamic>),
        );
      }

      throw Exception('Invalid response format');
    } on DioException catch (e) {
      // 404는 정상 케이스이므로 에러 로그 없이 Failure.notFound만 throw
      if (e.response?.statusCode == 404) {
        throw const Failure.notFound();
      }
      // 다른 에러는 적절한 Failure로 변환
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.sendTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw const Failure.network();
      }
      if (e.response?.statusCode == 401) {
        throw const Failure.unauthorized();
      }
      throw Failure.server(e.message ?? '네트워크 오류가 발생했습니다.');
    }
  }

  @override
  Future<BaseResponse<ChatRoomRespDto>> createOrGetChatRoom(
    CreateChatRoomReqDto req,
  ) async {
    return safeApiCall<ChatRoomRespDto>(
      apiCall: (options) =>
          _dio.post(ApiEndpoint.chatRooms, data: req.toMap(), options: options),
      apiName: 'createOrGetChatRoom',
      dataParser: (json) =>
          ChatRoomRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<SendMessageRespDto>> sendMessage({
    required int roomId,
    String? message,
    List<File>? imageFiles,
  }) async {
    final formData = FormData();
    formData.fields.add(MapEntry('roomId', roomId.toString()));

    if (message != null && message.isNotEmpty) {
      formData.fields.add(MapEntry('message', message));
    }

    if (imageFiles != null && imageFiles.isNotEmpty) {
      if (imageFiles.length > 5) {
        throw Exception('Maximum 5 images allowed');
      }

      for (int i = 0; i < imageFiles.length; i++) {
        formData.files.add(
          MapEntry(
            'images',
            await MultipartFile.fromFile(
              imageFiles[i].path,
              filename:
                  'chat_image_${DateTime.now().millisecondsSinceEpoch}_$i.jpg',
            ),
          ),
        );
      }
    }

    return safeApiCall<SendMessageRespDto>(
      apiCall: (options) => _dio.post(
        ApiEndpoint.chatMessages,
        data: formData,
        options: Options(
          contentType: 'multipart/form-data',
          extra: options.extra,
        ),
      ),
      apiName: 'sendMessage',
      dataParser: (json) =>
          SendMessageRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<List<MessageDto>>> getMessages({
    required int roomId,
    int? lastMessageId,
    int limit = 50,
  }) async {
    final queryParams = <String, dynamic>{'roomId': roomId, 'limit': limit};
    if (lastMessageId != null) {
      queryParams['lastMessageId'] = lastMessageId;
    }

    return safeApiCall<List<MessageDto>>(
      apiCall: (options) => _dio.get(
        ApiEndpoint.chatMessages,
        queryParameters: queryParams,
        options: options,
      ),
      apiName: 'getMessages',
      dataParser: (json) => (json as List)
          .map((e) => MessageDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Future<BaseResponse<void>> markAsRead(int roomId) async {
    return safeApiCall<void>(
      apiCall: (options) => _dio.post(
        ApiEndpoint.chatRoomRead,
        data: {'roomId': roomId},
        options: options,
      ),
      apiName: 'markAsRead',
      dataParser: (_) {},
    );
  }

  @override
  Future<BaseResponse<PaymentRequestRespDto>> requestPayment(
    RequestPaymentReqDto req,
  ) async {
    return safeApiCall<PaymentRequestRespDto>(
      apiCall: (options) => _dio.post(
        ApiEndpoint.requestPayment,
        data: req.toMap(),
        options: options,
      ),
      apiName: 'requestPayment',
      dataParser: (json) =>
          PaymentRequestRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<PurchaseConfirmRespDto>> confirmPurchase(
    ConfirmPurchaseReqDto req,
  ) async {
    return safeApiCall<PurchaseConfirmRespDto>(
      apiCall: (options) => _dio.post(
        ApiEndpoint.confirmPurchase,
        data: req.toMap(),
        options: options,
      ),
      apiName: 'confirmPurchase',
      dataParser: (json) =>
          PurchaseConfirmRespDto.fromJson(json as Map<String, dynamic>),
    );
  }

  @override
  Future<BaseResponse<void>> cancelTransaction(
    CancelTransactionReqDto req,
  ) async {
    return safeApiCall<void>(
      apiCall: (options) => _dio.post(
        ApiEndpoint.cancelTransaction,
        data: req.toMap(),
        options: options,
      ),
      apiName: 'cancelTransaction',
      dataParser: (_) {},
    );
  }

  @override
  Future<BaseResponse<void>> leaveRoom(LeaveChatRoomReqDto req) async {
    return safeApiCall<void>(
      apiCall: (options) => _dio.post(
        ApiEndpoint.chatRoomLeave,
        data: req.toMap(),
        options: options,
      ),
      apiName: 'leaveRoom',
      dataParser: (_) {},
    );
  }

  @override
  Future<BaseResponse<ImageUrlRefreshRespDto>> refreshImageUrl(
    int messageId,
  ) async {
    return safeApiCall<ImageUrlRefreshRespDto>(
      apiCall: (options) => _dio.get(
        ApiEndpoint.chatMessageImageUrl,
        queryParameters: {'messageId': messageId},
        options: options,
      ),
      apiName: 'refreshImageUrl',
      dataParser: (json) =>
          ImageUrlRefreshRespDto.fromJson(json as Map<String, dynamic>),
    );
  }
}

@riverpod
ChatRemoteDataSource chatRemoteDataSource(Ref ref) {
  return ChatRemoteDataSourceImpl(ref.watch(dioProvider));
}
