# 채팅 기능 구현 계획서 - 요약본

## 빠른 시작

이 문서는 채팅 기능 개발의 전체 계획을 간략히 정리한 것입니다.
상세 내용은 `chat_feature_plan.md`를 참고하세요.

---

## 1. 핵심 내용

### 구현 범위
- REST API 기반 메시지 송수신
- SignalR 실시간 통신
- 거래 상태 관리 (결제/확정/취소)
- 메시지 페이지네이션 및 무한 스크롤

### 예상 소요 시간
**총 71시간 (약 2주)** - 기본 구현 및 테스트 포함

---

## 2. 구현 단계 (Phase별)

| Phase | 작업 | 소요시간 | 주차 |
|-------|------|----------|------|
| 1 | Domain Layer (Entity, Repository, UseCase) | 10h | 주 1 |
| 2 | Data Layer (DTO, DataSource, Repository) | 13h | 주 1 |
| 3 | SignalR (실시간 통신) | 5h | 주 1 |
| 4 | Presentation (ViewModel, Widget, UI) | 27h | 주 2 |
| 5 | Integration & Testing | 10h | 주 2 |
| 6 | 최적화 및 버그 수정 | 6h | 주 2 |

---

## 3. 폴더 구조

```
lib/features/chat/
├── data/
│   ├── datasources/
│   │   ├── chat_remote_data_source.dart       ← REST API
│   │   └── chat_signalr_data_source.dart      ← SignalR
│   ├── dto/request, response/                 ← DTO 정의
│   └── repositories/
│       └── chat_repository_impl.dart
├── domain/
│   ├── entities/                              ← 데이터 모델
│   ├── repositories/
│   └── usecases/                              ← 9개 UseCase
├── presentation/
│   ├── providers/                             ← DI 설정
│   ├── viewmodels/                            ← 상태 관리
│   ├── ui_models/                             ← UI 데이터 모델
│   ├── view/                                  ← 화면 (기존 개선)
│   └── widgets/                               ← UI 컴포넌트
```

---

## 4. 주요 컴포넌트

### 4.1 Domain Layer Entities
- `ChatRoomEntity` - 채팅방 정보
- `MessageEntity` - 메시지
- `TransactionEntity` - 거래 정보
- `UserProfileEntity` - 사용자 프로필

### 4.2 Domain Layer UseCases
1. `GetChatRoomsUseCase` - 채팅방 목록 조회
2. `GetChatRoomDetailUseCase` - 채팅방 상세 조회
3. `CreateOrGetChatRoomUseCase` - 채팅방 생성/조회
4. `SendMessageUseCase` - 메시지 송신
5. `GetMessagesUseCase` - 메시지 목록 조회
6. `MarkAsReadUseCase` - 읽음 처리
7. `RequestPaymentUseCase` - 결제 요청
8. `ConfirmPurchaseUseCase` - 구매 확정
9. `CancelTransactionUseCase` - 거래 취소

### 4.3 Presentation Layer ViewModels
- `ChatListViewModel` - 채팅방 목록
- `ChatRoomViewModel` - 채팅방 상세
- `MessageViewModel` - 메시지 관리
- `TransactionViewModel` - 거래 상태

### 4.4 UI Widgets
- `MessageListWidget` - 메시지 리스트 (무한 스크롤)
- `MessageBubbleWidget` - 메시지 버블
- `MessageInputWidget` - 입력창
- `TypingIndicatorWidget` - 타이핑 표시
- `TransactionActionPanel` - 거래 액션 버튼

---

## 5. 구현 순서

### 단계 1: Domain Layer (3시간)
```
1. Entity 정의
   - ChatRoomEntity, MessageEntity, TransactionEntity, UserProfileEntity

2. Repository Interface 정의
   - ChatRepository (추상 인터페이스)

3. UseCase 구현
   - 9개 UseCase 모두 구현
```

### 단계 2: Data Layer (6시간)
```
1. DTO 정의 (Freezed)
   - Request DTO: CreateChatRoom, SendMessage, RequestPayment 등
   - Response DTO: ChatRoom, Message, Transaction 등

2. Remote DataSource 구현
   - REST API 호출 로직
   - Multipart 이미지 업로드

3. Repository 구현체
   - DTO → Entity 변환
   - 에러 처리
```

### 단계 3: SignalR 통합 (5시간)
```
1. SignalR DataSource
   - HubConnection 관리
   - 메서드 호출 (JoinRoom, SendMessage 등)
   - 이벤트 리스너 (ReceiveMessage, RoomUpdated 등)

2. Stream 기반 이벤트
   - messageController
   - roomUpdatedController
   - typingController
```

### 단계 4: Presentation Layer (15시간)
```
1. DI 설정 (chat_providers_di.dart)
   - Repository 제공
   - UseCase 제공
   - SignalR 제공

2. ViewModel 구현 (8시간)
   - AsyncValue 상태 관리
   - 메서드 구현

3. UI 구현 (7시간)
   - 위젯 구현
   - 화면 통합
   - 스타일링
```

