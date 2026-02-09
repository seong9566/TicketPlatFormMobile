# 백엔드 응답: 프로필 수정 API

**날짜**: 2026-02-09
**응답자**: 백엔드 팀
**요청 문서**: `BACKEND_REQUEST_PROFILE_UPDATE.md`
**상태**: ✅ 구현 완료, 즉시 테스트 가능

---

## 📋 구현 완료 안내

프로필 수정 API가 **구현 완료**되었으며, Flutter 팀의 요구사항에 맞게 조정되었습니다.

- ✅ **배포 상태**: 개발 완료, 테스트 가능
- ✅ **API 엔드포인트**: `PUT /api/users/profile`
- ✅ **검증 규칙**: Flutter 요청 사항 완전 반영
- ✅ **파일 업로드**: Supabase Storage 통합 완료

---

## ✅ Flutter 팀 34개 질문 답변

### 🔴 1. API 엔드포인트 & 메서드 (Q1~Q3)

#### Q1: 엔드포인트가 `PUT /api/users/profile`이 맞나요?
**✅ Yes.** 정확히 일치합니다.

```
PUT http://192.168.2.1:5224/api/users/profile
```

#### Q2: HTTP 메서드가 `PUT`이 맞나요?
**✅ Yes.** `PUT` 메서드 사용합니다.

- 부분 업데이트(Partial Update) 지원
- 전송하지 않은 필드는 기존 값 유지

#### Q3: Content-Type이 `multipart/form-data`가 맞나요?
**✅ Yes.** `multipart/form-data` 필수입니다.

```http
Content-Type: multipart/form-data; boundary=----WebKitFormBoundary...
```

---

### 🔴 2. 닉네임 규칙 (Q4~Q9)

#### Q4: 닉네임 길이 제한은?
**✅ 2~20자** (Flutter 가정 일치)

- 최소: 2자
- 최대: 20자
- DB는 50자까지 지원하지만 비즈니스 로직에서 20자 제한

#### Q5: 특수문자 허용 여부는?
**일부 허용** (언더스코어, 하이픈만)

- **허용**: 한글(`가-힣`), 영문(`a-zA-Z`), 숫자(`0-9`), 언더스코어(`_`), 하이픈(`-`)
- **불허**: 공백, 이모지, 특수기호(`!@#$%^&*` 등)
- **정규식**: `^[가-힣a-zA-Z0-9_-]{2,20}$`

**예시**:
```
✅ 티켓마스터
✅ TicketMaster
✅ 티켓_Master
✅ Ticket-Master-01
❌ 티켓 마스터 (공백)
❌ 티켓@마스터 (특수문자)
❌ 티켓😀마스터 (이모지)
```

#### Q6: 대소문자 구분 여부는?
**구분하지 않음** (같은 닉네임으로 처리)

- DB Collation: `utf8mb4_0900_ai_ci` (Case-Insensitive)
- `User`와 `user`는 중복으로 판별

#### Q7: 공백 허용 여부는?
**불허**

- 정규식에서 공백 미포함
- 선/후행 공백은 `Trim()` 자동 제거

#### Q8: 연속된 특수문자 금지 여부는?
**허용**

- `user__123`, `a--b` 등 허용
- V1에서는 제한하지 않음

#### Q9: 한글/영문/숫자 외 다른 언어 허용 여부는?
**불허**

- 일본어, 중국어, 이모지 제외
- 한글, 영문, 숫자, 언더스코어, 하이픈만

---

### 🔴 3. 이미지 업로드 (Q10~Q15)

#### Q10: 허용 이미지 형식은?
**✅ JPEG, PNG, WebP, HEIC, HEIF, AVIF**

- 허용: `.jpg`, `.jpeg`, `.png`, `.webp`, `.heic`, `.heif`, `.avif`
- **이유**: iOS(HEIC/HEIF), Android(WebP), 웹(WebP/AVIF) 등 모바일 환경 고려
- **보안**: MagicBytes로 실제 파일 타입 검증 (확장자 위조 불가)

#### Q11: 최대 파일 크기는?
**✅ 5MB** (Flutter 가정 일치)

- Flutter에서 512x512, 80% 압축 적용 시 대부분 1MB 미만
- 5MB는 충분한 여유

