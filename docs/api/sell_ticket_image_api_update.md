# 티켓 판매 이미지 기능 API 업데이트

## 개요

티켓 판매 기능에 Supabase Storage 기반 이미지 처리가 추가되었습니다. 이제 티켓 등록 시 이미지 업로드가 가능하며, 등록된 이미지는 Signed URL로 제공됩니다.

**업데이트 날짜**: 2026-01-14
**버전**: v2.1

---

## 변경 사항 요약

### 📊 통계
- **수정된 엔드포인트**: 2개
- **추가된 엔드포인트**: 1개
- **총 변경된 엔드포인트**: 3개

### 주요 변경사항
1. ✅ **POST /api/sell/tickets** - 응답에 업로드된 이미지 정보 추가
2. ✅ **GET /api/sell/my-tickets** - 썸네일 URL 실제 동작 (기존 TODO 구현 완료)
3. 🆕 **GET /api/sell/tickets/images/refresh** - 이미지 URL 재발급 엔드포인트 추가

---

## 1. 티켓 등록 API (이미지 업로드)

### `POST /api/sell/tickets`

**변경 내용**: 응답에 업로드된 이미지 정보 추가

#### Before (기존)
```json
{
  "message": "티켓 판매 등록 성공",
  "data": {
    "ticketId": 123,
    "status": "pending_review",
    "message": "티켓 판매 등록이 완료되었습니다. 검수 후 판매가 시작됩니다."
  },
  "statusCode": 200
}
```

#### After (변경 후)
```json
{
  "message": "티켓 판매 등록 성공",
  "data": {
    "ticketId": 123,
    "status": "pending_review",
    "message": "티켓 판매 등록이 완료되었습니다. 검수 후 판매가 시작됩니다.",
    "images": [
      {
        "imageId": 456,
        "imageUrl": "https://nbtsfiwerdxprhsoidrm.supabase.co/storage/v1/object/sign/chat-images/tickets/123/abc123.jpg?token=...",
        "expiresAt": "2026-01-14T15:30:00Z"
      },
      {
        "imageId": 457,
        "imageUrl": "https://nbtsfiwerdxprhsoidrm.supabase.co/storage/v1/object/sign/chat-images/tickets/123/def456.jpg?token=...",
        "expiresAt": "2026-01-14T15:30:00Z"
      }
    ]
  },
  "statusCode": 200
}
```

#### Request 예시

**cURL**
```bash
curl -X POST "http://localhost:5224/api/sell/tickets" \
  -H "Authorization: Bearer {token}" \
  -F "EventId=1" \
  -F "ScheduleId=schedule123" \
  -F "SeatInfo=A구역 5열 12번" \
  -F "Quantity=2" \
  -F "Price=80000" \
  -F "OriginalPrice=100000" \
  -F "Images=@image1.jpg" \
  -F "Images=@image2.jpg"
```

#### 클라이언트 코드 예시


**Dart/Flutter**
```dart
Future<CreateTicketResponse> createTicket(
  CreateTicketRequest request,
  List<File> images,
) async {
  final uri = Uri.parse('$baseUrl/api/sell/tickets');

  var multipartRequest = http.MultipartRequest('POST', uri);
  multipartRequest.headers['Authorization'] = 'Bearer $token';

  // 티켓 정보 추가
  multipartRequest.fields['EventId'] = request.eventId.toString();
  multipartRequest.fields['ScheduleId'] = request.scheduleId;
  multipartRequest.fields['SeatInfo'] = request.seatInfo;
  multipartRequest.fields['Quantity'] = request.quantity.toString();
  multipartRequest.fields['Price'] = request.price.toString();
  multipartRequest.fields['OriginalPrice'] = request.originalPrice.toString();

  // 이미지 추가 (최대 5개)
  for (var image in images.take(5)) {
    multipartRequest.files.add(
      await http.MultipartFile.fromPath('Images', image.path),
    );
  }

  final streamedResponse = await multipartRequest.send();
  final response = await http.Response.fromStream(streamedResponse);

  if (response.statusCode == 200) {
    final json = jsonDecode(response.body);
    final result = CreateTicketResponse.fromJson(json['data']);

    // 이미지 정보 활용
    if (result.images != null && result.images!.isNotEmpty) {
      print('업로드된 이미지: ${result.images!.length}개');
      for (var img in result.images!) {
        print('이미지 ID: ${img.imageId}, URL: ${img.imageUrl}');
        print('만료 시간: ${img.expiresAt}');
      }
    }

    return result;
  } else {
    throw Exception('티켓 등록 실패');
  }
}
```

#### DTO 정의

