# 채팅 기능 구현 계획서

## 1. 개요

### 1.1 목적
티켓 거래를 위한 실시간 채팅 시스템 구현. 구매자와 판매자 간의 메시지 송수신, 거래 상태 관리(결제 요청, 구매 확정, 취소)를 제공합니다.

### 1.2 범위
- 채팅방 생성/조회 및 목록 조회
- 실시간 메시지 송수신 (텍스트, 이미지)
- SignalR 실시간 통신
- 메시지 읽음 처리
- 거래 상태 관리 (결제 요청, 구매 확정, 취소)
- 타이핑 표시 기능

### 1.3 관련 문서
- API 명세서: `/docs/api/chat_api.md`
- 프로젝트 아키텍처: Clean Architecture (Domain → Data → Presentation)
- 상태 관리: Riverpod 3.0.3
- 라우팅: go_router 17.0.1

---

## 2. 요구사항

### 2.1 기능적 요구사항

#### 채팅방 관리
- **채팅방 목록 조회**: 페이지네이션 지원 (기본 20개)
  - 최신 메시지 표시
  - 읽지 않은 메시지 개수 표시
  - 거래 상태 표시

- **채팅방 상세 조회**: 특정 채팅방 정보 조회
  - 최근 30개 메시지 표시
  - 상대방 정보 표시
  - 거래 가능 여부 판단

- **채팅방 생성**: 티켓 ID로 채팅방 생성/기존 방 조회
  - 중복 방 생성 방지 (구매자별 1개만)

#### 메시지 기능
- **메시지 송신**: 텍스트 또는 이미지
  - Multipart form data 지원
  - 리얼타임 업데이트 (SignalR)
  - 로컬 즉시 업데이트 (Optimistic Update)

- **메시지 조회**: 페이지네이션 지원
  - 최초 30개 로드
  - 스크롤 시 이전 메시지 로드 (무한 스크롤)
  - 내 메시지 여부 표시

- **메시지 읽음 처리**: 채팅방 진입 시 자동 읽음 표시

#### 거래 상태 관리
- **결제 요청** (판매자만 가능)
  - 거래 ID와 금액 정보 포함
  - 결제 링크 생성

- **구매 확정** (구매자만 가능)
  - 거래 완료 처리
  - 타임스탬프 기록

- **거래 취소** (양쪽 가능)
  - 취소 사유 기록
  - 상태 업데이트

#### 실시간 기능 (SignalR)
- **메시지 수신**: ReceiveMessage 이벤트
- **채팅방 상태 변경**: RoomUpdated 이벤트
- **사용자 상태**: UserJoined, UserLeft, UserTyping, UserStoppedTyping
- **타이핑 표시**: 상대방 타이핑 중 표시

### 2.2 비기능적 요구사항

- **성능**
  - 메시지 목록 조회 시 < 1초
  - 메시지 송신 시 < 500ms (로컬 업데이트 포함)
  - 실시간 메시지 수신 지연 < 500ms

- **안정성**
  - 네트워크 오류 시 재시도 로직
  - 메시지 송신 실패 시 재시도 UI 제공
  - 연결 끊김 시 자동 재연결

- **사용성**
  - 무한 스크롤 구현
  - 자동 스크롤 (새 메시지 도착 시)
  - 타이핑 표시 애니메이션

### 2.3 제약사항

- JWT 인증 필수 (Authorization header)
- 이미지는 multipart/form-data로만 업로드
- 각 메시지는 전송자와 생성 시간 포함
- 이미지는 공개 URL로 서버에서 관리
- 메시지 또는 이미지 중 하나는 반드시 포함

---

## 3. 기술적 설계

### 3.1 아키텍처 변경사항

