import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:signalr_netcore/signalr_client.dart';
import 'package:ticket_platform_mobile/core/network/api_endpoint.dart';
import 'package:ticket_platform_mobile/core/utils/logger.dart';
import 'package:ticket_platform_mobile/features/chat/domain/entities/message_entity.dart';

part 'chat_signalr_data_source.g.dart';

class RoomUpdatedEvent {
  final int roomId;
  final String event;
  final int? transactionId;
  final String? statusCode;
  final String message;

  RoomUpdatedEvent({
    required this.roomId,
    required this.event,
    this.transactionId,
    this.statusCode,
    required this.message,
  });

  factory RoomUpdatedEvent.fromMap(Map<String, dynamic> data) {
    return RoomUpdatedEvent(
      roomId: data['roomId'] as int,
      event: data['event'] as String,
      transactionId: data['transactionId'] as int?,
      statusCode: data['statusCode'] as String?,
      message: data['message'] as String,
    );
  }
}

class TypingEvent {
  final int userId;
  final int roomId;
  final DateTime timestamp;

  TypingEvent({
    required this.userId,
    required this.roomId,
    required this.timestamp,
  });

  factory TypingEvent.fromMap(Map<String, dynamic> data) {
    return TypingEvent(
      userId: data['userId'] as int,
      roomId: data['roomId'] as int,
      timestamp: DateTime.parse(data['timestamp'] as String),
    );
  }
}

class UserStateEvent {
  final int userId;
  final int roomId;
  final DateTime timestamp;

  UserStateEvent({
    required this.userId,
    required this.roomId,
    required this.timestamp,
  });

  factory UserStateEvent.fromMap(Map<String, dynamic> data) {
    return UserStateEvent(
      userId: data['userId'] as int,
      roomId: data['roomId'] as int,
      timestamp: DateTime.parse(data['timestamp'] as String),
    );
  }
}

abstract class ChatSignalRDataSource {
  Future<void> connect(String token);
  Future<void> disconnect();
  bool get isConnected;

  Future<void> joinRoom(int roomId);
  Future<void> leaveRoom(int roomId);
  Future<void> userTyping(int roomId);
  Future<void> userStoppedTyping(int roomId);

  Stream<MessageEntity> get onReceiveMessage;
  Stream<RoomUpdatedEvent> get onRoomUpdated;
  Stream<TypingEvent> get onUserTyping;
  Stream<TypingEvent> get onUserStoppedTyping;
  Stream<UserStateEvent> get onUserJoined;
  Stream<UserStateEvent> get onUserLeft;
}

class ChatSignalRDataSourceImpl implements ChatSignalRDataSource {
  HubConnection? _hubConnection;

  final _messageController = StreamController<MessageEntity>.broadcast();
  final _roomUpdatedController = StreamController<RoomUpdatedEvent>.broadcast();
  final _typingController = StreamController<TypingEvent>.broadcast();
  final _stoppedTypingController = StreamController<TypingEvent>.broadcast();
  final _userJoinedController = StreamController<UserStateEvent>.broadcast();
  final _userLeftController = StreamController<UserStateEvent>.broadcast();

  @override
  bool get isConnected =>
      _hubConnection?.state == HubConnectionState.Connected;

  @override
  Future<void> connect(String token) async {
    try {
      final hubUrl = ApiEndpoint.chatHub;
      AppLogger.i('SignalR connecting to: $hubUrl');

      _hubConnection = HubConnectionBuilder()
          .withUrl(
            hubUrl,
            options: HttpConnectionOptions(
              accessTokenFactory: () async => token,
              transport: HttpTransportType.WebSockets,
              skipNegotiation: true,
            ),
          )
          .withAutomaticReconnect()
          .build();

      _setupListeners();

      await _hubConnection!.start();
      AppLogger.i('SignalR connected successfully');
    } catch (e, stack) {
      AppLogger.e('SignalR connection error', e, stack);
      rethrow;
    }
  }

