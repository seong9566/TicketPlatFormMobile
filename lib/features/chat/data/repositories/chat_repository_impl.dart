import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/features/chat/data/datasources/chat_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/chat/data/dto/request/chat_req_dto.dart';
import 'package:ticket_platform_mobile/features/chat/data/dto/response/chat_resp_dto.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/chat_room_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/message_entity.dart';
import 'package:ticket_platform_mobile/features/chat/domain/repositories/chat_repository.dart';

part 'chat_repository_impl.g.dart';

class ChatRepositoryImpl implements ChatRepository {
  ChatRepositoryImpl(this._remoteDataSource);

  final ChatRemoteDataSource _remoteDataSource;

  @override
  Future<List<ChatRoomListItemEntity>> getChatRooms({
    int page = 1,
    int pageSize = 20,
  }) async {
    final response = await _remoteDataSource.getChatRooms(
      page: page,
      pageSize: pageSize,
    );
    return response.dataOrThrow.map((dto) => dto.toEntity()).toList();
  }

  @override
  Future<ChatRoomEntity> getChatRoomDetail(int roomId) async {
    final response = await _remoteDataSource.getChatRoomDetail(roomId);
    return response.dataOrThrow.toEntity();
  }

  @override
  Future<ChatRoomEntity> createOrGetChatRoom(int ticketId) async {
    final response = await _remoteDataSource.createOrGetChatRoom(
      CreateChatRoomReqDto(ticketId: ticketId),
    );
    return response.dataOrThrow.toEntity();
  }

  @override
  Future<MessageEntity> sendMessage({
    required int roomId,
    String? message,
    File? imageFile,
  }) async {
    final response = await _remoteDataSource.sendMessage(
      roomId: roomId,
      message: message,
      imageFile: imageFile,
    );
    final data = response.dataOrThrow;
    return MessageEntity(
      messageId: data.messageId,
      roomId: data.roomId,
      senderId: 0, // 서버에서 반환하지 않음, 본인이 보낸 메시지
      senderNickname: '',
      message: data.message,
      imageUrl: data.imageUrl,
      createdAt: DateTime.parse(data.createdAt),
      isMyMessage: true,
    );
  }

  @override
  Future<List<MessageEntity>> getMessages({
    required int roomId,
    int? lastMessageId,
    int limit = 50,
  }) async {
    final response = await _remoteDataSource.getMessages(
      roomId: roomId,
      lastMessageId: lastMessageId,
      limit: limit,
    );
    return response.dataOrThrow.map((dto) => dto.toEntity()).toList();
  }

  @override
  Future<void> markAsRead(int roomId) async {
    await _remoteDataSource.markAsRead(roomId);
  }

  @override
  Future<PaymentRequestResult> requestPayment({
    required int roomId,
    required int transactionId,
  }) async {
    final response = await _remoteDataSource.requestPayment(
      RequestPaymentReqDto(roomId: roomId, transactionId: transactionId),
    );
    return response.dataOrThrow.toResult();
  }

  @override
  Future<PurchaseConfirmResult> confirmPurchase({
    required int roomId,
    required int transactionId,
  }) async {
    final response = await _remoteDataSource.confirmPurchase(
      ConfirmPurchaseReqDto(roomId: roomId, transactionId: transactionId),
    );
    return response.dataOrThrow.toResult();
  }

  @override
  Future<void> cancelTransaction({
    required int roomId,
    required int transactionId,
    required String cancelReason,
  }) async {
    await _remoteDataSource.cancelTransaction(
      CancelTransactionReqDto(
        roomId: roomId,
        transactionId: transactionId,
        cancelReason: cancelReason,
      ),
    );
  }
}

@riverpod
ChatRepository chatRepository(Ref ref) {
  return ChatRepositoryImpl(ref.watch(chatRemoteDataSourceProvider));
}