#### 폴더 구조 (기존 패턴 유지)
```
lib/features/chat/
├── data/
│   ├── datasources/
│   │   ├── chat_remote_data_source.dart      # REST API 호출
│   │   └── chat_signalr_data_source.dart     # SignalR 연결 관리
│   ├── dto/
│   │   ├── request/
│   │   │   ├── create_chat_room_req_dto.dart
│   │   │   ├── send_message_req_dto.dart
│   │   │   ├── request_payment_req_dto.dart
│   │   │   └── cancel_transaction_req_dto.dart
│   │   └── response/
│   │       ├── chat_room_resp_dto.dart       # 채팅방 상세
│   │       ├── chat_room_list_resp_dto.dart  # 채팅방 목록
│   │       ├── message_resp_dto.dart
│   │       └── transaction_resp_dto.dart
│   └── repositories/
│       └── chat_repository_impl.dart
├── domain/
│   ├── entities/
│   │   ├── chat_room_entity.dart
│   │   ├── message_entity.dart
│   │   ├── transaction_entity.dart
│   │   └── user_profile_entity.dart
│   ├── repositories/
│   │   └── chat_repository.dart
│   └── usecases/
│       ├── get_chat_rooms_usecase.dart
│       ├── get_chat_room_detail_usecase.dart
│       ├── create_or_get_chat_room_usecase.dart
│       ├── send_message_usecase.dart
│       ├── get_messages_usecase.dart
│       ├── mark_as_read_usecase.dart
│       ├── request_payment_usecase.dart
│       ├── confirm_purchase_usecase.dart
│       ├── cancel_transaction_usecase.dart
│       └── listen_to_messages_usecase.dart
└── presentation/
    ├── providers/
    │   ├── chat_providers_di.dart            # DI 설정
    │   └── chat_signalr_provider.dart        # SignalR 연결 관리
    ├── viewmodels/
    │   ├── chat_list_viewmodel.dart          # 채팅방 목록
    │   ├── chat_room_viewmodel.dart          # 채팅방 상세
    │   ├── message_viewmodel.dart            # 메시지 관리
    │   └── transaction_viewmodel.dart        # 거래 상태
    ├── ui_models/
    │   ├── chat_room_ui_model.dart           # 채팅방 UI 데이터
    │   ├── message_ui_model.dart
    │   └── transaction_ui_model.dart
    ├── view/
    │   ├── chat_view.dart                    # 채팅방 목록 (기존)
    │   ├── chat_room_view.dart               # 채팅방 상세 (기존)
    │   └── chat_room_detail_view.dart        # 상세 페이지 개선
    └── widgets/
        ├── message_list_widget.dart          # 메시지 리스트
        ├── message_bubble_widget.dart        # 개별 메시지 UI
        ├── message_input_widget.dart         # 입력창
        ├── typing_indicator_widget.dart      # 타이핑 표시
        ├── transaction_action_panel.dart     # 결제/확정/취소 버튼
        ├── image_picker_widget.dart          # 이미지 선택
        └── timestamp_widget.dart             # 타임스탬프 표시
```

### 3.2 데이터 모델

#### Entity 설계

```dart
// chat_room_entity.dart
class ChatRoomEntity {
  final int roomId;
  final int ticketId;
  final String ticketTitle;
  final int price;
  final String? thumbnailUrl;

  final UserProfileEntity buyer;
  final UserProfileEntity seller;

  final String statusCode;      // 'active', 'closed' 등
  final String statusName;

  final TransactionEntity? transaction;

  // 권한 플래그
  final bool canSendMessage;
  final bool canRequestPayment;
  final bool canConfirmPurchase;
  final bool canCancelTransaction;

  final List<MessageEntity> messages;  // 초기 30개

  ChatRoomEntity({
    required this.roomId,
    required this.ticketId,
    required this.ticketTitle,
    required this.price,
    this.thumbnailUrl,
    required this.buyer,
    required this.seller,
    required this.statusCode,
    required this.statusName,
    this.transaction,
    required this.canSendMessage,
    required this.canRequestPayment,
    required this.canConfirmPurchase,
    required this.canCancelTransaction,
    required this.messages,
  });
}

// message_entity.dart
class MessageEntity {
  final int messageId;
  final int roomId;
  final int senderId;
  final String senderNickname;
  final String? senderProfileImage;
  final String? message;
  final String? imageUrl;
  final DateTime createdAt;
  final bool isMyMessage;

  MessageEntity({
    required this.messageId,
    required this.roomId,
    required this.senderId,
    required this.senderNickname,
    this.senderProfileImage,
    this.message,
    this.imageUrl,
    required this.createdAt,
    required this.isMyMessage,
  });
}

// transaction_entity.dart
class TransactionEntity {
  final int transactionId;
  final String statusCode;
  final String statusName;
  final int amount;
  final String? paymentUrl;
  final DateTime? confirmedAt;
  final String? cancelReason;

  TransactionEntity({
    required this.transactionId,
    required this.statusCode,
    required this.statusName,
    required this.amount,
    this.paymentUrl,
    this.confirmedAt,
    this.cancelReason,
  });
}

// user_profile_entity.dart
class UserProfileEntity {
  final int userId;
  final String nickname;
  final String? profileImageUrl;
  final double mannerTemperature;  // 매너 온도

  UserProfileEntity({
    required this.userId,
    required this.nickname,
    this.profileImageUrl,
    required this.mannerTemperature,
  });
}
```

### 3.3 API 설계

#### REST API 엔드포인트 추가
```dart
// api_endpoint.dart에 추가
class ApiEndpoint {
  // ... 기존 코드 ...

  // Chat API
  static const String chatRooms = '/api/chat/rooms';
  static const String chatRoomDetail = '/api/chat/rooms';  // GET {roomId}, POST {roomId}/...
  static const String chatMessages = '/api/chat/messages';
  static const String chatRoomRead = '/api/chat/rooms';  // POST {roomId}/read
  static const String requestPayment = '/api/chat/rooms';  // POST {roomId}/request-payment
  static const String confirmPurchase = '/api/chat/rooms';  // POST {roomId}/confirm-purchase
  static const String cancelTransaction = '/api/chat/rooms';  // POST {roomId}/cancel
}
```

