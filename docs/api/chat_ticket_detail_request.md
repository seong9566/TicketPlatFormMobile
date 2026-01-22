# 채팅방 티켓 상세 정보 API 요청 스펙

## 개요
채팅방 UI 개편으로 인해 티켓 헤더에 좌석 정보, 공연 일시, 장소 등 상세 정보가 표시되어야 합니다. 현재 채팅방 상세 조회 API(`GET /api/chats/{roomId}`)의 `ticket` 객체에 해당 필드들이 누락되어 있어, 추가 요청드립니다.

---

## 📌 요청 사항: `TicketInfo` 객체 확장

### 현재 응답 (Before)
```json
{
  "ticket": {
    "ticketId": 123,
    "title": "뮤지컬 오페라의 유령",
    "price": 360000,
    "thumbnailUrl": "https://..."
  }
}
```

### 요청 응답 (After)
```json
{
  "ticket": {
    "ticketId": 123,
    "title": "뮤지컬 오페라의 유령",
    "price": 360000,
    "thumbnailUrl": "https://...",
    "seatInfo": "1층 VIP A구역 3열 15번",
    "eventDateTime": "2025-02-14T19:30:00",
    "venueName": "블루스퀘어 신한카드홀"
  }
}
```

---

## 📋 필드 명세

| 필드명 | 타입 | 필수 | 설명 |
|--------|------|------|------|
| `seatInfo` | `string` | N | 좌석 정보 (예: "1층 VIP A구역 3열 15번") |
| `eventDateTime` | `string (ISO 8601)` | N | 공연 일시 (예: "2025-02-14T19:30:00") |
| `venueName` | `string` | N | 공연장 이름 (예: "블루스퀘어 신한카드홀") |

> **참고**: 해당 정보가 없는 경우 `null`을 반환하면 클라이언트에서 해당 항목을 숨깁니다.

---

## 🔗 관련 API Endpoint

- **Method**: `GET`
- **Path**: `/api/chats/{roomId}`
- **Description**: 채팅방 상세 조회

---

## 📱 클라이언트 활용 예시

```dart
// TicketInfoEntity 변경 예정
@freezed
abstract class TicketInfoEntity with _$TicketInfoEntity {
  const factory TicketInfoEntity({
    required int ticketId,
    required String title,
    required int price,
    String? thumbnailUrl,
    String? seatInfo,        // [NEW]
    DateTime? eventDateTime, // [NEW]
    String? venueName,       // [NEW]
  }) = _TicketInfoEntity;
}
```

---

## ⏰ 요청 일시
- **요청일**: 2026-01-22
- **요청자**: 모바일 개발팀

## 📝 비고
- 화면 디자인은 이미 구현되어 있으며, 현재 더미 데이터로 연동 중입니다.
- API 응답 필드가 추가되면 즉시 실데이터로 전환 예정입니다.