**Dart**
```dart
class CreateTicketResponse {
  final int ticketId;
  final String status;
  final String message;
  final List<TicketImage>? images;  // 새로 추가된 필드

  CreateTicketResponse({
    required this.ticketId,
    required this.status,
    required this.message,
    this.images,
  });

  factory CreateTicketResponse.fromJson(Map<String, dynamic> json) {
    return CreateTicketResponse(
      ticketId: json['ticketId'],
      status: json['status'],
      message: json['message'],
      images: json['images'] != null
          ? (json['images'] as List)
              .map((img) => TicketImage.fromJson(img))
              .toList()
          : null,
    );
  }
}

class TicketImage {
  final int imageId;
  final String imageUrl;
  final DateTime expiresAt;

  TicketImage({
    required this.imageId,
    required this.imageUrl,
    required this.expiresAt,
  });

  factory TicketImage.fromJson(Map<String, dynamic> json) {
    return TicketImage(
      imageId: json['imageId'],
      imageUrl: json['imageUrl'],
      expiresAt: DateTime.parse(json['expiresAt']),
    );
  }
}
```

#### 이미지 업로드 제약사항

| 항목 | 제약 |
|------|------|
| **최대 개수** | 5개 |
| **허용 형식** | .jpg, .jpeg, .png, .gif, .webp |
| **최대 크기** | 10MB (파일당) |
| **검증** | Magic bytes 검증 (파일 내용과 확장자 일치 확인) |

---

## 2. 내 티켓 목록 API (썸네일 추가)

### `GET /api/sell/my-tickets`

**변경 내용**: `thumbnailUrl` 필드가 실제 값을 반환하도록 구현 완료

#### Before (기존)
```json
{
  "message": "내 판매 티켓 목록 조회 성공",
  "data": {
    "tickets": [
      {
        "ticketId": 123,
        "title": "아이유 콘서트 - 2026-01-15",
        "thumbnailUrl": null,  // 항상 null
        "price": 80000,
        "originalPrice": 100000,
        "status": "pending_review"
      }
    ],
    "totalCount": 1,
    "totalPages": 1
  },
  "statusCode": 200
}
```

#### After (변경 후)
```json
{
  "message": "내 판매 티켓 목록 조회 성공",
  "data": {
    "tickets": [
      {
        "ticketId": 123,
        "title": "아이유 콘서트 - 2026-01-15",
        "thumbnailUrl": "https://nbtsfiwerdxprhsoidrm.supabase.co/storage/v1/object/sign/chat-images/tickets/123/abc123.jpg?token=...",
        "price": 80000,
        "originalPrice": 100000,
        "status": "pending_review"
      }
    ],
    "totalCount": 1,
    "totalPages": 1
  },
  "statusCode": 200
}
```

#### 클라이언트 코드 예시

**Dart/Flutter**
```dart
Future<MyTicketsResponse> getMyTickets({int page = 1, int pageSize = 10}) async {
  final uri = Uri.parse('$baseUrl/api/sell/my-tickets').replace(
    queryParameters: {
      'page': page.toString(),
      'pageSize': pageSize.toString(),
    },
  );

  final response = await http.get(
    uri,
    headers: {'Authorization': 'Bearer $token'},
  );

  if (response.statusCode == 200) {
    final json = jsonDecode(response.body);
    final result = MyTicketsResponse.fromJson(json['data']);

    // 썸네일 이미지 활용
    for (var ticket in result.tickets) {
      if (ticket.thumbnailUrl != null) {
        print('티켓 ${ticket.ticketId} 썸네일: ${ticket.thumbnailUrl}');
        // NetworkImage(ticket.thumbnailUrl!)
      }
    }

    return result;
  } else {
    throw Exception('티켓 목록 조회 실패');
  }
}
```

#### 주의사항

- **썸네일 = 첫 번째 이미지**: 티켓에 업로드된 첫 번째 이미지가 썸네일로 사용됩니다
- **이미지 없는 경우**: `thumbnailUrl`이 `null`일 수 있으므로 null 체크 필요
- **URL 만료**: Signed URL은 1800초(30분) 후 만료됩니다

---

## 3. 이미지 URL 재발급 API (신규)

### `GET /api/sell/tickets/images/refresh` 🆕

**설명**: 만료된 이미지 URL을 재발급받습니다.

#### Request

```
GET /api/sell/tickets/images/refresh?ticketId={ticketId}
Authorization: Bearer {token}
```

**Query Parameters**

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ticketId | int | O | 티켓 ID |

#### Response `200 OK`