  void _setupListeners() {
    _hubConnection!.on('ReceiveMessage', (arguments) {
      try {
        if (arguments == null || arguments.isEmpty) return;
        final data = arguments[0] as Map<String, dynamic>;
        final message = _parseMessage(data);
        _messageController.add(message);
      } catch (e, stack) {
        AppLogger.e('Error parsing ReceiveMessage', e, stack);
      }
    });

    _hubConnection!.on('RoomUpdated', (arguments) {
      try {
        if (arguments == null || arguments.isEmpty) return;
        final data = arguments[0] as Map<String, dynamic>;
        final event = RoomUpdatedEvent.fromMap(data);
        _roomUpdatedController.add(event);
      } catch (e, stack) {
        AppLogger.e('Error parsing RoomUpdated', e, stack);
      }
    });

    _hubConnection!.on('UserTyping', (arguments) {
      try {
        if (arguments == null || arguments.isEmpty) return;
        final data = arguments[0] as Map<String, dynamic>;
        final event = TypingEvent.fromMap(data);
        _typingController.add(event);
      } catch (e, stack) {
        AppLogger.e('Error parsing UserTyping', e, stack);
      }
    });

    _hubConnection!.on('UserStoppedTyping', (arguments) {
      try {
        if (arguments == null || arguments.isEmpty) return;
        final data = arguments[0] as Map<String, dynamic>;
        final event = TypingEvent.fromMap(data);
        _stoppedTypingController.add(event);
      } catch (e, stack) {
        AppLogger.e('Error parsing UserStoppedTyping', e, stack);
      }
    });

    _hubConnection!.on('UserJoined', (arguments) {
      try {
        if (arguments == null || arguments.isEmpty) return;
        final data = arguments[0] as Map<String, dynamic>;
        final event = UserStateEvent.fromMap(data);
        _userJoinedController.add(event);
      } catch (e, stack) {
        AppLogger.e('Error parsing UserJoined', e, stack);
      }
    });

    _hubConnection!.on('UserLeft', (arguments) {
      try {
        if (arguments == null || arguments.isEmpty) return;
        final data = arguments[0] as Map<String, dynamic>;
        final event = UserStateEvent.fromMap(data);
        _userLeftController.add(event);
      } catch (e, stack) {
        AppLogger.e('Error parsing UserLeft', e, stack);
      }
    });

    _hubConnection!.onclose(({Exception? error}) {
      AppLogger.w('SignalR connection closed: $error');
    });

    _hubConnection!.onreconnecting(({Exception? error}) {
      AppLogger.w('SignalR reconnecting: $error');
    });

    _hubConnection!.onreconnected(({String? connectionId}) {
      AppLogger.i('SignalR reconnected: $connectionId');
    });
  }

  MessageEntity _parseMessage(Map<String, dynamic> data) {
    return MessageEntity(
      messageId: data['messageId'] as int,
      roomId: data['roomId'] as int,
      senderId: data['senderId'] as int,
      senderNickname: data['senderNickname'] as String? ?? '',
      senderProfileImage: data['senderProfileImage'] as String?,
      message: data['message'] as String?,
      imageUrl: data['imageUrl'] as String?,
      createdAt: DateTime.parse(data['createdAt'] as String),
      isMyMessage: false,
    );
  }

  @override
  Future<void> disconnect() async {
    try {
      await _hubConnection?.stop();
      await _messageController.close();
      await _roomUpdatedController.close();
      await _typingController.close();
      await _stoppedTypingController.close();
      await _userJoinedController.close();
      await _userLeftController.close();
      AppLogger.i('SignalR disconnected');
    } catch (e, stack) {
      AppLogger.e('Error disconnecting SignalR', e, stack);
    }
  }

  @override
  Future<void> joinRoom(int roomId) async {
    try {
      await _hubConnection?.invoke('JoinRoom', args: [roomId]);
      AppLogger.i('Joined room: $roomId');
    } catch (e, stack) {
      AppLogger.e('Error joining room', e, stack);
      rethrow;
    }
  }

  @override
  Future<void> leaveRoom(int roomId) async {
    try {
      await _hubConnection?.invoke('LeaveRoom', args: [roomId]);
      AppLogger.i('Left room: $roomId');
    } catch (e, stack) {
      AppLogger.e('Error leaving room', e, stack);
    }
  }

  @override
  Future<void> userTyping(int roomId) async {
    try {
      await _hubConnection?.invoke('UserTyping', args: [roomId]);
    } catch (e, stack) {
      AppLogger.e('Error sending typing', e, stack);
    }
  }

  @override
  Future<void> userStoppedTyping(int roomId) async {
    try {
      await _hubConnection?.invoke('UserStoppedTyping', args: [roomId]);
    } catch (e, stack) {
      AppLogger.e('Error sending stopped typing', e, stack);
    }
  }

  @override
  Stream<MessageEntity> get onReceiveMessage => _messageController.stream;

  @override
  Stream<RoomUpdatedEvent> get onRoomUpdated => _roomUpdatedController.stream;

  @override
  Stream<TypingEvent> get onUserTyping => _typingController.stream;

  @override
  Stream<TypingEvent> get onUserStoppedTyping =>
      _stoppedTypingController.stream;

  @override
  Stream<UserStateEvent> get onUserJoined => _userJoinedController.stream;

  @override
  Stream<UserStateEvent> get onUserLeft => _userLeftController.stream;
}

@riverpod
ChatSignalRDataSource chatSignalRDataSource(Ref ref) {
  return ChatSignalRDataSourceImpl();
}
