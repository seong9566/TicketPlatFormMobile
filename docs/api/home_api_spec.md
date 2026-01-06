# 홈 화면 API 스펙 문서

## 개요
홈 화면에서 필요한 모든 데이터를 제공하는 API 스펙입니다.

---

## API 엔드포인트

### GET /api/home

**설명**: 홈 화면에 필요한 모든 데이터를 조회합니다.

**요청 헤더**:
```
Authorization: Bearer {access_token}
```

**쿼리 파라미터**: 없음

---

## 응답 구조

### 성공 응답 (200 OK)

```json
{
  "message": "홈 화면 데이터 조회 성공",
  "data": {
    "banners": [
      {
        "bannerId": 1,
        "title": "Summer Rock Festival",
        "imageUrl": "https://example.com/banner1.jpg",
        "linkUrl": "/events/123",
        "displayOrder": 1
      }
    ],
    "categories": [
      {
        "categoryId": 1,
        "categoryName": "콘서트",
        "iconName": "music_note_outlined",
        "displayOrder": 1
      },
      {
        "categoryId": 2,
        "categoryName": "뮤지컬",
        "iconName": "theater_comedy",
        "displayOrder": 2
      },
      {
        "categoryId": 3,
        "categoryName": "스포츠",
        "iconName": "emoji_events_outlined",
        "displayOrder": 3
      },
      {
        "categoryId": 4,
        "categoryName": "전시",
        "iconName": "palette_outlined",
        "displayOrder": 4
      }
    ],
    "popularTickets": [
      {
        "ticketId": 29,
        "ticketTitle": "모네 빛을 그리다 티켓",
        "price": 16000,
        "originalPrice": 17400,
        "discountRate": 8,
        "posterImageUrl": "https://picsum.photos/400/600?random=42",
        "eventTitle": "모네: 빛을 그리다",
        "eventDate": "05.20",
        "venue": "서울 올림픽 경기장",
        "availableTicketCount": 23,
        "isOnSale": true,
        "categoryId": 4
      }
    ],
    "recommendedEvents": [
      {
        "eventId": 101,
        "eventTitle": "BTS 월드 투어",
        "posterImageUrl": "https://example.com/event101.jpg",
        "eventDate": "2026.06.15",
        "venue": "잠실 올림픽 주경기장",
        "ticketCount": 150,
        "minPrice": 80000,
        "maxPrice": 250000,
        "categoryId": 1,
        "tags": ["K-POP", "월드투어", "인기"]
      }
    ],
    "upcomingEvents": [
      {
        "eventId": 201,
        "eventTitle": "오페라의 유령",
        "posterImageUrl": "https://example.com/event201.jpg",
        "eventDate": "2026.02.10",
        "dDayCount": 35,
        "venue": "블루스퀘어",
        "categoryId": 2
      }
    ],
    "newTickets": [
      {
        "ticketId": 301,
        "ticketTitle": "신규 등록 티켓",
        "price": 50000,
        "posterImageUrl": "https://example.com/ticket301.jpg",
        "eventTitle": "새로운 공연",
        "eventDate": "03.15",
        "registeredAt": "2026-01-05T10:30:00Z",
        "sellerNickname": "티켓마스터",
        "sellerRating": 4.8
      }
    ]
  }
}
```

---

## 데이터 모델 상세 설명

### 1. Banner (배너)
홈 화면 상단 캐러셀 배너 데이터

| 필드 | 타입 | 필수 | 설명 |
|------|------|------|------|
| bannerId | int | ✅ | 배너 고유 ID |
| title | string | ✅ | 배너 제목 |
| imageUrl | string | ✅ | 배너 이미지 URL (권장 비율: 16:9) |
| linkUrl | string | ❌ | 클릭 시 이동할 URL (null이면 클릭 불가) |
| displayOrder | int | ✅ | 표시 순서 (오름차순) |

**UI 반영 위치**: `HomeBannerCarousel` 위젯

---

### 2. Category (카테고리)
이벤트 카테고리 정보

