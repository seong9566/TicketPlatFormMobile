# 백엔드 요청: Transaction API에 amount 필드 추가

**날짜**: 2026-02-03  
**우선순위**: 🚨 긴급 (결제 기능 블로킹)  
**요청자**: Flutter 팀

---

## 📋 요청 사항 (한 줄 요약)

`GET /api/chat/rooms/detail` 응답의 **Transaction 객체에 `amount` 필드를 추가**해주세요.

---

## 🔴 현재 문제

구매자가 결제 시도 시 다음 에러 발생:
```
POST /api/payment/request
400 Bad Request
"결제 금액이 거래 금액과 일치하지 않습니다."
```

### 원인
1. 판매자가 수량 2개로 결제 요청 → 서버가 `amount = 90000 × 2 = 180000` 계산
2. Flutter는 Transaction 응답에 `amount` 정보가 없어서 `unitPrice(90000)`만 전송
3. 서버 검증 실패: `180000 ≠ 90000`

---

## 📝 필요한 변경사항

### 현재 응답 (문제)
```json
{
  "transaction": {
    "transactionId": 9,
    "statusCode": "pending_payment",
    "statusName": "결제 대기",
    "confirmedAt": null,
    "cancelledAt": null
  }
}
```

### 요청 응답 (해결)
```json
{
  "transaction": {
    "transactionId": 9,
    "statusCode": "pending_payment",
    "statusName": "결제 대기",
    "amount": 180000,          // ✅ 추가: unitPrice × quantity
    "confirmedAt": null,
    "cancelledAt": null
  }
}
```

---

## 🎯 대상 API

### `GET /api/chat/rooms/detail`

**응답 DTO 수정 필요**:
```csharp
public class TransactionDto
{
    public int TransactionId { get; set; }
    public string StatusCode { get; set; }
    public string StatusName { get; set; }
    public int Amount { get; set; }              // ✅ 추가
    public DateTime? ConfirmedAt { get; set; }
    public DateTime? CancelledAt { get; set; }
}
```

**Amount 값**:
- `POST /api/chat/rooms/request-payment` 호출 시 계산된 금액
- `amount = ticket.UnitPrice × request.Quantity`
- Transaction 생성 시점에 저장된 값 그대로 반환

---

## ✅ 검증 방법

### 시나리오 1: 단일 수량 결제
```
판매자: 결제 요청 (quantity=1)
→ Transaction.Amount = 90000

구매자: GET /api/chat/rooms/detail
→ transaction.amount = 90000

구매자: POST /api/payment/request (amount=90000)
→ 성공 ✅
```

### 시나리오 2: 복수 수량 결제
```
판매자: 결제 요청 (quantity=2)
→ Transaction.Amount = 180000

구매자: GET /api/chat/rooms/detail
→ transaction.amount = 180000

구매자: POST /api/payment/request (amount=180000)
→ 성공 ✅
```

---

## 🕐 일정

- **요청일**: 2026-02-03
- **희망 완료**: 2026-02-04 (24시간 이내)
- **Flutter 후속 작업**: 백엔드 배포 후 1시간 이내 완료 가능

---

## 💬 확인 사항

1. **Transaction 모델에 Amount 필드 추가 가능한가요?**
   - DB 스키마 변경 필요 여부
   - 기존 Transaction 데이터 마이그레이션 필요 여부

2. **Amount는 언제 계산되나요?**
   - `POST /api/chat/rooms/request-payment` 호출 시점에 계산되나요?
   - 할인/쿠폰 적용 계획이 있다면 최종 금액을 반영하나요?

3. **응답 예시 JSON을 제공해주실 수 있나요?**
   - 수정된 Transaction 객체 전체 응답

4. **배포 예정 시간을 알려주시면 Flutter 작업을 준비하겠습니다.**

---

## 📎 관련 문서

- 상세 분석: `docs/api/transaction_amount_field_request.md`
- 결제 요청 변경사항: `docs/api/flutter_change_summary.md`
- 결제 API 문서: `docs/api/PAYMENT_API_DOCS.md`

---

## 👤 담당자

**Flutter 팀**: 백엔드 배포 완료 시 즉시 코드 수정 및 테스트 진행 예정

**문의**: 추가 질문이 있으시면 언제든지 알려주세요.