#### SignalR 연결 설계
```dart
// chat_signalr_data_source.dart 구조
class ChatSignalRDataSource {
  late HubConnection _hubConnection;

  // 초기화
  Future<void> connect(String token);
  Future<void> disconnect();
  Future<bool> isConnected();

  // 호출 메서드 (Client → Server)
  Future<void> joinRoom(int roomId);
  Future<void> leaveRoom(int roomId);
  Future<void> userTyping(int roomId);
  Future<void> userStoppedTyping(int roomId);

  // 이벤트 리스너 (Server → Client)
  Stream<MessageEntity> onReceiveMessage();
  Stream<RoomUpdatedEvent> onRoomUpdated();
  Stream<UserStateEvent> onUserStateChanged();
  Stream<TypingEvent> onUserTyping();
}
```

### 3.4 영향받는 컴포넌트

#### 기존 파일 수정 필요
1. `/lib/core/network/api_endpoint.dart` - 채팅 엔드포인트 추가
2. `/lib/core/network/dio_provider.dart` - multipart 지원 확인
3. `/lib/features/chat/presentation/view/chat_view.dart` - ViewModel 연동
4. `/lib/features/chat/presentation/view/chat_room_view.dart` - 상세 기능 추가
5. `/lib/features/chat/presentation/ui_models/chat_room_ui_model.dart` - 데이터 모델 확장

#### 신규 파일 생성
- 위 폴더 구조의 모든 파일들

---

## 4. 구현 계획

### 4.1 작업 분할 (Task Breakdown)

| 순서 | 작업 | 설명 | 예상 시간 | 의존성 |
|-----|------|------|----------|--------|
| 1 | Domain Layer - Entity 정의 | ChatRoomEntity, MessageEntity 등 | 3h | - |
| 2 | Domain Layer - Repository Interface | chat_repository.dart 정의 | 2h | 1 |
| 3 | Domain Layer - UseCase 구현 | 9개 UseCase 구현 | 5h | 1, 2 |
| 4 | Data Layer - DTO 정의 | Request/Response DTO 모두 구현 | 4h | 1 |
| 5 | Data Layer - Remote DataSource | API 호출 로직 구현 | 6h | 3, 4 |
| 6 | Data Layer - Repository 구현 | chat_repository_impl.dart | 3h | 2, 5 |
| 7 | SignalR - DataSource 구현 | chat_signalr_data_source.dart | 5h | 1, 3 |
| 8 | Presentation - DI 설정 | chat_providers_di.dart | 2h | 6, 7 |
| 9 | Presentation - ViewModel 구현 | 4개 ViewModel | 8h | 3, 8 |
| 10 | UI - 기본 위젯 구현 | message_bubble, message_input 등 | 6h | 1 |
| 11 | UI - 메시지 리스트 위젯 | 무한 스크롤, 날짜 분리 | 5h | 10 |
| 12 | UI - 채팅방 목록 화면 | chat_view.dart 연동 | 4h | 9, 10 |
| 13 | UI - 채팅방 상세 화면 | chat_room_view.dart 기능 추가 | 6h | 9, 11 |
| 14 | UI - 거래 관련 UI | 결제/확정/취소 패널 | 3h | 10 |
| 15 | SignalR - 통합 | 실시간 메시지 연동 | 4h | 7, 13 |
| 16 | 테스트 작성 | 단위 테스트 및 통합 테스트 | 6h | 1-15 |
| 17 | 버그 수정 및 최적화 | QA 및 성능 개선 | 4h | 16 |

**총 예상 소요 시간: 71시간 (약 2주)**

### 4.2 구현 순서

#### Phase 1: Domain Layer (1-3번 작업)
- Entity 클래스 정의
- Repository 인터페이스 정의
- UseCase 구현 및 테스트

#### Phase 2: Data Layer (4-6번 작업)
- DTO 정의 (Freezed 적용)
- Remote DataSource 구현
- Repository 구현체 작성

#### Phase 3: Real-time Communication (7번 작업)
- SignalR 라이브러리 추가 (signalr_netcore 또는 signalr_client)
- SignalR DataSource 구현
- 연결 관리 로직

#### Phase 4: Presentation Layer (8-14번 작업)
- DI 설정 (Riverpod)
- ViewModel 구현
- UI 위젯 및 화면 구현

#### Phase 5: Integration & Testing (15-17번 작업)
- SignalR 실시간 연동
- 전체 통합 테스트
- 성능 최적화 및 버그 수정

### 4.3 테스트 계획

#### 단위 테스트 (Unit Test)
```dart
// domain/usecases/
- get_chat_rooms_usecase_test.dart
- send_message_usecase_test.dart
- request_payment_usecase_test.dart
// ...

// data/repositories/
- chat_repository_impl_test.dart

// 테스트 항목
- 성공 케이스
- 네트워크 오류 처리
- 입력 검증 (빈 메시지, 미지원 파일 등)
- 권한 검증 (결제는 판매자만, 확정은 구매자만)
```

