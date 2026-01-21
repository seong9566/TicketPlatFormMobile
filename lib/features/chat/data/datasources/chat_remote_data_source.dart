import 'dart:io';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
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

  /// 채팅방 생성 또는 조회
  Future<BaseResponse<ChatRoomRespDto>> createOrGetChatRoom(
    CreateChatRoomReqDto req,
  );

  /// 메시지 전송
  Future<BaseResponse<SendMessageRespDto>> sendMessage({
    required int roomId,
    String? message,
    File? imageFile,
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
    File? imageFile,
  }) async {
    final formData = FormData();
    formData.fields.add(MapEntry('roomId', roomId.toString()));

    if (message != null && message.isNotEmpty) {
      formData.fields.add(MapEntry('message', message));
    }

    if (imageFile != null) {
      formData.files.add(
        MapEntry(
          'image',
          await MultipartFile.fromFile(
            imageFile.path,
            filename: 'chat_image_${DateTime.now().millisecondsSinceEpoch}.jpg',
          ),
        ),
      );
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