#### Q12: 이미지 리사이징 처리는?
**클라이언트에서만** (Flutter에서 512x512)

- 백엔드에서는 리사이징하지 않음
- Flutter: `ImagePicker`로 512x512, 80% 품질 압축
- 서버 리소스 절약

#### Q13: 파일명 규칙은?
**백엔드에서 UUID 기반으로 재생성**

```
profiles/{userId}/{guid}.{ext}
```

**예시**: `profiles/123/a1b2c3d4e5f6789012345678abcdef01.jpg`

- `{userId}`: 사용자 ID
- `{guid}`: UUID (32자리)
- `{ext}`: `.jpg` 또는 `.png` (MagicBytes 감지)
- 클라이언트 파일명은 무시 (보안)

#### Q14: 이미지 업로드 스토리지는?
**Supabase Storage**

- 버킷명: `profile-image`
- 접근 제어: Private Bucket (Signed URL)

#### Q15: CDN URL 형식은?
**Supabase Signed URL**

```
https://nbtsfiwerdxprhsoidrm.supabase.co/storage/v1/object/sign/profile-image/profiles/123/abc123.jpg?token=eyJhbG...
```

---

### 🟡 4. 프로필 이미지 삭제 (Q16~Q18)

#### Q16: 이미지 삭제 시 `profileImageUrl` 값은?
**`null`**

- DB의 `profile_image_url` 컬럼이 `null`로 설정
- 기본 이미지 URL은 반환하지 않음
- **Flutter에서 `null`일 때 기본 아바타 표시 권장**

**응답 예시**:
```json
{
  "data": {
    "profileImageUrl": null
  }
}
```

#### Q17: 기존 이미지 파일 물리적 삭제 여부는?
**즉시 삭제**

- DB 저장 성공 후 Supabase Storage에서 삭제
- 삭제 실패 시 로그만 남기고 진행 (DB 정합성 우선)

#### Q18: 새 이미지 업로드 시 기존 이미지 처리는?
**자동 삭제**

- 새 이미지 업로드 및 DB 저장 성공 시 자동 삭제
- DB 저장 실패 시 새 이미지를 보상 삭제

---

### 🔴 5. 응답 데이터 (Q19~Q22)

#### Q19: 응답 형식이 Flutter 요청과 일치하나요?
**부분적으로 차이 있음** (합의 필요)

**현재 프로젝트 표준**:
```json
{
  "message": "프로필 수정 성공",
  "data": { ... },
  "statusCode": 200,
  "success": true
}
```

**Flutter 요청**:
```json
{
  "success": true,
  "data": { ... },
  "error": { "code": "...", "message": "...", "details": "..." },
  "timestamp": "2026-02-09T12:34:56.789Z"
}
```

**결정**: 현재 프로젝트의 `ApiResponse<T>` 패턴 유지

**이유**:
1. 프로젝트 전체에서 일관된 응답 형식 사용 중
2. 형식 변경 시 모든 기존 API에 영향
3. `error.code` 필드는 현재 미지원