#### 통합 테스트 (Integration Test)
```dart
// 시나리오 기반 테스트
- chat_flow_integration_test.dart
  - 채팅방 생성 → 메시지 송수신 → 결제 요청 → 구매 확정
  - 메시지 목록 페이지네이션
  - 실시간 메시지 수신

// SignalR 테스트
- signalr_integration_test.dart
  - 연결 성공/실패
  - 메시지 실시간 수신
  - 타이핑 표시
```

#### UI 테스트 (Widget Test)
```dart
// presentation/widgets/
- message_bubble_test.dart
- message_input_test.dart
- typing_indicator_test.dart
- transaction_action_panel_test.dart

// 테스트 항목
- 위젯 렌더링
- 사용자 상호작용 (탭, 입력)
- 상태 변경 UI 반영
```

---

## 5. 위험 분석

### 5.1 기술적 위험

#### 1. SignalR 클라이언트 라이브러리 선택
**위험도**: 높음
- Flutter에서 SignalR 지원 라이브러리가 제한적
- 선택지: signalr_netcore 또는 signalr_client
- 문제: 라이브러리 안정성, 유지보수 상태

**완화 전략**:
- PoC(Proof of Concept) 진행 후 라이브러리 선택
- 폴백 방안: WebSocket 직접 구현
- 대체 라이브러리: Socket.io 고려

#### 2. 네트워크 연결 관리
**위험도**: 높음
- 모바일에서 네트워크 자주 끊김
- SignalR 재연결 타이밍 관리 필요
- 메시지 손실 가능성

**완화 전략**:
- 자동 재연결 로직 구현 (지수 백오프)
- 로컬 캐시로 메시지 임시 보관
- 재연결 시 메시지 동기화
- 사용자에게 연결 상태 표시

#### 3. 메모리 누수 및 성능 저하
**위험도**: 중간
- 장시간 채팅 시 메시지 리스트 증가
- SignalR 구독(subscription) 미해제
- StreamBuilder 오버헤드

**완화 전략**:
- 메시지 페이지네이션 (최대 200개만 메모리 유지)
- dispose 메서드에서 구독 해제
- StreamController 정리
- 이미지 캐싱 최적화

#### 4. 이미지 업로드 성능
**위험도**: 중간
- Multipart form-data 큰 파일 업로드
- 느린 네트워크에서 타임아웃
- 메모리 부족

**완화 전략**:
- 이미지 압축 (권장 해상도: 1080x1920)
- 파일 크기 제한 (예: 10MB)
- 업로드 타임아웃 증가 (30초)
- 청크 업로드 고려 (향후)

### 5.2 비즈니스 로직 위험

#### 1. 권한 관리
**위험도**: 높음
- 결제: 판매자만, 확정: 구매자만
- 본인 티켓과는 채팅 불가
- 잘못된 권한 처리 시 보안 문제

**완화 전략**:
- 서버 권한 검증에 의존 (클라이언트는 보조)
- UI에서 권한 기반 버튼 비활성화
- API 실패 시 명확한 에러 메시지
- 권한 캐시 최소화

#### 2. 거래 상태 동기화
**위험도**: 중간
- 동시에 여러 액션 발생 가능
- 상태 일관성 문제
- 중복 요청 문제

**완화 전략**:
- 액션 버튼 요청 중 비활성화
- 로딩 상태 UI 표시
- 서버 상태를 단일 소스로 간주
- 낙관적 업데이트는 실패 시 롤백

### 5.3 데이터 관리 위험

#### 1. 메시지 캐싱
**위험도**: 중간
- 로컬 캐시와 서버 데이터 불일치
- 캐시 무효화 시점 불명확

**완화 전략**:
- 로컬 캐시는 UI 성능 목적만 사용
- 서버 데이터가 도착하면 즉시 업데이트
- 정기적 동기화 (예: 1분마다)
- 캐시 만료 시간 설정 (예: 30분)

#### 2. 날짜/시간 처리
**위험도**: 낮음
- UTC와 로컬 시간대 변환
- 타이밍 이슈

**완화 전략**:
- 서버에서 UTC 기준 시간 받기
- 클라이언트에서 로컬 시간대로 변환
- 날짜 포매팅 util 사용

---

## 6. 구현 체크리스트

### 6.1 코드 리뷰 포인트

- [ ] Entity 클래스에 const 생성자 적용 (불변성)
- [ ] DTO에 Freezed와 json_serializable 적용
- [ ] Repository 인터페이스와 구현체 분리
- [ ] UseCase는 단일 책임 원칙 준수
- [ ] ViewModel은 상태 관리만 담당 (비즈니스 로직 X)
- [ ] Provider에서 의존성 주입 명확히
- [ ] Stream 및 Future 에러 처리 완벽
- [ ] SignalR 연결 해제 (lifecycle 관리)
- [ ] 네트워크 요청 타임아웃 설정
- [ ] 입력 검증 (null 체크, 길이 제한)
- [ ] 권한 검증 로직
- [ ] 로깅 적절히 추가

### 6.2 테스트 커버리지 목표

