# 프로필 이미지 URL 갱신 API 명세서

## 개요
만료된 Supabase Signed URL을 갱신하기 위한 API입니다.

**기본 URL**: `/api/users`  
**인증**: 필요 (Bearer Token)  
**응답 형식**: JSON (ApiResponse<T> 래퍼 사용)

---

## API 엔드포인트

### 프로필 이미지 URL 갱신

**Endpoint**: `POST /api/users/profile/image-refresh`

**Headers**:
| 헤더 | 값 | 설명 |
|------|-----|------|
| Authorization | Bearer {accessToken} | 필수 |

**Request Body**:
| 필드 | 타입 | 필수 | 설명 |
|------|------|------|------|
| userId | integer | 선택 | 대상 사용자 ID (null이면 본인) |

**Success Response (200)**:
```json
{
  "message": "이미지 URL 갱신 성공",
  "data": {
    "profileImageUrl": "https://...새로운-signed-url..."
  },
  "statusCode": 200,
  "success": true
}
```

**Response Fields**:
| 필드 | 타입 | 설명 |
|------|------|------|
| profileImageUrl | string \| null | 새로 발급된 Signed URL (이미지 없으면 null) |

---

## Error Responses

1. **인증 실패 (401)**:
- 응답 바디 없음 (미들웨어 기본 응답)

2. **사용자를 찾을 수 없음 (404)**:
```json
{
  "message": "사용자를 찾을 수 없습니다.",
  "data": null,
  "statusCode": 404,
  "success": false
}
```

3. **프로필 이미지 없음 (200, null 반환)**:
```json
{
  "message": "프로필 이미지가 없습니다.",
  "data": {
    "profileImageUrl": null
  },
  "statusCode": 200,
  "success": true
}
```

---

## 사용 예시

### cURL
```bash
# 본인 프로필 이미지 URL 갱신
curl -X POST "http://localhost:5000/api/users/profile/image-refresh" \
  -H "Authorization: Bearer {accessToken}" \
  -H "Content-Type: application/json"

# 다른 사용자 프로필 이미지 URL 갱신
curl -X POST "http://localhost:5000/api/users/profile/image-refresh" \
  -H "Authorization: Bearer {accessToken}" \
  -H "Content-Type: application/json" \
  -d '{"userId": 15}'
```

### Flutter (Dart)
```dart
Future<String?> refreshProfileImageUrl({int? userId}) async {
  final response = await dio.post(
    '/api/users/profile/image-refresh',
    data: userId != null ? {'userId': userId} : null,
  );
  return response.data['data']['profileImageUrl'];
}
```

---

## 구현 요청 사항

1. **Signed URL 만료 시간**: 최소 1시간 이상 (권장: 24시간)
2. **Object Key 저장**: DB에는 object key만 저장하고, API 응답 시 Signed URL 생성
3. **캐싱 고려**: 동일 요청 시 기존 유효한 URL 반환 가능

---

## 클라이언트 사용 시나리오

```
1. 프로필 조회 → profileImageUrl 받음
2. CachedNetworkImage로 이미지 로드 시도
3. 이미지 로드 실패 (401/403 등)
4. image-refresh API 호출
5. 새 URL로 이미지 다시 로드
```
