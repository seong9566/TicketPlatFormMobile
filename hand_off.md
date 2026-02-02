# 인수인계 - 최근 작업 요약

## 작업 요약
- 채팅 결제/구매확정 메시지 타입 처리 보강
  - `MessageType.purchaseConfirmed` 추가 및 `PAYMENT_SUCCESS`/`PURCHASE_CONFIRMED` 파싱 반영
  - SignalR/DTO 파싱에서 타입 매핑 추가
  - 구매확정 카드 UI(`PurchaseConfirmedBubble`) 신규 추가
  - 결제완료 카드(`PaymentSuccessBubble`) 역할 기반 정렬 및 상태 표시 개선
    - 결제 완료 후 타이틀: "구매 확정"
    - 확정 완료 타이틀: "구매확정 완료"
  - 결제 요청 카드(`PaymentRequestBubble`) 메시지/상태 UX 개선
  - 빈 메시지(텍스트/이미지 없음) 렌더링 방지

- 채팅방 나가기 API 연동 추가
  - `POST /api/chat/rooms/leave` 연결
  - DTO/RemoteDataSource/Repository/Usecase 추가
  - 채팅방 메뉴에서 나가기 실행 시 로딩/실패 스낵바/리스트 갱신 후 pop 처리

- 채팅 목록 스와이프 나가기 UX 추가
  - `Dismissible`로 좌측 스와이프 → 확인 다이얼로그 → 로딩 → API 호출
  - 성공 시 목록에서 즉시 제거 + 성공 스낵바
  - 실패 시 에러 스낵바

## 변경 파일
- `lib/features/chat/domain/entities/message_entity.dart`
- `lib/features/chat/data/dto/response/chat_resp_dto.dart`
- `lib/features/chat/data/datasources/chat_signalr_data_source.dart`
- `lib/features/chat/presentation/widgets/purchase_confirmed_bubble.dart`
- `lib/features/chat/presentation/widgets/payment_success_bubble.dart`
- `lib/features/chat/presentation/widgets/payment_request_bubble.dart`
- `lib/features/chat/presentation/widgets/chat_bubble.dart`
- `lib/core/network/api_endpoint.dart`
- `lib/features/chat/data/dto/request/chat_req_dto.dart`
- `lib/features/chat/data/datasources/chat_remote_data_source.dart`
- `lib/features/chat/domain/repositories/chat_repository.dart`
- `lib/features/chat/data/repositories/chat_repository_impl.dart`
- `lib/features/chat/domain/usecases/leave_chat_room_usecase.dart`
- `lib/features/chat/domain/usecases/leave_chat_room_usecase.g.dart`
- `lib/features/chat/presentation/viewmodels/chat_room_viewmodel.dart`
- `lib/features/chat/presentation/viewmodels/chat_list_viewmodel.dart`
- `lib/features/chat/presentation/view/chat_room_view.dart`
- `lib/features/chat/presentation/view/chat_view.dart`

## 메모/주의
- `PAYMENT_SUCCESS`는 타입 기반 처리도 추가했지만, 기존 텍스트 매칭도 유지됨
- `PURCHASE_CONFIRMED`는 `message: null`이어도 카드가 렌더링됨
- 나가기 성공 시 목록에서 즉시 제거되며, RoomUpdated 이벤트는 리스트 refresh로 처리 중
- `leave_chat_room_usecase.g.dart`는 현재 수동 생성 상태이므로, 필요 시 `build_runner` 재생성 권장

## 다음 확인 포인트
- 서버에서 `RoomUpdated: RoomClosed` 및 `ReceiveMessage` 전송 여부 검증
- `PAYMENT_SUCCESS` 타입을 서버가 실제로 내려주는지 확인
- 스와이프 나가기 시 Undo UX 필요 여부 판단