| 필드 | 타입 | 필수 | 설명 |
|------|------|------|------|
| categoryId | int | ✅ | 카테고리 고유 ID |
| categoryName | string | ✅ | 카테고리 이름 (예: "콘서트", "뮤지컬") |
| iconName | string | ✅ | Material Icons 이름 |
| displayOrder | int | ✅ | 표시 순서 |

**UI 반영 위치**: `HomeEventRow` 위젯

**아이콘 매핑 예시**:
- `music_note_outlined` → `Icons.music_note_outlined`
- `theater_comedy` → `Icons.theater_comedy`
- `emoji_events_outlined` → `Icons.emoji_events_outlined`
- `palette_outlined` → `Icons.palette_outlined`

---

### 3. PopularTicket (인기 티켓)
현재 인기 있는 티켓 정보

| 필드 | 타입 | 필수 | 설명 |
|------|------|------|------|
| ticketId | int | ✅ | 티켓 고유 ID |
| ticketTitle | string | ✅ | 티켓 제목 |
| price | int | ✅ | 현재 판매가 (원) |
| originalPrice | int | ❌ | 원가 (할인 계산용) |
| discountRate | int | ❌ | 할인율 (%) |
| posterImageUrl | string | ❌ | 포스터 이미지 URL |
| eventTitle | string | ❌ | 공연/이벤트 제목 |
| eventDate | string | ✅ | 공연 날짜 (MM.DD 형식) |
| venue | string | ❌ | 공연 장소 |
| availableTicketCount | int | ❌ | 판매 가능한 티켓 수량 |
| isOnSale | boolean | ✅ | 판매 중 여부 |
| categoryId | int | ✅ | 카테고리 ID |

**UI 반영 위치**: `PopularTicketList` 위젯

**현재 하드코딩된 데이터**:
- ❌ `venue`: "서울 올림픽 경기장" → API에서 제공 필요
- ❌ `discountRate`: "-8%" → API에서 제공 필요
- ❌ `availableTicketCount`: "23장 판매중" → API에서 제공 필요

---

### 4. RecommendedEvent (추천 이벤트)
사용자 맞춤 추천 이벤트

| 필드 | 타입 | 필수 | 설명 |
|------|------|------|------|
| eventId | int | ✅ | 이벤트 고유 ID |
| eventTitle | string | ✅ | 이벤트 제목 |
| posterImageUrl | string | ✅ | 포스터 이미지 URL |
| eventDate | string | ✅ | 공연 날짜 (YYYY.MM.DD 형식) |
| venue | string | ❌ | 공연 장소 |
| ticketCount | int | ✅ | 해당 이벤트의 티켓 개수 |
| minPrice | int | ❌ | 최저 가격 |
| maxPrice | int | ❌ | 최고 가격 |
| categoryId | int | ✅ | 카테고리 ID |
| tags | string[] | ❌ | 이벤트 태그 (예: ["K-POP", "월드투어"]) |

**UI 반영 위치**: `RecommendedTicketList` 위젯

---

### 5. UpcomingEvent (다가오는 이벤트) - **신규 추가 제안**
임박한 공연 정보

| 필드 | 타입 | 필수 | 설명 |
|------|------|------|------|
| eventId | int | ✅ | 이벤트 고유 ID |
| eventTitle | string | ✅ | 이벤트 제목 |
| posterImageUrl | string | ✅ | 포스터 이미지 URL |
| eventDate | string | ✅ | 공연 날짜 (YYYY.MM.DD) |
| dDayCount | int | ✅ | D-Day 카운트 (음수면 지난 날) |
| venue | string | ❌ | 공연 장소 |
| categoryId | int | ✅ | 카테고리 ID |

**UI 제안**: 새로운 섹션 "🎫 곧 시작하는 공연" 추가

---

### 6. NewTicket (신규 등록 티켓) - **신규 추가 제안**
최근 등록된 티켓 정보

