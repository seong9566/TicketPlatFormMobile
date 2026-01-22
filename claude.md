# 프로젝트 개요

## 기본 정보
- **프로젝트명**: TicketHub Mobile
- **목적**: 중고 티켓을 원가 이하로만 판매 가능한 티켓 중고 거래 플랫폼 (모바일 앱)
- **플랫폼**: Android / iOS

## 기술 스택

### Frontend (이 프로젝트)
- **Framework**: Flutter 3.35.4 / Dart 3.9.2
- **State Management**: Riverpod 3.x (with code generation)
- **Routing**: GoRouter
- **Networking**: Dio
- **Model**: Freezed / JSON Serializable

### Backend (별도 레포지토리)
- **Framework**: ASP.NET Core 9 (C#)
- **Realtime**: SignalR (채팅)
- **API Docs**: Swagger

---

## 아키텍처

### Layer-first + Feature Module (Clean MVVM)
```
lib/
├── core/                 # 공통 유틸, 테마, 네트워크
│   ├── network/         # DioClient, Interceptors
│   ├── providers/       # 글로벌 Provider
│   ├── theme/           # AppColors, AppTextStyles, AppSpacing
│   └── utils/           # 유틸리티 함수
├── features/            # 기능별 모듈
│   └── <feature>/
│       ├── data/        # DTO, Repository 구현체
│       ├── domain/      # Entity, Repository 인터페이스, UseCase
│       └── presentation/# ViewModel, View, Widgets
├── shared/              # 공유 위젯
└── l10n/                # 다국어
```

### 주요 피처
- `auth`: 인증 (로그인/회원가입)
- `home`: 홈 화면
- `events`: 공연/이벤트 목록
- `ticketing`: 티켓 상세/구매
- `sell`: 티켓 판매
- `chat`: 채팅 (SignalR)
- `wishlist`: 찜 목록
- `profile`: 마이페이지

---

## 핵심 규칙 요약

### Provider 규칙
- 모든 Provider는 `@riverpod` annotation 사용 (code generation)
- `autoDispose` 기본 적용, 공유 데이터는 `keepAlive: true`

### DTO/Entity 규칙
- **요청 DTO**: `toMap()` 메서드 필수, Freezed 사용 안 함
- **응답 DTO**: `@freezed` + `fromJson()` + `toEntity()` extension
- **Entity**: `@freezed` 사용, 순수 도메인 모델

### UI 규칙
- 하드코딩 금지: `AppColors`, `AppTextStyles`, `AppSpacing`, `AppRadius` 사용
- 위젯 50줄 이상 시 분리 또는 `_buildXxx()` 헬퍼 메서드로 분리
- 파일당 하나의 Public 위젯 클래스 권장

---

## API 문서 위치
- `docs/api/`: API 스펙 문서들
