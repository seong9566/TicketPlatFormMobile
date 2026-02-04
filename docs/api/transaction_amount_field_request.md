# Backend Request: Transaction Amount Field

**작성일**: 2026-02-03  
**요청자**: Flutter Team  
**우선순위**: 긴급 (결제 플로우 블로킹 이슈)

---

## 문제 상황

### 현재 에러
```
POST /api/payment/request
400 Bad Request
"결제 금액이 거래 금액과 일치하지 않습니다."
```

### 요청 데이터 (Flutter → Backend)
```json
{
  "transactionId": 9,
  "amount": 90000,          // ❌ 티켓 단가 (unitPrice)만 전송
  "orderName": "...",
  "customerName": "...",
  "customerEmail": "..."
}
```

### 서버 검증 로직 (추정)
```csharp
// 판매자가 결제 요청 시 수량 입력 → Transaction 생성
// amount = unitPrice * quantity (예: 90000 * 2 = 180000)

// 구매자 결제 시도 시
if (paymentRequest.Amount != transaction.Amount) {
    return BadRequest("결제 금액이 거래 금액과 일치하지 않습니다.");
}
```

**결과**: 클라이언트가 `unitPrice`만 보내서 `180000 != 90000` 에러 발생

---

## 현재 API 응답 구조

### `GET /api/chat/rooms/detail` 응답 예시
```json
{
  "roomId": 1,
  "ticket": {
    "ticketId": 123,
    "title": "Bunnies Camp 2024",
    "price": 90000,           // 총 판매가 (Deprecated?)
    "unitPrice": 90000,       // 티켓 단가
    "totalQuantity": 5,
    "remainingQuantity": 3,
    "thumbnailUrl": "..."
  },
  "transaction": {
    "transactionId": 9,
    "statusCode": "pending_payment",
    "statusName": "결제 대기",
    "confirmedAt": null,
    "cancelledAt": null
    // ❌ amount 또는 quantity 필드 없음
  }
}
```

**문제**: Transaction 객체에 **총 결제 금액(amount)** 또는 **주문 수량(quantity)** 정보가 없어 클라이언트가 올바른 금액을 계산할 수 없음.

---

## 요청사항

### Option A: Transaction에 `amount` 필드 추가 (권장)

**변경 요청**:
```json
"transaction": {
  "transactionId": 9,
  "statusCode": "pending_payment",
  "statusName": "결제 대기",
  "amount": 180000,         // ✅ 추가: unitPrice * quantity
  "confirmedAt": null,
  "cancelledAt": null
}
```

**장점**:
- 서버가 계산한 금액을 그대로 사용 (금액 불일치 방지)
- 서버가 단일 진실 공급원(Single Source of Truth)
- 클라이언트 로직 단순화

**단점**:
- 백엔드 수정 필요

---

### Option B: Transaction에 `quantity` 필드 추가

**변경 요청**:
```json
"transaction": {
  "transactionId": 9,
  "statusCode": "pending_payment",
  "statusName": "결제 대기",
  "quantity": 2,            // ✅ 추가: 주문 수량
  "confirmedAt": null,
  "cancelledAt": null
}
```

**장점**:
- 클라이언트에서 `unitPrice * quantity` 계산 가능
- 수량 정보를 UI에 명시적으로 표시 가능

**단점**:
- 클라이언트에서 계산 로직 필요 (금액 불일치 위험 증가)
- 백엔드 수정 필요

---

### Option C: 현재 구조 유지 (Flutter에서 workaround)

**방법**: `POST /api/chat/rooms/request-payment` 응답의 `amount`를 캐싱하여 사용

```dart
// 판매자가 결제 요청 시
final response = await requestPayment(roomId: 1, quantity: 2);
// response: { "paymentUrl": "...", "transactionId": 9, "amount": 180000 }

// amount를 로컬 상태에 저장
_cachedTransactionAmounts[9] = 180000;

// 구매자가 결제 시도 시
final amount = _cachedTransactionAmounts[transactionId] ?? fallback;
await paymentViewModel.requestPayment(amount: amount, ...);
```

**장점**:
- 백엔드 수정 불필요

**단점**:
- 복잡한 상태 관리 필요
- 앱 재시작 시 금액 정보 손실 (채팅방 재진입 시 결제 불가)
- 버그 위험 증가

---

## 권장 방안

**Option A (Transaction.amount 추가)**를 권장합니다.

### 이유:
1. **금액 정합성**: 서버가 계산한 금액을 사용하여 검증 통과 보장
2. **단순성**: 클라이언트 로직 최소화
3. **일관성**: 결제 시스템의 단일 진실 공급원 유지
4. **확장성**: 향후 할인/쿠폰 적용 시에도 amount 필드만 변경하면 됨

### 예상 영향:
- **Backend**: Transaction 모델에 `Amount` 필드 추가, 응답 DTO 수정
- **Flutter**: TransactionDto/Entity 수정 → build_runner 재생성 → UI 로직 수정

---

## Flutter 변경 예정 코드 (Option A 채택 시)

### 1. TransactionDto 수정
```dart
@freezed
abstract class TransactionDto with _$TransactionDto {
  const factory TransactionDto({
    int? transactionId,
    String? statusCode,
    String? statusName,
    int? amount,              // ✅ 추가
    String? confirmedAt,
    String? cancelledAt,
  }) = _TransactionDto;
  
  factory TransactionDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionDtoFromJson(json);
}
```

### 2. TransactionEntity 수정
```dart
@freezed
abstract class TransactionEntity with _$TransactionEntity {
  const factory TransactionEntity({
    required int transactionId,
    required TransactionStatus status,
    required String statusName,
    required int amount,      // ✅ 추가
    DateTime? confirmedAt,
    DateTime? cancelledAt,
  }) = _TransactionEntity;
}
```

### 3. 결제 요청 로직 수정 (chat_room_view.dart)
```dart
// 변경 전
await paymentViewModel.requestPayment(
  amount: ticketInfo.priceValue,  // ❌ 단가만 전송
  ...
);

// 변경 후
await paymentViewModel.requestPayment(
  amount: transaction.amount,     // ✅ 서버 계산 금액 사용
  ...
);
```

---

## 검증 시나리오

### 1. 단일 수량 결제 (quantity = 1)
```
판매자: 결제 요청 (quantity=1) → Transaction(amount=90000)
구매자: 결제 시도 (amount=90000) → 성공
```

### 2. 복수 수량 결제 (quantity = 2)
```
판매자: 결제 요청 (quantity=2) → Transaction(amount=180000)
구매자: 결제 시도 (amount=180000) → 성공
```

### 3. 금액 불일치 방지
```
서버 검증: paymentRequest.Amount == transaction.Amount
→ 클라이언트가 transaction.amount를 그대로 전송하므로 항상 일치
```

---

## 타임라인

- **요청일**: 2026-02-03
- **희망 완료일**: 2026-02-04 (긴급)
- **Flutter 구현 소요 시간**: 백엔드 배포 후 1시간 이내

---

## 관련 문서

- `docs/api/flutter_change_summary.md` (결제 요청 수량 필수 변경)
- `docs/api/PAYMENT_API_DOCS.md` (결제 API 문서)

---

## 질문/확인 사항

1. Transaction 모델에 `Amount` 필드를 추가할 수 있나요?
2. 해당 필드는 `POST /api/chat/rooms/request-payment` 시점에 계산되나요?
3. 할인/쿠폰 적용 계획이 있다면 Amount 필드가 최종 결제 금액을 반영하나요?
4. 응답 예시 JSON을 제공해주실 수 있나요?
