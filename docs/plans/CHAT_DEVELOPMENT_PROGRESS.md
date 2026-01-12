# 채팅 기능 개발 진행 현황

> 마지막 업데이트: 2026-01-13

## 개요

티켓 거래를 위한 실시간 채팅 시스템 구현 (REST API + SignalR)

---

## 구현 완료 현황

### Phase 1: Domain Layer ✅

#### Entities (4개)
| 파일 | 설명 |
|------|------|
| `lib/features/chat/domain/entities/chat_room_entity.dart` | ChatRoomEntity, ChatRoomListItemEntity, TicketInfoEntity, OtherUserEntity |
| `lib/features/chat/domain/entities/message_entity.dart` | MessageEntity |
| `lib/features/chat/domain/entities/transaction_entity.dart` | TransactionEntity |
| `lib/features/chat/domain/entities/user_profile_entity.dart` | UserProfileEntity |

#### Repository Interface
| 파일 | 설명 |
|------|------|
| `lib/features/chat/domain/repositories/chat_repository.dart` | ChatRepository 추상 클래스, PaymentRequestResult, PurchaseConfirmResult |

#### UseCases (9개)
| 파일 | 설명 |
|------|------|
| `get_chat_rooms_usecase.dart` | 채팅방 목록 조회 |
| `get_chat_room_detail_usecase.dart` | 채팅방 상세 조회 |
| `create_or_get_chat_room_usecase.dart` | 채팅방 생성/조회 |
| `send_message_usecase.dart` | 메시지 전송 (텍스트/이미지) |
| `get_messages_usecase.dart` | 메시지 목록 조회 (페이징) |
| `mark_as_read_usecase.dart` | 읽음 처리 |
| `request_payment_usecase.dart` | 결제 요청 |
| `confirm_purchase_usecase.dart` | 구매 확정 |
| `cancel_transaction_usecase.dart` | 거래 취소 |

---

### Phase 2: Data Layer ✅

#### DTOs (Request)
| 파일 | 클래스 |
|------|--------|
| `lib/features/chat/data/dto/request/chat_req_dto.dart` | CreateChatRoomReqDto, SendMessageReqDto, RequestPaymentReqDto, CancelTransactionReqDto |

#### DTOs (Response)
| 파일 | 클래스 |
|------|--------|
| `lib/features/chat/data/dto/response/chat_resp_dto.dart` | ChatRoomListItemDto, ChatRoomRespDto, MessageDto, TicketInfoDto, UserProfileDto, TransactionDto, SendMessageRespDto, PaymentRequestRespDto, PurchaseConfirmRespDto |

#### DataSources
| 파일 | 설명 |
|------|------|
| `lib/features/chat/data/datasources/chat_remote_data_source.dart` | REST API 통신 (Dio 기반) |
| `lib/features/chat/data/datasources/chat_signalr_data_source.dart` | SignalR 실시간 통신 |

#### Repository Implementation
| 파일 | 설명 |
|------|------|
| `lib/features/chat/data/repositories/chat_repository_impl.dart` | ChatRepository 구현체 |

---

### Phase 3: SignalR 통합 ✅

#### SignalR DataSource 기능
- Hub 연결/해제 관리
- 채팅방 Join/Leave
- 실시간 메시지 수신 (ReceiveMessage)
- 방 업데이트 이벤트 (RoomUpdated)
- 타이핑 표시 (UserTyping, UserStoppedTyping)
- 사용자 입장/퇴장 (UserJoined, UserLeft)
- 재연결 처리

#### SignalR Hub Methods
```dart
// Server -> Client
- ReceiveMessage
- RoomUpdated
- UserTyping
- UserStoppedTyping
- UserJoined
- UserLeft

// Client -> Server
- JoinRoom(roomId)
- LeaveRoom(roomId)
- UserTyping(roomId)
- UserStoppedTyping(roomId)
```

---

### Phase 4: Presentation Layer ✅

#### ViewModels
| 파일 | 설명 |
|------|------|
| `lib/features/chat/presentation/viewmodels/chat_list_viewmodel.dart` | 채팅방 목록 관리 (페이징, 새로고침) |
| `lib/features/chat/presentation/viewmodels/chat_room_viewmodel.dart` | 채팅방 상세 관리 (메시지, 거래 기능) |

#### UI Models
| 파일 | 클래스 |
|------|--------|
| `lib/features/chat/presentation/ui_models/chat_room_ui_model.dart` | ChatRoomListUiModel, ChatRoomDetailUiModel, TicketInfoUiModel, UserProfileUiModel, TransactionUiModel, MessageUiModel |

#### Views (수정)
| 파일 | 변경 내용 |
|------|----------|
| `lib/features/chat/presentation/view/chat_view.dart` | ChatListViewModel 연동 |
| `lib/features/chat/presentation/view/chat_room_view.dart` | ChatRoomViewModel 연동, 거래 기능 UI |

#### Widgets (수정)
| 파일 | 변경 내용 |
|------|----------|
| `lib/features/chat/presentation/widgets/chat_room_card.dart` | ChatRoomListUiModel 적용 |