| 필드 | 타입 | 필수 | 설명 |
|------|------|------|------|
| ticketId | int | ✅ | 티켓 고유 ID |
| ticketTitle | string | ✅ | 티켓 제목 |
| price | int | ✅ | 판매가 |
| posterImageUrl | string | ❌ | 포스터 이미지 URL |
| eventTitle | string | ❌ | 공연 제목 |
| eventDate | string | ✅ | 공연 날짜 (MM.DD) |
| registeredAt | string | ✅ | 등록 시간 (ISO 8601) |
| sellerNickname | string | ❌ | 판매자 닉네임 |
| sellerRating | float | ❌ | 판매자 평점 (0.0 ~ 5.0) |

**UI 제안**: 새로운 섹션 "🆕 방금 올라온 티켓" 추가

---

## 에러 응답

### 401 Unauthorized
```json
{
  "message": "인증이 필요합니다.",
  "statusCode": 401
}
```

### 500 Internal Server Error
```json
{
  "message": "서버 오류가 발생했습니다.",
  "statusCode": 500
}
```

---

## 개선 사항 요약

### 1. 현재 누락된 필수 데이터
- ✅ **배너 데이터**: 현재 하드코딩된 배너 제목을 API로 제공
- ✅ **카테고리 데이터**: 카테고리 ID와 아이콘 정보 제공
- ✅ **장소 정보**: `venue` 필드 추가
- ✅ **할인 정보**: `originalPrice`, `discountRate` 필드 추가
- ✅ **재고 정보**: `availableTicketCount` 필드 추가

### 2. 추천 기능 개선
- ✅ **가격 범위**: `minPrice`, `maxPrice` 추가로 가격대 표시
- ✅ **태그 시스템**: 이벤트 특성을 나타내는 태그 제공

### 3. 신규 섹션 제안
- 🆕 **다가오는 이벤트**: D-Day 카운트로 긴박감 제공
- 🆕 **신규 등록 티켓**: 최신성 강조, 판매자 정보 제공

### 4. 데이터 정렬 및 필터링
- 모든 리스트는 서버에서 정렬되어 제공 (클라이언트 정렬 불필요)
- `displayOrder` 필드로 표시 순서 제어

---

## 구현 우선순위

### Phase 1 (필수) - 현재 UI 완성
1. ✅ `venue` 필드 추가
2. ✅ `discountRate`, `originalPrice` 추가
3. ✅ `availableTicketCount` 추가
4. ✅ `banners` 배열 제공
5. ✅ `categories` 배열 제공

### Phase 2 (권장) - 사용자 경험 개선
1. ✅ `tags` 추가 (추천 이벤트)
2. ✅ `minPrice`, `maxPrice` 추가
3. ✅ `linkUrl` 추가 (배너 클릭 동작)

### Phase 3 (선택) - 신규 기능
1. 🆕 `upcomingEvents` 섹션 추가
2. 🆕 `newTickets` 섹션 추가
3. 🆕 판매자 정보 (`sellerNickname`, `sellerRating`)

---

## 참고 사항

### 이미지 URL 규격
- **배너 이미지**: 1200x675px (16:9 비율)
- **포스터 이미지**: 400x600px (2:3 비율)
- 형식: JPEG, PNG, WebP
- 최대 용량: 2MB

### 날짜 형식
- **공연 날짜 (짧은 형식)**: `MM.DD` (예: "05.20")
- **공연 날짜 (긴 형식)**: `YYYY.MM.DD` (예: "2026.06.15")
- **등록 시간**: ISO 8601 형식 (예: "2026-01-05T10:30:00Z")

### 정렬 기준
- **인기 티켓**: 조회수 + 판매량 기반 알고리즘
- **추천 이벤트**: 사용자 선호도 기반 추천 알고리즘
- **다가오는 이벤트**: D-Day 오름차순
- **신규 티켓**: 등록 시간 내림차순

---

## 변경 이력

| 버전 | 날짜 | 변경 내용 |
|------|------|-----------|
| 1.0 | 2026-01-06 | 초안 작성 |
