/// SignalR DataSource - Data Layer
///
/// **왜 연결 코드를 Presentation Layer에 두지 않아야 하는가?**
///
/// SignalR은 REST API와 마찬가지로 "외부 데이터 소스"입니다:
/// - REST API → HTTP 프로토콜로 데이터 송수신
/// - SignalR → WebSocket 프로토콜로 실시간 데이터 송수신
///
/// **StreamController의 역할:**
/// - SignalR 이벤트를 Dart Stream으로 변환하는 "어댑터"
/// - ViewModel은 이 Stream을 구독하여 UI 상태 업데이트
/// - ViewModel은 SignalR 라이브러리에 직접 의존하지 않음
///
/// **Clean Architecture 준수:**
/// ```
/// Presentation (ViewModel) → Domain (UseCase) → Data (DataSource)
///                                                    ↑
///                                              SignalR 통신
/// ```
///
/// **참고:** 만약 SignalR을 ViewModel에 두면 Clean Architecture 위반
/// - ViewModel이 외부 라이브러리에 직접 의존
/// - 테스트 시 SignalR 서버 필요
/// - Domain Layer 우회
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

  StreamController<MessageEntity>? _messageController;
  StreamController<RoomUpdatedEvent>? _roomUpdatedController;
  StreamController<TypingEvent>? _typingController;
  StreamController<TypingEvent>? _stoppedTypingController;
  StreamController<UserStateEvent>? _userJoinedController;
  StreamController<UserStateEvent>? _userLeftController;

  final Set<int> _joinedRooms = {};

  void _ensureControllersInitialized() {
    _messageController ??= StreamController<MessageEntity>.broadcast();
    _roomUpdatedController ??= StreamController<RoomUpdatedEvent>.broadcast();
    _typingController ??= StreamController<TypingEvent>.broadcast();
    _stoppedTypingController ??= StreamController<TypingEvent>.broadcast();
    _userJoinedController ??= StreamController<UserStateEvent>.broadcast();
    _userLeftController ??= StreamController<UserStateEvent>.broadcast();
  }

  @override
  bool get isConnected => _hubConnection?.state == HubConnectionState.Connected;

  @override
  Future<void> connect(String token) async {
    try {
      _ensureControllersInitialized();

      // 기존 연결이 있다면 정리
      if (_hubConnection != null) {
        await disconnect();
      }

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

  // 리스너 설정
  void _setupListeners() {
    // 메세지 수신
    _hubConnection!.on('ReceiveMessage', (arguments) {
      try {
        if (arguments == null || arguments.isEmpty) return;
        final data = arguments[0] as Map<String, dynamic>;
        final message = _parseMessage(data);
        _messageController!.add(message);
      } catch (e, stack) {
        AppLogger.e('Error parsing ReceiveMessage', e, stack);
      }
    });

    // 방 업데이트
    _hubConnection!.on('RoomUpdated', (arguments) {
      try {
        if (arguments == null || arguments.isEmpty) return;
        final data = arguments[0] as Map<String, dynamic>;
        final event = RoomUpdatedEvent.fromMap(data);
        _roomUpdatedController!.add(event);
      } catch (e, stack) {
        AppLogger.e('Error parsing RoomUpdated', e, stack);
      }
    });

    // 사용자 타이핑
    _hubConnection!.on('UserTyping', (arguments) {
      try {
        if (arguments == null || arguments.isEmpty) return;
        final data = arguments[0] as Map<String, dynamic>;
        final event = TypingEvent.fromMap(data);
        _typingController!.add(event);
      } catch (e, stack) {
        AppLogger.e('Error parsing UserTyping', e, stack);
      }
    });

    // 사용자 타이핑 중지
    _hubConnection!.on('UserStoppedTyping', (arguments) {
      try {
        if (arguments == null || arguments.isEmpty) return;
        final data = arguments[0] as Map<String, dynamic>;
        final event = TypingEvent.fromMap(data);
        _stoppedTypingController!.add(event);
      } catch (e, stack) {
        AppLogger.e('Error parsing UserStoppedTyping', e, stack);
      }
    });

    // 사용자 참여
    _hubConnection!.on('UserJoined', (arguments) {
      try {
        if (arguments == null || arguments.isEmpty) return;
        final data = arguments[0] as Map<String, dynamic>;
        final event = UserStateEvent.fromMap(data);
        _userJoinedController!.add(event);
      } catch (e, stack) {
        AppLogger.e('Error parsing UserJoined', e, stack);
      }
    });

    // 사용자 퇴장
    _hubConnection!.on('UserLeft', (arguments) {
      try {
        if (arguments == null || arguments.isEmpty) return;
        final data = arguments[0] as Map<String, dynamic>;
        final event = UserStateEvent.fromMap(data);
        _userLeftController!.add(event);
      } catch (e, stack) {
        AppLogger.e('Error parsing UserLeft', e, stack);
      }
    });

    // 연결 끊김
    _hubConnection!.onclose(({Exception? error}) {
      AppLogger.w('SignalR connection closed: $error');
    });

    // 재연결 시도
    _hubConnection!.onreconnecting(({Exception? error}) {
      AppLogger.w('SignalR reconnecting: $error');
    });

    /// 재연결 성공 시 기존 입장 방들에 자동 재입장
    /// - 네트워크 끊김 → 재연결 시 메시지 누락 방지
    /// - _joinedRooms에 저장된 방 ID들을 순회하며 재입장
    _hubConnection!.onreconnected(({String? connectionId}) async {
      AppLogger.i('SignalR reconnected: $connectionId');

      // 재연결 후 기존 방들에 다시 입장
      for (final roomId in _joinedRooms) {
        try {
          await _hubConnection?.invoke('JoinRoom', args: [roomId]);
          AppLogger.i('Auto-joined room $roomId after reconnection');
        } catch (e) {
          AppLogger.e('Error re-joining room $roomId', e);
        }
      }
    });
  }

  /// SignalR 메시지 데이터를 MessageEntity로 변환
  /// - 서버에서 전송된 JSON 데이터 파싱
  /// - isMyMessage는 SignalR에서 수신한 메시지이므로 항상 false
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

  /// SignalR 연결 종료
  /// - StreamController를 닫고 null로 설정 (재사용 가능하도록)
  /// - HubConnection 정리
  /// - 입장한 방 목록 초기화
  @override
  Future<void> disconnect() async {
    try {
      await _hubConnection?.stop();
      _hubConnection = null;

      // 컨트롤러를 닫지 말고 null로 재설정
      await _messageController?.close();
      _messageController = null;

      await _roomUpdatedController?.close();
      _roomUpdatedController = null;

      await _typingController?.close();
      _typingController = null;

      await _stoppedTypingController?.close();
      _stoppedTypingController = null;

      await _userJoinedController?.close();
      _userJoinedController = null;

      await _userLeftController?.close();
      _userLeftController = null;

      _joinedRooms.clear();

      AppLogger.i('SignalR disconnected');
    } catch (e, stack) {
      AppLogger.e('Error disconnecting SignalR', e, stack);
    }
  }

  /// 채팅방 입장
  /// - SignalR 서버에 JoinRoom 메서드 호출
  /// - _joinedRooms에 추가하여 재연결 시 자동 재입장 가능하도록 함
  @override
  Future<void> joinRoom(int roomId) async {
    try {
      await _hubConnection?.invoke('JoinRoom', args: [roomId]);
      _joinedRooms.add(roomId);
      AppLogger.i('Joined room: $roomId');
    } catch (e, stack) {
      AppLogger.e('Error joining room', e, stack);
      rethrow;
    }
  }

  /// 채팅방 퇴장
  /// - SignalR 서버에 LeaveRoom 메서드 호출
  /// - _joinedRooms에서 제거
  @override
  Future<void> leaveRoom(int roomId) async {
    try {
      await _hubConnection?.invoke('LeaveRoom', args: [roomId]);
      _joinedRooms.remove(roomId);
      AppLogger.i('Left room: $roomId');
    } catch (e, stack) {
      AppLogger.e('Error leaving room', e, stack);
    }
  }

  /// 타이핑 시작 알림
  /// - 상대방에게 "입력 중..." 표시
  @override
  Future<void> userTyping(int roomId) async {
    try {
      await _hubConnection?.invoke('UserTyping', args: [roomId]);
    } catch (e, stack) {
      AppLogger.e('Error sending typing', e, stack);
    }
  }

  /// 타이핑 중지 알림
  /// - 상대방의 "입력 중..." 표시 제거
  @override
  Future<void> userStoppedTyping(int roomId) async {
    try {
      await _hubConnection?.invoke('UserStoppedTyping', args: [roomId]);
    } catch (e, stack) {
      AppLogger.e('Error sending stopped typing', e, stack);
    }
  }

  /// 메시지 수신 Stream 제공
  /// - ViewModel이 이 Stream을 구독하여 새 메시지를 UI에 반영
  @override
  Stream<MessageEntity> get onReceiveMessage {
    _ensureControllersInitialized();
    return _messageController!.stream;
  }

  /// 채팅방 상태 변경 Stream 제공
  /// - 결제 요청, 구매 확정, 거래 취소 등의 이벤트 수신
  @override
  Stream<RoomUpdatedEvent> get onRoomUpdated {
    _ensureControllersInitialized();
    return _roomUpdatedController!.stream;
  }

  /// 타이핑 시작 이벤트 Stream
  @override
  Stream<TypingEvent> get onUserTyping {
    _ensureControllersInitialized();
    return _typingController!.stream;
  }

  /// 타이핑 중지 이벤트 Stream
  @override
  Stream<TypingEvent> get onUserStoppedTyping {
    _ensureControllersInitialized();
    return _stoppedTypingController!.stream;
  }

  /// 사용자 입장 이벤트 Stream
  @override
  Stream<UserStateEvent> get onUserJoined {
    _ensureControllersInitialized();
    return _userJoinedController!.stream;
  }

  /// 사용자 퇴장 이벤트 Stream
  @override
  Stream<UserStateEvent> get onUserLeft {
    _ensureControllersInitialized();
    return _userLeftController!.stream;
  }
}

@riverpod
ChatSignalRDataSource chatSignalRDataSource(Ref ref) {
  return ChatSignalRDataSourceImpl();
}