```json
{
  "message": "티켓 이미지 URL 재발급 성공",
  "data": {
    "images": [
      {
        "imageId": 456,
        "imageUrl": "https://nbtsfiwerdxprhsoidrm.supabase.co/storage/v1/object/sign/chat-images/tickets/123/abc123.jpg?token=...",
        "expiresAt": "2026-01-14T16:00:00Z"
      },
      {
        "imageId": 457,
        "imageUrl": "https://nbtsfiwerdxprhsoidrm.supabase.co/storage/v1/object/sign/chat-images/tickets/123/def456.jpg?token=...",
        "expiresAt": "2026-01-14T16:00:00Z"
      }
    ]
  },
  "statusCode": 200
}
```

#### Error Responses

**403 Forbidden** - 권한 없음 (다른 사용자의 티켓)
```json
{
  "message": "티켓에 접근할 권한이 없습니다.",
  "data": null,
  "statusCode": 403
}
```

**404 Not Found** - 티켓 없음
```json
{
  "message": "티켓을 찾을 수 없습니다.",
  "data": null,
  "statusCode": 404
}
```

#### 클라이언트 코드 예시


**Dart/Flutter**
```dart
Future<List<TicketImage>> refreshTicketImageUrls(int ticketId) async {
  final uri = Uri.parse('$baseUrl/api/sell/tickets/images/refresh')
      .replace(queryParameters: {'ticketId': ticketId.toString()});

  final response = await http.get(
    uri,
    headers: {'Authorization': 'Bearer $token'},
  );

  if (response.statusCode == 403) {
    throw Exception('이 티켓에 접근할 권한이 없습니다.');
  }

  if (response.statusCode == 404) {
    throw Exception('티켓을 찾을 수 없습니다.');
  }

  if (response.statusCode == 200) {
    final json = jsonDecode(response.body);
    final images = (json['data']['images'] as List)
        .map((img) => TicketImage.fromJson(img))
        .toList();

    // 새로운 URL로 이미지 업데이트
    for (var img in images) {
      print('이미지 ${img.imageId} 새 URL: ${img.imageUrl}');
      print('새 만료 시간: ${img.expiresAt}');
    }

    return images;
  } else {
    throw Exception('이미지 URL 재발급 실패');
  }
}

// 자동 갱신 예시
class TicketImageManager {
  Timer? _refreshTimer;

  void startAutoRefresh(int ticketId, List<TicketImage> images) {
    // 만료 5분 전에 자동 갱신
    final nextRefresh = _getNextRefreshTime(images);
    final delay = nextRefresh.difference(DateTime.now());

    _refreshTimer = Timer(delay, () async {
      final newImages = await refreshTicketImageUrls(ticketId);
      startAutoRefresh(ticketId, newImages);
    });
  }

  DateTime _getNextRefreshTime(List<TicketImage> images) {
    final earliestExpiry = images
        .map((img) => img.expiresAt)
        .reduce((a, b) => a.isBefore(b) ? a : b);

    // 만료 5분 전
    return earliestExpiry.subtract(Duration(minutes: 5));
  }

  void stopAutoRefresh() {
    _refreshTimer?.cancel();
  }
}
```

---

## Signed URL 만료 시간

| 상황 | 만료 시간 |
|------|----------|
| **티켓 등록 직후** | 3600초 (1시간) |
| **목록 조회 시** | 1800초 (30분) |
| **URL 재발급 시** | 1800초 (30분) |

### 만료 처리 권장사항

1. **클라이언트 캐싱**: `expiresAt` 시간을 확인하여 만료 전까지 캐싱
2. **자동 갱신**: 만료 5분 전 자동으로 재발급 API 호출
3. **에러 처리**: 이미지 로드 실패 시 재발급 API 호출

---

## 마이그레이션 가이드

### 1. 티켓 등록 화면 업데이트

**변경 전**
```typescript
// 응답에서 ticketId만 사용
const response = await createTicket(ticketData, images);
console.log('생성된 티켓 ID:', response.data.ticketId);
```

**변경 후**
```typescript
// 응답에서 이미지 정보도 활용
const response = await createTicket(ticketData, images);
console.log('생성된 티켓 ID:', response.data.ticketId);

if (response.data.images) {
  // 업로드된 이미지 미리보기 표시
  displayUploadedImages(response.data.images);

  // 이미지 URL 저장 (필요시)
  storeImageUrls(response.data.ticketId, response.data.images);
}
```

### 2. 티켓 목록 화면 업데이트

**변경 전**
```typescript
// 썸네일이 항상 null이므로 기본 이미지 표시
<img src={ticket.thumbnailUrl || '/default-ticket.png'} />
```