### 단계 5: 테스트 (10시간)
```
1. 단위 테스트 (Unit Test)
   - Entity, UseCase, Repository

2. 통합 테스트 (Integration Test)
   - API 연동
   - SignalR 연동

3. UI 테스트 (Widget Test)
   - 위젯 렌더링
   - 상호작용
```

---

## 6. 핵심 기술 결정

### 6.1 상태 관리
- **선택**: Riverpod 3.0.3 (기존 프로젝트와 동일)
- **패턴**: FutureProvider + AsyncValue

### 6.2 네트워킹
- **REST API**: Dio + safeApiCall (기존 패턴 유지)
- **실시간**: SignalR (signalr_netcore 또는 signalr_client)
  - 결정 필요: PoC 후 라이브러리 선택

### 6.3 에러 처리
- 기존 ErrorHandler 패턴 유지
- API 에러 → Failure → Exception으로 전파

### 6.4 로깅
- AppLogger 사용 (기존 설정)
- SignalR 연결/메시지 로깅

---

## 7. 주의사항 및 위험요소

### 높음 위험
1. **SignalR 라이브러리 선택**
   - Flutter 지원 라이브러리 제한적
   - 완화: PoC 진행 후 결정

2. **네트워크 연결 관리**
   - 모바일 네트워크 불안정성
   - 완화: 자동 재연결, 사용자 알림

3. **권한 관리**
   - 결제는 판매자만, 확정은 구매자만
   - 완화: 서버 검증 + UI 기반 권한 제어

### 중간 위험
1. **메모리 누수**
   - 장시간 사용 시 메시지 증가
   - 완화: 메시지 페이지네이션, dispose 정리

2. **이미지 업로드 성능**
   - 대용량 파일 타임아웃
   - 완화: 이미지 압축, 타임아웃 증가

3. **메시지 캐싱**
   - 로컬 캐시와 서버 불일치
   - 완화: 서버 데이터 우선, 동기화

---

## 8. 의존성 추가

```yaml
dependencies:
  # SignalR (선택)
  signalr_netcore: ^1.4.4

  # 이미지 처리
  image_picker: ^1.0.0
```

**주의**: 현재 `pubspec.yaml`에서 필요한 의존성 검토 필요

---

## 9. API 엔드포인트 요약

| 기능 | 메서드 | 경로 |
|------|--------|------|
| 채팅방 목록 | GET | `/api/chat/rooms?page=1&pageSize=20` |
| 채팅방 상세 | GET | `/api/chat/rooms/{roomId}` |
| 채팅방 생성 | POST | `/api/chat/rooms` |
| 메시지 송신 | POST | `/api/chat/messages` |
| 메시지 목록 | GET | `/api/chat/rooms/{roomId}/messages` |
| 읽음 처리 | POST | `/api/chat/rooms/{roomId}/read` |
| 결제 요청 | POST | `/api/chat/rooms/{roomId}/request-payment` |
| 구매 확정 | POST | `/api/chat/rooms/{roomId}/confirm-purchase` |
| 거래 취소 | POST | `/api/chat/rooms/{roomId}/cancel` |

---

## 10. SignalR 이벤트 요약

### 클라이언트 → 서버
- `JoinRoom(roomId)` - 채팅방 입장
- `LeaveRoom(roomId)` - 채팅방 퇴장
- `UserTyping(roomId)` - 타이핑 시작
- `UserStoppedTyping(roomId)` - 타이핑 중지

### 서버 → 클라이언트
- `ReceiveMessage` - 메시지 수신
- `RoomUpdated` - 채팅방 상태 변경 (결제, 확정, 취소)
- `UserJoined / UserLeft` - 사용자 상태
- `UserTyping / UserStoppedTyping` - 타이핑 표시

---

## 11. 테스트 전략

### 커버리지 목표
- Domain Layer: 80%
- Data Layer: 75%
- Presentation Layer: 60%

### 주요 테스트 항목
- 메시지 송수신
- 페이지네이션
- 네트워크 오류 처리
- 권한 검증
- 실시간 업데이트

---

## 12. 배포 전략

### Phase 1 (주 1-2): REST API 기본 기능
- 채팅방 목록/상세 조회
- 메시지 송수신
- 거래 액션

### Phase 2 (주 2-3): SignalR 실시간
- 메시지 실시간 수신
- 타이핑 표시

### Phase 3 (주 3-4): 최적화
- 성능 개선
- QA 및 버그 수정
- 최종 배포

---

## 13. 다음 단계

1. **SignalR 라이브러리 결정**
   - signalr_netcore vs signalr_client 비교
   - PoC 진행

2. **팀 미팅**
   - 구현 계획 리뷰
   - 우선순위 확정

3. **개발 시작**
   - Domain Layer부터 시작
   - 각 Phase마다 코드 리뷰

---

## 14. 참고 자료

- 전체 계획서: `docs/plans/chat_feature_plan.md`
- API 명세서: `docs/api/chat_api.md`
- 기존 코드 패턴: `lib/features/auth/`, `lib/features/home/`

---

**작성 날짜**: 2026-01-12
**상태**: 검토 대기 중