**Flutter 대응 방법**:
- HTTP Status Code + `message` 필드로 에러 분류
- [에러 코드 매핑 표](#에러-코드-매핑-표) 참조

#### Q20: `profileImageUrl`이 Signed URL인가요?
**✅ Yes, Signed URL**

- Supabase Storage Private Bucket 사용
- 시간 제한 있는 Signed URL 반환

#### Q21: Signed URL 만료 시간은?
- **업로드 직후**: 1시간 (3600초)
- **조회/갱신 시**: 30분 (1800초)
- **갱신 API**: `POST /api/users/profile/image-refresh` (구현 완료)

#### Q22: `timestamp` 형식은?
**현재 응답에 `timestamp` 필드 없음**

- 필요 시 ISO 8601 형식 추가 가능
- Flutter 팀과 합의 후 적용

---

### 🟡 6. 에러 처리 (Q23~Q25)

#### Q23: 에러 코드 체계는 Flutter 요청과 일치하나요?
**HTTP Status Code는 일치, 커스텀 에러 코드는 다름**

**현재 응답**:
```json
{
  "message": "이미 사용 중인 닉네임입니다.",
  "data": null,
  "statusCode": 409,
  "success": false
}
```

**Flutter 대응**: HTTP Status + `message` 문자열로 에러 분류 ([매핑 표](#에러-코드-매핑-표) 참조)

#### Q24: 400 에러 시 구체적인 검증 실패 정보를 제공하나요?
**✅ Yes, `message` 필드에 제공**

**예시**:
- "닉네임은 2~20자 이내로 입력해주세요."
- "닉네임에 허용되지 않는 문자가 포함되어 있습니다."
- "프로필 이미지는 JPEG, PNG 형식만 지원합니다."

#### Q25: 409 에러(닉네임 중복) 시 추천 닉네임 제공 가능한가요?
**No, V1에서는 제공 안 함**

- 사용자가 직접 원하는 닉네임 선택이 더 나은 UX
- 향후 필요 시 추가 가능

---

### 🟢 7. 성능 및 제약 (Q26~Q28)

#### Q26: Rate Limit이 있나요?
**없음** (V1)

- 현재 Rate Limiting 미구현
- 향후 도입 검토 가능

#### Q27: 이미지 업로드 타임아웃은?
**30초**

- Polly Retry 정책 적용 (일시적 네트워크 장애 자동 재시도)

#### Q28: Multipart 요청 최대 크기는?
**10MB**

```csharp
options.MultipartBodyLengthLimit = 10 * 1024 * 1024; // 10MB
```

- 프로필 이미지(5MB) + 텍스트 필드 충분히 수용

---

### 🔴 8. 일정 관련 (Q29~Q31)

#### Q29: API 개발 완료 예정일은?
**✅ 이미 완료**

- 핵심 기능 구현 완료
- 검증 규칙 조정 완료 (2026-02-09)

#### Q30: 테스트 서버 배포 일정은?
**✅ 즉시 가능**

- 현재 개발 서버에서 테스트 가능
- 통합 테스트 진행 가능

#### Q31: 프로덕션 배포 예정일은?
**통합 테스트 완료 후 1~2일 내**

- Flutter 팀 검증 완료 후 즉시 배포 가능

---

### 🟢 9. 추가 확인 사항 (Q32~Q34)

#### Q32: 프로필 수정 이력 관리 여부는?
**이력 관리 안 함** (V1)

- 서버 로그(ILogger)에만 기록
- 향후 필요 시 `user_profile_history` 테이블 추가 가능

#### Q33: 프로필 수정 알림 발송 여부는?
**알림 발송 안 함**

- 본인이 직접 수행하는 행위이므로 알림 불필요

#### Q34: 닉네임 변경 횟수 제한이 있나요?
**없음** (V1)

- 자유롭게 변경 가능
- 향후 남용 방지 필요 시 "30일에 1회" 등 제한 추가 가능

---

## 📄 실제 응답 예시

### 성공 응답 - 닉네임 + 프로필 사진 변경 (200 OK)

**요청**:
```http
PUT /api/users/profile HTTP/1.1
Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
Content-Type: multipart/form-data; boundary=----WebKitFormBoundary7MA4YWxkTrZu0gW

------WebKitFormBoundary7MA4YWxkTrZu0gW
Content-Disposition: form-data; name="nickname"

티켓마스터
------WebKitFormBoundary7MA4YWxkTrZu0gW
Content-Disposition: form-data; name="profileImage"; filename="profile.jpg"
Content-Type: image/jpeg

<binary image data>
------WebKitFormBoundary7MA4YWxkTrZu0gW--
```

**응답**:
```json
{
  "message": "프로필 수정 성공",
  "data": {
    "userId": 123,
    "email": "user@example.com",
    "nickname": "티켓마스터",
    "profileImageUrl": "https://nbtsfiwerdxprhsoidrm.supabase.co/storage/v1/object/sign/profile-image/profiles/123/a1b2c3d4e5f6.jpg?token=eyJhbG...",
    "bio": "콘서트를 사랑하는 티켓 수집가입니다!",
    "mannerTemperature": 36.5,
    "totalTradeCount": 10
  },
  "statusCode": 200,
  "success": true
}
```

### 성공 응답 - 프로필 사진 삭제 (200 OK)

**요청**:
```http
PUT /api/users/profile HTTP/1.1
Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
Content-Type: multipart/form-data; boundary=----WebKitFormBoundary7MA4YWxkTrZu0gW

------WebKitFormBoundary7MA4YWxkTrZu0gW
Content-Disposition: form-data; name="removeProfileImage"

true
------WebKitFormBoundary7MA4YWxkTrZu0gW--
```

**응답**:
```json
{
  "message": "프로필 수정 성공",
  "data": {
    "userId": 123,
    "email": "user@example.com",
    "nickname": "티켓마스터",
    "profileImageUrl": null,
    "bio": null,
    "mannerTemperature": 36.5,
    "totalTradeCount": 10
  },
  "statusCode": 200,
  "success": true
}
```

---

## ❌ 에러 응답 예시

### 1. 닉네임 중복 (409 Conflict)

```json
{
  "message": "이미 사용 중인 닉네임입니다.",
  "data": null,
  "statusCode": 409,
  "success": false
}
```

### 2. 닉네임 길이 위반 (400 Bad Request)

```json
{
  "message": "닉네임은 2~20자 이내로 입력해주세요.",
  "data": null,
  "statusCode": 400,
  "success": false
}
```

### 3. 닉네임 형식 위반 (400 Bad Request)

```json
{
  "message": "닉네임에 허용되지 않는 문자가 포함되어 있습니다. (한글, 영문, 숫자, _, - 만 허용)",
  "data": null,
  "statusCode": 400,
  "success": false
}
```

### 4. 이미지 형식 오류 (400 Bad Request)

```json
{
  "message": "지원하지 않는 이미지 형식입니다. (허용: JPEG, PNG, WebP, HEIC, HEIF, AVIF)",
  "data": null,
  "statusCode": 400,
  "success": false
}
```

### 5. 이미지 크기 초과 (400 Bad Request)

```json
{
  "message": "프로필 이미지는 5MB 이하만 업로드 가능합니다.",
  "data": null,
  "statusCode": 400,
  "success": false
}
```

### 6. 자기소개 길이 초과 (400 Bad Request)

```json
{
  "message": "자기소개는 최대 200자까지 입력 가능합니다.",
  "data": null,
  "statusCode": 400,
  "success": false
}
```

### 7. 인증 오류 (401 Unauthorized)

```json
{
  "message": "사용자 인증 정보가 유효하지 않습니다.",
  "data": null,
  "statusCode": 401,
  "success": false
}
```

### 8. 서버 오류 (500 Internal Server Error)

```json
{
  "message": "서버 내부 오류 발생",
  "data": null,
  "statusCode": 500,
  "success": false
}
```

---

## 📊 에러 코드 매핑 표

Flutter 팀이 에러를 구분할 때 사용하는 매핑표입니다.

| HTTP Status | message (한글) | Flutter 에러 유형 |
|-------------|---------------|-----------------|
| **400** | "닉네임은 2~20자 이내로 입력해주세요." | `INVALID_NICKNAME` (길이) |
| **400** | "닉네임에 허용되지 않는 문자가 포함되어 있습니다." | `INVALID_NICKNAME` (형식) |
| **400** | "지원하지 않는 이미지 형식입니다. (허용: JPEG, PNG, WebP, HEIC, HEIF, AVIF)" | `INVALID_IMAGE_FORMAT` |
| **400** | "프로필 이미지는 5MB 이하만 업로드 가능합니다." | `IMAGE_TOO_LARGE` |
| **400** | "자기소개는 최대 200자까지 입력 가능합니다." | `INVALID_BIO` |
| **400** | "파일이 비어 있습니다." | `INVALID_REQUEST` |
| **401** | "사용자 인증 정보가 유효하지 않습니다." | `UNAUTHORIZED` |
| **409** | "이미 사용 중인 닉네임입니다." | `NICKNAME_ALREADY_EXISTS` |
| **413** | (Kestrel 서버 레벨) | `PAYLOAD_TOO_LARGE` |
| **500** | "서버 내부 오류 발생" | `INTERNAL_SERVER_ERROR` |
| **500** | "파일 업로드 중 오류가 발생했습니다." | `IMAGE_UPLOAD_FAILED` |

**Flutter 권장 패턴**:
```dart
if (statusCode == 409) {
  return ProfileUpdateError.nicknameAlreadyExists;
} else if (statusCode == 400) {
  if (message.contains("닉네임")) {
    return ProfileUpdateError.invalidNickname;
  } else if (message.contains("형식")) {
    return ProfileUpdateError.invalidImageFormat;
  } else if (message.contains("5MB")) {
    return ProfileUpdateError.imageTooLarge;
  }
}
```

---

## 📊 응답 필드 상세

### UserProfileDto

| 필드 | 타입 | Nullable | 설명 |
|------|------|----------|------|
| `userId` | `int` | No | 사용자 ID |
| `email` | `string` | No | 이메일 (변경 불가) |
| `nickname` | `string` | Yes | 닉네임 (2~20자) |
| `profileImageUrl` | `string` | Yes | 프로필 이미지 Signed URL |
| `bio` | `string` | Yes | 자기소개 (최대 200자) |
| `mannerTemperature` | `float` | Yes | 매너 온도 (기본값: 36.5) |
| `totalTradeCount` | `int` | Yes | 총 거래 횟수 (기본값: 0) |

**JSON serialization**: camelCase 자동 변환
- `userId` ← `UserId`
- `profileImageUrl` ← `ProfileImageUrl`

---

## 🔧 Signed URL 관리 가이드

### URL 만료 시간

| 상황 | 만료 시간 | 갱신 방법 |
|------|----------|----------|
| 프로필 수정 직후 | 1시간 | 자동 (응답에 포함) |
| 프로필 조회 시 | 30분 | 자동 (`GET /api/users/profile`) |
| URL 만료 시 | - | `POST /api/users/profile/image-refresh` |

### Flutter 권장 패턴

1. **프로필 화면 진입 시**:
   ```dart
   final profile = await getUserProfile(); // GET /api/users/profile
   ```

2. **이미지 로드 실패 시**:
   ```dart
   try {
     await loadImage(profile.profileImageUrl);
   } catch (e) {
     // 403/expired → 갱신 시도
     final refreshed = await refreshProfileImage(); // POST image-refresh
   }
   ```

3. **캐시 활용**:
   - 메모리에 `profileImageUrl` 저장
   - 25분 후 자동 갱신 (30분 만료 전)

---

## 📱 Flutter 통합 체크리스트

### API 호출 구현
- [ ] Authorization 헤더에 Bearer 토큰 포함
- [ ] `multipart/form-data` 인코딩 처리
- [ ] 이미지 선택 시 512x512, 80% 압축 적용

### 응답 처리
- [ ] `statusCode` + `message` 기반 에러 분류
- [ ] `profileImageUrl` null 처리 (기본 아바타 표시)
- [ ] Signed URL 만료 대응 (갱신 API 호출)

### 요청 검증 (클라이언트 측)
- [ ] 닉네임 2~20자 검증
- [ ] 닉네임 정규식 검증 (`^[가-힣a-zA-Z0-9_-]+$`)
- [ ] 자기소개 200자 검증
- [ ] 이미지 크기 5MB 검증 (업로드 전)
- [ ] 이미지 형식 검증 (JPEG/PNG/WebP/HEIC/HEIF/AVIF)
  - iOS HEIC는 자동 변환 또는 그대로 전송 가능

### 에러 처리
- [ ] 400: 파라미터 오류 메시지 표시
- [ ] 401: 로그인 화면으로 이동
- [ ] 409: 닉네임 중복 메시지 표시 ("다른 닉네임을 입력해주세요")
- [ ] 500: "서버 오류" 메시지 표시

### UI 구현
- [ ] 닉네임 입력 필드 (2~20자 안내)
- [ ] 자기소개 입력 필드 (200자 카운터)
- [ ] 프로필 사진 선택 버튼
- [ ] 프로필 사진 삭제 버튼
- [ ] 로딩 상태 표시
- [ ] 성공/실패 토스트 메시지

---

## 🚀 테스트 가이드

### Postman/cURL 테스트

**1. 닉네임만 변경**
```bash
curl -X PUT http://192.168.2.1:5224/api/users/profile \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -F "nickname=티켓마스터"
```

**2. 프로필 사진 업로드**
```bash
curl -X PUT http://192.168.2.1:5224/api/users/profile \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -F "profileImage=@/path/to/image.jpg"
```

**3. 닉네임 + 사진 동시 변경**
```bash
curl -X PUT http://192.168.2.1:5224/api/users/profile \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -F "nickname=새닉네임" \
  -F "profileImage=@/path/to/image.jpg"
```

**4. 프로필 사진 삭제**
```bash
curl -X PUT http://192.168.2.1:5224/api/users/profile \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -F "removeProfileImage=true"
```

### 테스트 시나리오

#### 정상 케이스
1. ✅ 닉네임만 변경 → 200 OK
2. ✅ 프로필 사진만 변경 → 200 OK
3. ✅ 닉네임 + 사진 동시 → 200 OK
4. ✅ 프로필 사진 삭제 → 200 OK, `profileImageUrl: null`
5. ✅ Bio만 변경 → 200 OK
6. ✅ PNG 이미지 업로드 → 200 OK
7. ✅ 닉네임 2자 (최소) → 200 OK
8. ✅ 닉네임 20자 (최대) → 200 OK
9. ✅ 한글+영문+숫자+특수문자 닉네임 (`티켓_Master-01`) → 200 OK

#### 에러 케이스
1. ❌ 닉네임 1자 → 400 "닉네임은 2~20자 이내로 입력해주세요."
2. ❌ 닉네임 21자 → 400 "닉네임은 2~20자 이내로 입력해주세요."
3. ❌ 닉네임 이모지 포함 → 400 "닉네임에 허용되지 않는 문자가 포함되어 있습니다."
4. ❌ 닉네임 공백 포함 → 400 "닉네임에 허용되지 않는 문자가 포함되어 있습니다."
5. ❌ 이미지 BMP/GIF → 400 "지원하지 않는 이미지 형식입니다. (허용: JPEG, PNG, WebP, HEIC, HEIF, AVIF)"
6. ❌ 이미지 6MB → 400 "프로필 이미지는 5MB 이하만 업로드 가능합니다."
7. ❌ Bio 201자 → 400 "자기소개는 최대 200자까지 입력 가능합니다."
8. ❌ 닉네임 중복 → 409 "이미 사용 중인 닉네임입니다."
9. ❌ 인증 토큰 없음 → 401 "사용자 인증 정보가 유효하지 않습니다."

---

## 🤝 Flutter 팀과 합의 필요 사항

다음 항목은 백엔드/Flutter 팀 간 협의가 필요합니다:

### 1. 응답 형식 차이 (우선순위: Medium)

**현재**: `{ message, data, statusCode, success }`
**Flutter 요청**: `{ success, data, error: { code, message, details }, timestamp }`

**제안**:
- 현재 형식 유지 (프로젝트 일관성)
- Flutter에서 `statusCode` + `message`로 에러 분기
- 향후 점진적 개선 검토

### 2. 에러 코드 체계 (우선순위: Low)

현재 `error.code` 필드 없음. Flutter 팀이 코드 기반 분기를 강하게 원할 경우, `ApiResponse<T>` 구조 변경 필요 (전체 API 영향).

### 3. timestamp 필드 (우선순위: Low)

필요 시 추가 가능하나 모든 API에 영향.

---


## 📚 관련 문서

- **요청 문서**: `BACKEND_REQUEST_PROFILE_UPDATE.md`
- **개발 계획서**: (senior-pm-planner 에이전트 출력)
- **API 명세**: Swagger UI (개발 서버)
- **Supabase Storage**: `appsettings.SupabaseStorage.json`

---

## 📋 변경 이력

| 날짜 | 변경 내용 | 작성자 |
|------|----------|--------|
| 2026-02-09 | 초안 작성, 34개 질문 답변 완료 | 백엔드 팀 |
| 2026-02-09 | 검증 규칙 조정 완료 (닉네임 2~20자, Bio 200자) | 백엔드 팀 |
| 2026-02-09 | 이미지 형식 확장 (JPEG/PNG/WebP/HEIC/HEIF/AVIF) - 모바일 환경 고려 | 백엔드 팀 |

---

**문서 버전**: 1.0
**최종 수정일**: 2026-02-09
**작성자**: 백엔드 팀
**상태**: ✅ 완료, 테스트 가능