**변경 후**
```typescript
// 실제 썸네일 또는 기본 이미지 표시
<img
  src={ticket.thumbnailUrl || '/default-ticket.png'}
  alt={ticket.title}
  onError={(e) => {
    // URL 만료 시 재발급 시도
    handleImageError(ticket.ticketId, e);
  }}
/>

async function handleImageError(ticketId: number, e: Event) {
  try {
    const images = await refreshTicketImageUrls(ticketId);
    if (images.length > 0) {
      (e.target as HTMLImageElement).src = images[0].imageUrl;
    }
  } catch (error) {
    console.error('이미지 재발급 실패:', error);
    (e.target as HTMLImageElement).src = '/default-ticket.png';
  }
}
```

### 3. 이미지 갤러리 추가 (선택사항)

티켓 상세 화면에서 모든 이미지를 보여주는 갤러리를 추가할 수 있습니다:

```typescript
async function loadTicketImages(ticketId: number) {
  try {
    const response = await refreshTicketImageUrls(ticketId);
    const images = response.data.images;

    // 갤러리 UI 표시
    renderImageGallery(images);

    // 자동 갱신 시작
    const manager = new TicketImageManager();
    manager.startAutoRefresh(ticketId, images);

    return images;
  } catch (error) {
    console.error('이미지 로드 실패:', error);
    return [];
  }
}
```

---

## 테스트 체크리스트

### 티켓 등록 (POST /api/sell/tickets)

- [ ] **이미지 없이 등록**: `images` 필드가 `null` 또는 빈 배열
- [ ] **이미지 1개 등록**: `images` 배열에 1개 항목
- [ ] **이미지 5개 등록**: `images` 배열에 5개 항목 (최대)
- [ ] **이미지 6개 등록 시도**: 400 에러 (최대 5개 초과)
- [ ] **잘못된 파일 형식**: 400 에러 (.txt, .pdf 등)
- [ ] **10MB 초과 파일**: 400 에러
- [ ] **ImageUrl 접근**: 반환된 URL로 이미지 다운로드 가능
- [ ] **ExpiresAt 확인**: 미래 시간 (약 1시간 후)

### 티켓 목록 (GET /api/sell/my-tickets)

- [ ] **이미지 있는 티켓**: `thumbnailUrl`이 유효한 URL
- [ ] **이미지 없는 티켓**: `thumbnailUrl`이 `null`
- [ ] **썸네일 표시**: 반환된 URL로 이미지 표시 가능
- [ ] **URL 만료 후**: 이미지 로드 실패 시 재발급 API 호출

### 이미지 URL 재발급 (GET /api/sell/tickets/images/refresh)

- [ ] **본인 티켓**: 성공 (200)
- [ ] **타인 티켓**: 실패 (403 Forbidden)
- [ ] **존재하지 않는 티켓**: 실패 (404 Not Found)
- [ ] **이미지 없는 티켓**: 빈 배열 반환
- [ ] **새 URL 유효성**: 반환된 URL로 이미지 접근 가능
- [ ] **만료 시간 확인**: `expiresAt`이 미래 시간 (약 30분 후)

---

## FAQ

### Q1. 이미지 URL이 왜 계속 바뀌나요?

**A**: Supabase Storage의 Signed URL 방식을 사용하기 때문입니다. 보안을 위해 URL에 임시 토큰이 포함되며, 일정 시간(30분) 후 만료됩니다. 만료된 URL은 재발급 API를 통해 갱신할 수 있습니다.

### Q2. 이미지를 영구적으로 캐싱할 수 있나요?

**A**: URL은 만료되지만, 이미지 자체를 다운로드하여 로컬에 캐싱할 수 있습니다. 단, `expiresAt` 시간을 확인하여 만료 전까지만 캐싱하고, 만료 후에는 재발급 API를 호출하세요.

### Q3. 이미지 순서가 중요한가요?

**A**: 네, 첫 번째 이미지가 썸네일로 사용됩니다. 티켓 등록 시 이미지 순서를 고려하여 업로드하세요.

### Q4. 이미지 없이도 티켓을 등록할 수 있나요?

**A**: 네, 이미지는 선택사항입니다. 이미지 없이 등록 시 `images` 필드가 `null` 또는 빈 배열로 반환됩니다.

### Q5. 이미지 로드 실패 시 어떻게 처리하나요?

**A**:
1. 먼저 재발급 API (`/api/sell/tickets/images/refresh`)를 호출합니다
2. 재발급도 실패하면 기본 이미지를 표시합니다
3. 사용자에게 "이미지를 불러올 수 없습니다" 메시지를 표시합니다

