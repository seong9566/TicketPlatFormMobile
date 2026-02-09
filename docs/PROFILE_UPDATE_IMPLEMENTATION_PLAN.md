# 프로필 수정 기능 완성 구현 계획서

> **날짜**: 2026-02-09  
> **Flutter Team**  
> **목적**: 프로필 수정 기능 (닉네임, 사진) 완성을 위한 상세 계획

---

## 📋 목차

1. [개요](#개요)
2. [현재 구현 상태](#현재-구현-상태)
3. [구현 계획](#구현-계획)
4. [작업 순서](#작업-순서)
5. [테스트 계획](#테스트-계획)
6. [백엔드 대응 사항](#백엔드-대응-사항)

---

## 개요

### 목표
사용자 프로필 수정 기능(닉네임, 프로필 사진) 완성 및 백엔드 API 연동

### 범위
- **수정 가능 항목**: 닉네임, 프로필 사진
- **수정 불가 항목**: 이메일 (회원가입 시 고정)
- **추가 확장**: 자기소개(bio) - API는 지원하나 UI는 추후 구현

### 아키텍처
```
View (ProfileEditView)
  ↓
ViewModel (ProfileEditViewModel)
  ↓
UseCase (UpdateMyProfileUsecase)
  ↓
Repository (ProfileRepositoryImpl)
  ↓
DataSource (ProfileRemoteDataSourceImpl)
  ↓
API (PUT /api/users/profile)
```

---

## 현재 구현 상태

### ✅ 완료된 항목

#### 1. **UI Layer**
- **파일**: `lib/features/profile/presentation/views/profile_edit_view.dart`
- **상태**:
  - ✅ 프로필 이미지 선택 UI (`ImagePicker`)
  - ✅ 닉네임 입력 필드 (2~20자 제약)
  - ✅ 이메일 표시 (Read-only)
  - ✅ 저장 버튼 (로딩 상태 처리)
  - ✅ 닉네임 글자 수 실시간 표시
  - ✅ 이미지 리사이징 (512x512, 80% 품질)

#### 2. **ViewModel Layer**
- **파일**: `lib/features/profile/presentation/viewmodels/profile_edit_viewmodel.dart`
- **상태**:
  - ✅ `updateProfile()` 메서드 구현
  - ✅ 로딩 상태 관리
  - ✅ 에러 처리 (409/400 상태 코드)
  - ✅ 성공 시 메인 프로필 새로고침 (`ref.invalidate`)

#### 3. **Domain Layer**
- **파일**: `lib/features/profile/domain/usecases/update_my_profile_usecase.dart`
- **상태**:
  - ✅ `call()` 메서드 구현
  - ✅ Repository 인터페이스 호출

#### 4. **Data Layer**
- **파일**: `lib/features/profile/data/repositories/profile_repository_impl.dart`
- **상태**:
  - ✅ `updateProfile()` 구현
  - ✅ DTO → Entity 변환
  - ✅ 에러 로깅

- **파일**: `lib/features/profile/data/datasources/profile_remote_data_source.dart`
- **상태**:
  - ✅ `updateMyProfile()` 구현
  - ✅ Multipart FormData 전송
  - ✅ `safeApiCall` 래핑

#### 5. **DTO Layer**
- **파일**: `lib/features/profile/data/dto/request/update_profile_req_dto.dart`
- **상태**:
  - ✅ `toFormData()` 메서드 구현
  - ✅ Multipart 변환 로직
  - ✅ 이미지 바이트 변환

- **파일**: `lib/features/profile/data/dto/response/my_profile_resp_dto.dart`
- **상태**:
  - ✅ Freezed 모델
  - ✅ `fromJson()` 구현
  - ✅ `toEntity()` extension

---

### ❓ 확인 필요 항목

#### 1. **API 엔드포인트**
- **현재**: `PUT /api/users/profile`
- **확인 필요**: 백엔드 실제 엔드포인트 일치 여부

#### 2. **응답 형식**
- **현재 가정**:
```json
{
  "success": true,
  "data": {
    "userId": 123,
    "email": "user@example.com",
    "nickname": "티켓마스터",
    "profileImageUrl": "https://cdn.example.com/...",
    "bio": null,
    "mannerTemperature": 36.5,
    "totalTradeCount": 0
  }
}
```
- **확인 필요**: 백엔드 실제 응답 형식

#### 3. **에러 코드**
- **현재 처리**:
  - 409: 닉네임 중복
  - 400: 입력값 오류
- **확인 필요**: 백엔드 에러 코드 체계

---

## 구현 계획

### Phase 1: 백엔드 API 명세 확인 (블로킹)

#### 작업 내용
1. 백엔드팀에 API 요구사항 명세서 전달
   - **문서**: `docs/api/BACKEND_REQUEST_PROFILE_UPDATE.md`
2. 백엔드팀에 질문 리스트 전달
   - **문서**: `docs/api/BACKEND_QUESTIONS_PROFILE_UPDATE.md`
3. 백엔드 응답 대기

#### 담당자
- Flutter Team: 문서 작성 완료 (2026-02-09)
- Backend Team: 답변 대기

#### 예상 소요 시간
- 백엔드 답변: 1~2 영업일

---

### Phase 2: 백엔드 응답 반영 (백엔드 답변 후)

#### 작업 내용
백엔드 답변에 따라 다음 항목 수정:

##### 2.1. API 엔드포인트 확정
- **파일**: `lib/core/network/api_endpoint.dart`
- **작업**: `myProfile` 엔드포인트 검증/수정
- **예상 시간**: 5분

##### 2.2. DTO 수정 (필요 시)
- **파일**: `lib/features/profile/data/dto/request/update_profile_req_dto.dart`
- **작업**: 백엔드 요구사항에 맞춰 필드 추가/수정
- **예상 시간**: 10분

##### 2.3. 응답 DTO 수정 (필요 시)
- **파일**: `lib/features/profile/data/dto/response/my_profile_resp_dto.dart`
- **작업**: 백엔드 응답 형식에 맞춰 필드 수정
- **예상 시간**: 10분

##### 2.4. 에러 처리 로직 수정
- **파일**: `lib/features/profile/presentation/viewmodels/profile_edit_viewmodel.dart`
- **작업**: `_getErrorMessage()` 메서드 수정 (백엔드 에러 코드 반영)
- **예상 시간**: 15분

---

### Phase 3: 백엔드 연동 테스트

#### 작업 내용

##### 3.1. 정상 케이스 테스트
1. **닉네임만 변경**
   - 입력: `nickname=티켓마스터`
   - 예상 결과: 200 OK, 수정된 닉네임 반환
2. **프로필 사진만 변경**
   - 입력: `profileImage=<이미지 파일>`
   - 예상 결과: 200 OK, 새 이미지 URL 반환
3. **닉네임 + 프로필 사진 동시 변경**
   - 입력: `nickname=티켓마스터` + `profileImage=<이미지 파일>`
   - 예상 결과: 200 OK, 모두 수정됨
4. **프로필 사진 삭제**
   - 입력: `removeProfileImage=true`
   - 예상 결과: 200 OK, `profileImageUrl=null` or 기본 이미지

##### 3.2. 에러 케이스 테스트
1. **닉네임 중복**
   - 입력: 이미 존재하는 닉네임
   - 예상 결과: 409, `NICKNAME_ALREADY_EXISTS`
2. **닉네임 길이 제약 위반**
   - 입력: 21자 닉네임
   - 예상 결과: 400, `INVALID_NICKNAME`
3. **이미지 형식 오류**
   - 입력: GIF 파일
   - 예상 결과: 400, `INVALID_IMAGE_FORMAT`
4. **이미지 크기 초과**
   - 입력: 6MB 이미지
   - 예상 결과: 400, `IMAGE_TOO_LARGE`
5. **인증 토큰 만료**
   - 입력: 만료된 토큰
   - 예상 결과: 401, `UNAUTHORIZED`

##### 3.3. 통합 테스트
1. **프로필 수정 후 조회**
   - 수정 → 프로필 조회 → 변경사항 확인
2. **다른 화면 연동 확인**
   - 프로필 수정 → 홈 화면/거래 내역에서 닉네임 업데이트 확인
3. **이미지 캐싱 확인**
   - 이미지 변경 → 캐시 무효화 → 새 이미지 표시

#### 담당자
- Flutter Team: 테스트 실행
- Backend Team: 테스트 서버 제공

#### 예상 소요 시간
- 정상 케이스: 30분
- 에러 케이스: 30분
- 통합 테스트: 1시간
- **총**: 2시간

---

### Phase 4: 추가 개선 사항 (Optional)

#### 4.1. 닉네임 중복 실시간 검증
- **목표**: 닉네임 입력 중 실시간으로 중복 확인
- **API**: `GET /api/users/check-nickname?nickname=xxx` (백엔드 확인 필요)
- **구현**:
  - `TextEditingController.addListener()` + debounce
  - 중복 시 빨간색 경고 메시지 표시
- **예상 시간**: 1시간

#### 4.2. 이미지 크롭 기능
- **목표**: 이미지 선택 후 크롭 UI 제공
- **라이브러리**: `image_cropper` 패키지
- **구현**: 이미지 선택 → 크롭 화면 → 저장
- **예상 시간**: 2시간

#### 4.3. 프로필 수정 이력 보기
- **목표**: 사용자가 과거 프로필 변경 내역 확인
- **API**: `GET /api/users/profile/history` (백엔드 확인 필요)
- **구현**: 별도 화면에서 히스토리 목록 표시
- **예상 시간**: 3시간

#### 4.4. 자기소개(bio) UI 추가
- **목표**: 자기소개 입력 필드 추가
- **API**: 이미 지원 중 (DTO에 `bio` 필드 존재)
- **구현**: TextField 추가 (200자 제한)
- **예상 시간**: 30분

---

## 작업 순서

### 우선순위 1 (필수)

| 순서 | Phase | 작업 | 담당 | 예상 시간 |
|------|-------|------|------|-----------|
| 1 | Phase 1 | 백엔드 API 명세 확인 | Flutter Team → Backend Team | 1~2일 |
| 2 | Phase 2 | 백엔드 응답 반영 | Flutter Team | 40분 |
| 3 | Phase 3 | 백엔드 연동 테스트 | Flutter Team + Backend Team | 2시간 |

**총 예상 시간**: 백엔드 응답 대기 시간 제외 시 **약 3시간**

### 우선순위 2 (선택)

| 순서 | Phase | 작업 | 담당 | 예상 시간 |
|------|-------|------|------|-----------|
| 4 | Phase 4.1 | 닉네임 중복 실시간 검증 | Flutter Team | 1시간 |
| 5 | Phase 4.4 | 자기소개(bio) UI 추가 | Flutter Team | 30분 |
| 6 | Phase 4.2 | 이미지 크롭 기능 | Flutter Team | 2시간 |
| 7 | Phase 4.3 | 프로필 수정 이력 보기 | Flutter Team | 3시간 |

**총 예상 시간**: **약 6.5시간**

---

## 테스트 계획

### 단위 테스트

#### 1. **ViewModel 테스트**
- **파일**: `test/features/profile/presentation/viewmodels/profile_edit_viewmodel_test.dart`
- **테스트 케이스**:
  - [ ] `updateProfile()` 성공 시 `isSuccess=true`
  - [ ] `updateProfile()` 실패 시 `errorMessage` 설정
  - [ ] 409 에러 시 "이미 사용 중인 닉네임" 메시지
  - [ ] 400 에러 시 "입력값을 확인해주세요" 메시지
- **예상 시간**: 1시간

#### 2. **Repository 테스트**
- **파일**: `test/features/profile/data/repositories/profile_repository_impl_test.dart`
- **테스트 케이스**:
  - [ ] `updateProfile()` 성공 시 Entity 반환
  - [ ] DataSource 에러 시 예외 rethrow
- **예상 시간**: 30분

#### 3. **DTO 테스트**
- **파일**: `test/features/profile/data/dto/request/update_profile_req_dto_test.dart`
- **테스트 케이스**:
  - [ ] `toFormData()` 닉네임만 변환
  - [ ] `toFormData()` 이미지만 변환
  - [ ] `toFormData()` 닉네임 + 이미지 변환
  - [ ] `toFormData()` `removeProfileImage=true` 처리
- **예상 시간**: 1시간

### 통합 테스트

#### 1. **UI 테스트**
- **파일**: `test/features/profile/presentation/views/profile_edit_view_test.dart`
- **테스트 케이스**:
  - [ ] 닉네임 입력 필드 표시
  - [ ] 이미지 선택 버튼 탭
  - [ ] 저장 버튼 탭 시 ViewModel 호출
  - [ ] 로딩 상태 시 버튼 비활성화
- **예상 시간**: 1.5시간

#### 2. **E2E 테스트**
- **도구**: Flutter Integration Test
- **테스트 케이스**:
  - [ ] 로그인 → 프로필 수정 → 저장 → 프로필 확인
  - [ ] 닉네임 중복 에러 처리
  - [ ] 이미지 업로드 성공
- **예상 시간**: 2시간

**총 테스트 시간**: **약 6시간**

---

## 백엔드 대응 사항

### 백엔드팀 확인 필요 문서

| 문서 | 경로 | 내용 |
|------|------|------|
| **API 요구사항 명세서** | `docs/api/BACKEND_REQUEST_PROFILE_UPDATE.md` | 엔드포인트, 요청/응답 형식, 에러 코드 |
| **백엔드 질문 리스트** | `docs/api/BACKEND_QUESTIONS_PROFILE_UPDATE.md` | 28개 질문 (닉네임 규칙, 이미지 업로드 등) |

### 백엔드팀 제공 필요 사항

1. **API 명세 확정**
   - 엔드포인트, HTTP 메서드
   - 요청/응답 JSON 스키마
   - 에러 코드 목록

2. **테스트 환경**
   - 테스트 서버 URL
   - 테스트 계정 (이메일/비밀번호)
   - Postman Collection (optional)

3. **이미지 스토리지 정보**
   - CDN URL 형식
   - Signed URL 만료 시간 (해당 시)
   - 최대 파일 크기

4. **Rate Limit 정보**
   - 프로필 수정 횟수 제한 (해당 시)
   - 이미지 업로드 타임아웃

---

## 체크리스트

### Flutter Team

- [x] API 요구사항 명세서 작성
- [x] 백엔드 질문 리스트 작성
- [x] 구현 계획 문서 작성
- [ ] 백엔드팀에 문서 전달
- [ ] 백엔드 답변 대기
- [ ] 백엔드 답변 반영
- [ ] 백엔드 연동 테스트
- [ ] 단위 테스트 작성
- [ ] 통합 테스트 작성
- [ ] QA 테스트
- [ ] 프로덕션 배포

### Backend Team

- [ ] API 요구사항 검토
- [ ] 질문 리스트 답변
- [ ] API 개발
- [ ] 테스트 서버 배포
- [ ] Swagger 문서 업데이트
- [ ] Flutter Team에 테스트 환경 제공
- [ ] 프로덕션 배포

---

## 예상 일정

| Phase | 담당 | 소요 시간 | 시작일 | 완료 예정일 |
|-------|------|-----------|--------|-------------|
| Phase 1: 백엔드 확인 | Backend | 1~2일 | 2026-02-09 | 2026-02-11 |
| Phase 2: 응답 반영 | Flutter | 40분 | 2026-02-11 | 2026-02-11 |
| Phase 3: 연동 테스트 | Flutter + Backend | 2시간 | 2026-02-11 | 2026-02-11 |
| **필수 작업 완료** | - | **2~3일** | **2026-02-09** | **2026-02-11** |
| Phase 4: 추가 개선 (선택) | Flutter | 6.5시간 | 2026-02-12 | 2026-02-12 |
| 단위/통합 테스트 | Flutter | 6시간 | 2026-02-13 | 2026-02-13 |
| QA 테스트 | QA | 1일 | 2026-02-14 | 2026-02-14 |
| **전체 완료** | - | **약 5일** | **2026-02-09** | **2026-02-14** |

---

## 리스크 및 대응 방안

### 리스크 1: 백엔드 API 미완성
- **확률**: Medium
- **영향**: High (블로킹)
- **대응**: Mock API 서버 구축 (json-server 등)

### 리스크 2: 이미지 업로드 타임아웃
- **확률**: Low
- **영향**: Medium
- **대응**: 
  - 클라이언트 타임아웃 60초 설정
  - 업로드 중 프로그레스 표시
  - 재시도 로직 추가

### 리스크 3: 닉네임 중복 빈번 발생
- **확률**: Medium
- **영향**: Low (UX 불편)
- **대응**: 
  - Phase 4.1 (실시간 중복 검증) 우선 구현
  - 추천 닉네임 제공 (백엔드 지원 시)

---

## 참고 자료

### 관련 문서
- [API 요구사항 명세서](../docs/api/BACKEND_REQUEST_PROFILE_UPDATE.md)
- [백엔드 질문 리스트](../docs/api/BACKEND_QUESTIONS_PROFILE_UPDATE.md)

### 코드 파일
- View: `lib/features/profile/presentation/views/profile_edit_view.dart`
- ViewModel: `lib/features/profile/presentation/viewmodels/profile_edit_viewmodel.dart`
- UseCase: `lib/features/profile/domain/usecases/update_my_profile_usecase.dart`
- Repository: `lib/features/profile/data/repositories/profile_repository_impl.dart`
- DataSource: `lib/features/profile/data/datasources/profile_remote_data_source.dart`
- DTO (Request): `lib/features/profile/data/dto/request/update_profile_req_dto.dart`
- DTO (Response): `lib/features/profile/data/dto/response/my_profile_resp_dto.dart`

---

## 문서 버전

| 버전 | 날짜 | 변경 내용 | 작성자 |
|------|------|-----------|--------|
| 1.0 | 2026-02-09 | 초안 작성 | Flutter Team |

---

**END OF DOCUMENT**