- **Domain Layer**: 80% 이상
  - Entity 매핑 테스트
  - UseCase 로직 테스트

- **Data Layer**: 75% 이상
  - DTO 직렬화/역직렬화
  - Repository 구현체
  - API 호출 및 에러 처리

- **Presentation Layer**: 60% 이상
  - ViewModel 상태 변경
  - 주요 Widget 렌더링

### 6.3 문서화 필요 항목

- [ ] SignalR 연결 플로우 문서
- [ ] 메시지 상태 다이어그램
- [ ] API 에러 코드 매핑 (한글 에러 메시지)
- [ ] 캐싱 전략 문서
- [ ] 네트워크 재시도 로직 문서
- [ ] 권한 관리 규칙 문서

---

## 7. 세부 구현 가이드

### 7.1 SignalR 연결 구현 예시

```dart
// lib/features/chat/data/datasources/chat_signalr_data_source.dart

import 'package:signalr_netcore/signalr_client.dart';

class ChatSignalRDataSource {
  late HubConnection _hubConnection;
  final String _baseUrl;
  final String _token;

  // Stream을 통한 이벤트 방출
  final _messageController = StreamController<MessageEntity>.broadcast();
  final _roomUpdatedController = StreamController<RoomUpdatedEvent>.broadcast();
  final _typingController = StreamController<TypingEvent>.broadcast();

  ChatSignalRDataSource({
    required String baseUrl,
    required String token,
  })  : _baseUrl = baseUrl,
        _token = token;

  Future<void> connect() async {
    try {
      _hubConnection = HubConnectionBuilder()
          .withUrl(
            '$_baseUrl/hubs/chat',
            HttpConnectionOptions(
              headers: {'Authorization': 'Bearer $_token'},
            ),
          )
          .withAutomaticReconnect()
          .build();

      _setupListeners();

      await _hubConnection.start();
      AppLogger.i('SignalR connected');
    } catch (e) {
      AppLogger.e('SignalR connection error', e);
      rethrow;
    }
  }

  void _setupListeners() {
    // 메시지 수신
    _hubConnection.on('ReceiveMessage', (message) {
      try {
        final data = message[0] as Map<String, dynamic>;
        final messageEntity = _parseMessage(data);
        _messageController.add(messageEntity);
      } catch (e) {
        AppLogger.e('Error parsing message', e);
      }
    });

    // 채팅방 상태 변경
    _hubConnection.on('RoomUpdated', (message) {
      try {
        final data = message[0] as Map<String, dynamic>;
        final event = _parseRoomUpdatedEvent(data);
        _roomUpdatedController.add(event);
      } catch (e) {
        AppLogger.e('Error parsing room update', e);
      }
    });

    // 타이핑 표시
    _hubConnection.on('UserTyping', (message) {
      try {
        final data = message[0] as Map<String, dynamic>;
        final event = _parseTypingEvent(data);
        _typingController.add(event);
      } catch (e) {
        AppLogger.e('Error parsing typing event', e);
      }
    });
  }

  Future<void> joinRoom(int roomId) async {
    await _hubConnection.invoke('JoinRoom', args: [roomId]);
  }

  Future<void> leaveRoom(int roomId) async {
    await _hubConnection.invoke('LeaveRoom', args: [roomId]);
  }

  Future<void> userTyping(int roomId) async {
    await _hubConnection.invoke('UserTyping', args: [roomId]);
  }

  Future<void> userStoppedTyping(int roomId) async {
    await _hubConnection.invoke('UserStoppedTyping', args: [roomId]);
  }

  Stream<MessageEntity> onReceiveMessage() => _messageController.stream;
  Stream<RoomUpdatedEvent> onRoomUpdated() => _roomUpdatedController.stream;
  Stream<TypingEvent> onUserTyping() => _typingController.stream;

  Future<void> disconnect() async {
    await _hubConnection.stop();
    await _messageController.close();
    await _roomUpdatedController.close();
    await _typingController.close();
  }

  bool get isConnected => _hubConnection.state == HubConnectionState.Connected;

  MessageEntity _parseMessage(Map<String, dynamic> data) {
    // DTO → Entity 변환
    return MessageEntity(
      messageId: data['messageId'] as int,
      roomId: data['roomId'] as int,
      senderId: data['senderId'] as int,
      senderNickname: data['senderNickname'] as String,
      senderProfileImage: data['senderProfileImage'] as String?,
      message: data['message'] as String?,
      imageUrl: data['imageUrl'] as String?,
      createdAt: DateTime.parse(data['createdAt'] as String),
      isMyMessage: false, // SignalR로 받은 메시지는 항상 타인
    );
  }

  RoomUpdatedEvent _parseRoomUpdatedEvent(Map<String, dynamic> data) {
    return RoomUpdatedEvent(
      roomId: data['roomId'] as int,
      event: data['event'] as String,
      transactionId: data['transactionId'] as int?,
      message: data['message'] as String,
    );
  }

  TypingEvent _parseTypingEvent(Map<String, dynamic> data) {
    return TypingEvent(
      userId: data['userId'] as int,
      roomId: data['roomId'] as int,
      timestamp: DateTime.parse(data['timestamp'] as String),
    );
  }
}

// Event 모델
class RoomUpdatedEvent {
  final int roomId;
  final String event;  // 'PaymentRequested', 'PurchaseConfirmed', 'Cancelled'
  final int? transactionId;
  final String message;

  RoomUpdatedEvent({
    required this.roomId,
    required this.event,
    this.transactionId,
    required this.message,
  });
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
}
```

