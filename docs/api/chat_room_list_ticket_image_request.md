# 채팅방 목록 티켓 이미지 필드 추가 요청

## 개요
채팅방 목록 UI에서 현재 아바타(Avatar)는 상대방(판매자/구매자)의 프로필 이미지로 표시되고 있습니다.
UI 요구사항 변경으로 **판매 중인 티켓의 대표 이미지**를 목록 아바타로 노출하려고 합니다.
이를 위해 채팅방 목록 조회 API(`GET /api/chat/rooms`)에 **티켓 이미지 URL** 필드 추가를 요청드립니다.

---

## 📌 요청 사항: `ticketThumbnailUrl` 필드 추가

### 대상 API
`GET /api/chat/rooms`

### 현재 응답 (Before)
```json
{
  "roomId": 1,
  "ticketId": 123,
  "ticketTitle": "아이유 콘서트 티켓",
  "otherUserNickname": "판매자",
  "otherUserProfileImage": "https://...",
  "lastMessage": "안녕하세요",
  "lastMessageAt": "2026-01-14T10:30:00",
  "unreadCount": 2,
  "status": "active"
}
```

### 요청 응답 (After)
```json
{
  "roomId": 1,
  "ticketId": 123,
  "ticketTitle": "아이유 콘서트 티켓",
  "ticketThumbnailUrl": "https://...",
  "otherUserNickname": "판매자",
  "otherUserProfileImage": "https://...",
  "lastMessage": "안녕하세요",
  "lastMessageAt": "2026-01-14T10:30:00",
  "unreadCount": 2,
  "status": "active"
}
```

---

## 📋 필드 명세

| 필드명 | 타입 | 필수 | 설명 |
|--------|------|------|------|
| `ticketThumbnailUrl` | `string` | N | 티켓 대표 이미지 URL (목록 아바타에 사용) |

---

## 📱 클라이언트 사용 방식

- `ticketThumbnailUrl`이 존재하면 목록 아바타로 사용
- 값이 없으면 기존 `otherUserProfileImage`로 폴백

---

## ⏰ 요청 일시
- **요청일**: 2026-02-03
- **요청자**: 모바일 개발팀

## 📝 비고
- 티켓 대표 이미지가 없는 경우 `null` 반환 가능
- 기존 필드는 유지하고, **추가 필드로만 확장** 요청