---

### Phase 5: 설정 및 검증 ✅

#### API Endpoints 추가
```dart
// lib/core/network/api_endpoint.dart
static const String chatRooms = '/api/chat/rooms';
static const String chatRoomDetail = '/api/chat/rooms/{roomId}';
static const String chatMessages = '/api/chat/rooms/{roomId}/messages';
static const String chatSendMessage = '/api/chat/rooms/{roomId}/messages';
static const String chatMarkAsRead = '/api/chat/rooms/{roomId}/read';
static const String chatRequestPayment = '/api/chat/rooms/{roomId}/payment-request';
static const String chatConfirmPurchase = '/api/chat/rooms/{roomId}/confirm-purchase';
static const String chatCancelTransaction = '/api/chat/rooms/{roomId}/cancel';
```

#### 의존성 추가 (pubspec.yaml)
```yaml
dependencies:
  signalr_netcore: ^1.4.4
  image_picker: ^1.1.2
```

#### 빌드 검증
- [x] iOS Debug 빌드 성공
- [x] Android Debug 빌드 성공
- [x] build_runner 코드 생성 완료

---

## 파일 구조

```
lib/features/chat/
├── data/
│   ├── datasources/
│   │   ├── chat_remote_data_source.dart      # REST API
│   │   └── chat_signalr_data_source.dart     # SignalR
│   ├── dto/
│   │   ├── request/
│   │   │   └── chat_req_dto.dart
│   │   └── response/
│   │       └── chat_resp_dto.dart
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
│       ├── cancel_transaction_usecase.dart
│       ├── confirm_purchase_usecase.dart
│       ├── create_or_get_chat_room_usecase.dart
│       ├── get_chat_room_detail_usecase.dart
│       ├── get_chat_rooms_usecase.dart
│       ├── get_messages_usecase.dart
│       ├── mark_as_read_usecase.dart
│       ├── request_payment_usecase.dart
│       └── send_message_usecase.dart
└── presentation/
    ├── ui_models/
    │   └── chat_room_ui_model.dart
    ├── view/
    │   ├── chat_room_view.dart
    │   └── chat_view.dart
    ├── viewmodels/
    │   ├── chat_list_viewmodel.dart
    │   └── chat_room_viewmodel.dart
    └── widgets/
        ├── chat_empty_state.dart
        ├── chat_room_card.dart
        └── ... (기타 위젯)
```

---

## 기술 스택 및 패턴

| 항목 | 사용 기술 |
|------|----------|
| 상태관리 | Riverpod 3.0.3 (@riverpod annotation) |
| 불변 데이터 | Freezed |
| HTTP 통신 | Dio |
| 실시간 통신 | SignalR (signalr_netcore) |
| 라우팅 | go_router |
| 이미지 선택 | image_picker |
| 아키텍처 | Clean Architecture (Domain → Data → Presentation) |

---

## 주의사항 및 해결된 이슈

### 1. Riverpod 3.0.3 호환성
- `valueOrNull` → `value` 사용 (Riverpod 3.x 변경사항)
- AsyncValue에서 nullable 값 접근 시 `state.value` 사용

### 2. AppColors 정의
- `AppColors.error` → `AppColors.destructive` (프로젝트 규칙)

### 3. AppLogger 사용법
- `AppLogger.w(message)` - 단일 인자만 허용
- `AppLogger.e(message, error, stackTrace)` - 에러는 e 메서드 사용

### 4. BaseResponse Extension
- `dataOrThrow` 사용 시 `base_response.dart` import 필요

---

## 다음 단계 (추가 개발 필요 시)

### 기능 테스트
1. 채팅방 목록 조회 테스트
2. 채팅방 생성/진입 테스트
3. 텍스트 메시지 송수신 테스트
4. 이미지 메시지 송수신 테스트
5. SignalR 실시간 메시지 수신 테스트
6. 결제 요청/구매 확정/거래 취소 테스트

### 추가 구현 고려 항목
- [ ] 푸시 알림 연동
- [ ] 메시지 검색 기능
- [ ] 채팅방 나가기 기능
- [ ] 이미지 풀스크린 뷰어
- [ ] 메시지 삭제 기능
- [ ] 오프라인 메시지 캐싱

---

## 환경 설정 (새 컴퓨터에서 계속하기)

### 1. 의존성 설치
```bash
flutter pub get
```

### 2. 코드 생성
```bash
dart run build_runner build --delete-conflicting-outputs
```

### 3. 빌드 확인
```bash
# iOS
flutter build ios --debug

# Android
flutter build apk --debug
```

### 4. SignalR 서버 설정
- `lib/features/chat/data/datasources/chat_signalr_data_source.dart`에서 Hub URL 확인
- 서버 엔드포인트: `/chatHub`

---

## 관련 문서

- 상세 계획서: `docs/plans/chat_feature_plan.md`
- 요약본: `docs/plans/CHAT_IMPLEMENTATION_SUMMARY.md`
- API 명세: `docs/api/chat_api.md`