### 7.2 ViewModel 구현 예시

```dart
// lib/features/chat/presentation/viewmodels/chat_room_viewmodel.dart

@riverpod
class ChatRoomViewModel extends _$ChatRoomViewModel {
  @override
  FutureOr<ChatRoomUiModel> build(int roomId) async {
    return _fetchChatRoomDetail(roomId);
  }

  // 메시지 스트림 (실시간)
  Stream<MessageEntity> get messageStream =>
      ref.watch(chatSignalRProviderProvider).onReceiveMessage().where(
            (msg) => msg.roomId == roomId,
          );

  Future<ChatRoomUiModel> _fetchChatRoomDetail(int roomId) async {
    final entity = await ref
        .read(getChatRoomDetailUsecaseProvider)
        .call(roomId);

    // SignalR 방 참여
    await ref.read(chatSignalRProviderProvider).joinRoom(roomId);

    // 읽음 처리
    await ref.read(markAsReadUsecaseProvider).call(roomId);

    return ChatRoomUiModel.fromEntity(entity);
  }

  Future<void> sendMessage(String message, {File? imageFile}) async {
    final currentRoom = state.valueOrNull;
    if (currentRoom == null) return;

    state = AsyncValue.data(currentRoom);

    try {
      await ref.read(sendMessageUsecaseProvider).call(
            SendMessageParams(
              roomId: currentRoom.roomId,
              message: message,
              imageFile: imageFile,
            ),
          );
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> requestPayment(int transactionId) async {
    try {
      await ref.read(requestPaymentUsecaseProvider).call(
            RequestPaymentParams(
              roomId: roomId,
              transactionId: transactionId,
            ),
          );
    } catch (e) {
      AppLogger.e('Payment request error', e);
      rethrow;
    }
  }

  @override
  void dispose() {
    // SignalR 방 나가기
    ref.read(chatSignalRProviderProvider).leaveRoom(roomId);
    super.dispose();
  }
}
```

### 7.3 Message List Widget 예시

```dart
// lib/features/chat/presentation/widgets/message_list_widget.dart

class MessageListWidget extends ConsumerStatefulWidget {
  final int roomId;

  const MessageListWidget({required this.roomId, super.key});

  @override
  ConsumerState<MessageListWidget> createState() => _MessageListWidgetState();
}

class _MessageListWidgetState extends ConsumerState<MessageListWidget> {
  late ScrollController _scrollController;
  int _currentPage = 1;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_handleScroll);
  }

  void _handleScroll() {
    // 상단에 가까우면 이전 메시지 로드
    if (_scrollController.offset >
        _scrollController.position.maxScrollExtent - 500) {
      _loadMoreMessages();
    }

    // 하단 감지 (새 메시지)
    if (_scrollController.offset < 100) {
      _scrollToBottom();
    }
  }

  Future<void> _loadMoreMessages() async {
    _currentPage++;
    // TODO: 이전 메시지 조회
  }

  void _scrollToBottom() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    // 기본 메시지 목록 (초기 30개)
    final chatRoomAsync = ref.watch(chatRoomViewmodelProvider(widget.roomId));

    // 실시간 메시지 스트림
    final messageStream = ref.watch(chatRoomViewmodelProvider(widget.roomId))
        .whenData((room) => room.messageStream);

    return chatRoomAsync.when(
      data: (chatRoom) {
        final messages = chatRoom.messages;

        return StreamBuilder<MessageEntity>(
          stream: messageStream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              messages.insert(0, snapshot.data!);
            }

            return ListView.builder(
              controller: _scrollController,
              reverse: true,
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];

                // 날짜 구분선
                bool showDateDivider = false;
                if (index + 1 < messages.length) {
                  final prevDate =
                      messages[index + 1].createdAt.toDateOnly();
                  final currentDate = message.createdAt.toDateOnly();
                  showDateDivider = prevDate != currentDate;
                } else {
                  showDateDivider = true;
                }

                return Column(
                  children: [
                    if (showDateDivider)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          _formatDate(message.createdAt),
                          style: AppTextStyles.caption.copyWith(
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ),
                    MessageBubbleWidget(message: message),
                  ],
                );
              },
            );
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, st) => Center(child: Text('오류: $error')),
    );
  }

  String _formatDate(DateTime dateTime) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));
    final messageDate =
        DateTime(dateTime.year, dateTime.month, dateTime.day);

    if (messageDate == today) {
      return '오늘';
    } else if (messageDate == yesterday) {
      return '어제';
    } else {
      return DateFormatUtil.toMMDD(dateTime);
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
```

### 7.4 Message Input Widget 예시

```dart
// lib/features/chat/presentation/widgets/message_input_widget.dart

class MessageInputWidget extends ConsumerStatefulWidget {
  final int roomId;
  final bool canSendMessage;
  final VoidCallback onMessageSent;

  const MessageInputWidget({
    required this.roomId,
    required this.canSendMessage,
    required this.onMessageSent,
    super.key,
  });

  @override
  ConsumerState<MessageInputWidget> createState() =>
      _MessageInputWidgetState();
}

class _MessageInputWidgetState extends ConsumerState<MessageInputWidget> {
  late TextEditingController _textController;
  bool _isTyping = false;
  Timer? _typingDebounceTimer;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
    _textController.addListener(_handleTextChange);
  }

  void _handleTextChange() {
    final isEmpty = _textController.text.trim().isEmpty;

    if (!isEmpty && !_isTyping) {
      setState(() => _isTyping = true);
      // SignalR 타이핑 알림
      ref.read(chatSignalRProviderProvider).userTyping(widget.roomId);
    }

    // Debounce: 500ms 동안 입력 없으면 타이핑 종료
    _typingDebounceTimer?.cancel();
    _typingDebounceTimer = Timer(const Duration(milliseconds: 500), () {
      if (isEmpty && _isTyping) {
        setState(() => _isTyping = false);
        ref.read(chatSignalRProviderProvider)
            .userStoppedTyping(widget.roomId);
      }
    });
  }

  Future<void> _sendMessage() async {
    final messageText = _textController.text.trim();
    if (messageText.isEmpty || !widget.canSendMessage) return;

    _textController.clear();
    setState(() => _isTyping = false);

    try {
      await ref
          .read(chatRoomViewmodelProvider(widget.roomId).notifier)
          .sendMessage(messageText);

      widget.onMessageSent();
    } catch (e) {
      _showErrorSnackBar('메시지 전송 실패: $e');
    }
  }

  Future<void> _pickAndSendImage() async {
    // TODO: 이미지 선택 로직
    // XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
  }

  void _showErrorSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            // 이미지 버튼
            if (widget.canSendMessage)
              IconButton(
                icon: const Icon(Icons.add_photo_alternate_outlined),
                onPressed: _pickAndSendImage,
              ),

            // 입력창
            Expanded(
              child: TextField(
                controller: _textController,
                decoration: InputDecoration(
                  hintText: widget.canSendMessage
                      ? '메시지를 입력하세요'
                      : '메시지를 보낼 수 없습니다',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                ),
                enabled: widget.canSendMessage,
                maxLines: 3,
                minLines: 1,
              ),
            ),

            // 전송 버튼
            IconButton(
              icon: const Icon(Icons.send),
              onPressed: widget.canSendMessage ? _sendMessage : null,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    _typingDebounceTimer?.cancel();
    super.dispose();
  }
}
```

### 7.5 Multipart 이미지 업로드 구현

```dart
// lib/features/chat/data/datasources/chat_remote_data_source.dart

Future<BaseResponse<MessageRespDto>> sendMessage({
  required int roomId,
  required String? message,
  required File? imageFile,
}) async {
  if (message == null && imageFile == null) {
    throw const Failure.validation('메시지 또는 이미지를 입력해주세요.');
  }

  return safeApiCall(
    apiCall: (Options options) async {
      final formData = FormData();
      formData.fields.add(MapEntry('roomId', roomId.toString()));

      if (message != null && message.isNotEmpty) {
        formData.fields.add(MapEntry('message', message));
      }

      if (imageFile != null) {
        formData.files.add(
          MapEntry(
            'image',
            MultipartFile.fromFileSync(
              imageFile.path,
              filename: 'chat_image_${DateTime.now().millisecondsSinceEpoch}.jpg',
            ),
          ),
        );
      }

      return ref
          .read(dioProvider)
          .post(
            '${ApiEndpoint.chatMessages}',
            data: formData,
            options: Options(
              contentType: 'multipart/form-data',
              extra: {'apiName': 'sendMessage'},
            ),
          );
    },
    apiName: 'sendMessage',
    dataParser: (json) => MessageRespDto.fromJson(json as Map<String, dynamic>),
  );
}
```

---

## 8. 예상되는 이슈 및 고려사항

### 8.1 네트워크 관련

#### 이슈: 메시지 전송 중 네트워크 끊김
**발생 시점**: 메시지 송신 중 네트워크 오류
**증상**: 메시지가 "전송 중" 상태로 멈춤
**해결 방안**:
- 재시도 버튼 제공
- 로컬 임시 저장소에 메시지 캐싱
- 연결 복구 후 자동 재전송

#### 이슈: SignalR 자동 재연결 실패
**발생 시점**: 네트워크 복구 후에도 연결 안 됨
**해결 방안**:
- 수동 재연결 버튼 제공
- 일정 시간 후 자동 재연결 재시도
- 사용자에게 상태 알림

### 8.2 UI/UX 관련

#### 이슈: 무한 스크롤 중 실시간 메시지 도착
**증상**: 리스트 중간에서 스크롤하다가 새 메시지가 상단에 추가되면서 사용자 혼동
**해결 방안**:
- 새 메시지 도착 시 "새 메시지 표시" 배너 (자동 스크롤 X)
- 사용자 명시적 클릭 후만 최신으로 스크롤
- 또는 사용자가 맨 아래에 있을 때만 자동 스크롤

#### 이슈: 초기 로딩 지연
**증상**: 채팅방 진입 시 메시지 로드에 2초 이상 소요
**해결 방안**:
- Skeleton loading UI 표시
- 메시지 캐시 활용
- 서버 응답 최적화 (필요시 협의)

### 8.3 데이터 관련

#### 이슈: 로컬 캐시 크기 증가
**증상**: 오랫동안 사용하면 메모리 부족
**해결 방안**:
- 메시지 보관 기간 제한 (예: 30일)
- 수동 캐시 삭제 기능
- 자동 캐시 정리 (1시간마다)

#### 이슈: 타임존 문제
**증상**: 서버와 클라이언트의 시간이 다름
**해결 방안**:
- 서버 시간(UTC) 받아서 클라이언트에서 로컬 변환
- 상대적 시간 표시 (예: "2시간 전")

### 8.4 보안 관련

#### 이슈: 토큰 만료 중 SignalR 사용
**해결 방안**:
- SignalR 연결 시 만료된 토큰 감지
- 재로그인 유도
- 토큰 갱신 후 재연결

#### 이슈: 메시지 내용 암호화
**현재 상태**: API는 HTTPS 사용 (전송 계층 보안)
**추후 고려**: End-to-end encryption (향후 단계)

### 8.5 성능 최적화

#### 메시지 리스트 렌더링 최적화
```dart
// 1. RepaintBoundary 사용으로 불필요한 리빌드 방지
RepaintBoundary(
  child: MessageBubbleWidget(message: message),
)

// 2. Key 사용으로 위젯 상태 유지
key: ValueKey(message.messageId)

// 3. const 생성자 사용
const MessageBubbleWidget(message: message)
```

#### 이미지 캐싱
```dart
// cached_network_image 활용
CachedNetworkImage(
  imageUrl: message.imageUrl ?? '',
  placeholder: (context, url) => const SkeletonLoading(),
  errorWidget: (context, url, error) => const Icon(Icons.error),
  cacheManager: CacheManager.instance,
)
```

---

## 9. 마이그레이션 및 배포

### 9.1 기존 코드와의 호환성

#### 영향받는 기존 화면
1. **ChatView** (채팅방 목록 화면)
   - 현재: Mock 데이터 사용
   - 변경: ViewModel 연동
   - Breaking Change: 없음 (기능 추가만)

2. **ChatRoomView** (채팅방 상세 화면)
   - 현재: Mock 데이터 사용
   - 변경: 실제 API 연동, 메시지 입력, 실시간 기능
   - Breaking Change: 없음

### 9.2 점진적 배포 전략

#### Phase 1: 기본 REST API (주 1-2)
- 채팅방 목록/상세 조회
- 메시지 송수신
- 거래 액션
- 테스트: 실제 API 연동 확인

#### Phase 2: 실시간 기능 (주 2-3)
- SignalR 연결
- 메시지 실시간 수신
- 타이핑 표시
- 테스트: SignalR 연동 확인

#### Phase 3: 최적화 및 버그 수정 (주 3-4)
- 성능 최적화
- QA 및 버그 수정
- 최종 배포

---

## 10. 추후 개선 사항

### 단기 (1-2개월)
- 메시지 검색 기능
- 메시지 수정/삭제
- 채팅방 즐겨찾기
- 메시지 알림 (푸시 알림 연동)

### 중기 (3-6개월)
- 그룹 채팅 (향후 기능)
- 메시지 읽음 표시
- 파일 공유 (이미지 외)
- 메시지 이모지 반응

### 장기 (6개월 이상)
- End-to-end 암호화
- 메시지 음성 메시지
- 비디오 콜 통합
- 메시지 검색 고도화 (전문가용 쿼리)

---

## 11. 참고자료

### 의존성 추가 필요
```yaml
dependencies:
  # SignalR (선택 필요)
  signalr_netcore: ^1.4.4  

  # 이미지 처리
  image_picker: ^1.0.0
  image_cropper: ^5.0.0  # 선택사항

  # 캐싱
  hive: ^2.2.0  # 또는 sqflite

  # Logging (기존에 logger 사용 중)
  # logger: ^2.6.2
```

### 관련 문서
- [SignalR Dart Client](https://pub.dev/packages/signalr_netcore)
- [Flutter Image Handling](https://flutter.dev/docs/development/data-and-backend/networking#handling-requests-from-flutter)
- [Riverpod Async](https://riverpod.dev/docs/essentials/side_effects)
- [Go Router Navigation](https://pub.dev/packages/go_router)

