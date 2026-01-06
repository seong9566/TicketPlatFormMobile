---
trigger: always_on
---

# Architecture & Core Rules

## Project Definition
Expert in Flutter 3.35.4 and Dart 3.9.2 development using Riverpod 3.x, Dio, Freezed, and Clean MVVM architecture.

## Core Dependencies
- Flutter 3.35.4 / Dart 3.9.2
- Riverpod 3.x (with generator)
- Dio / Freezed / GoRouter

## Project Structure (Feature-First)
```
lib/
├── core/ (network, router, theme, utils, error, constants)
├── features/
│   └── <feature>/
│       ├── data/ (models, repositories)
│       ├── domain/ (entities, repositories)
│       ├── presentation/ (viewmodels, views, widgets)
│       └── router.dart
├── shared/widgets/
└── l10n/
```

## MVVM + Clean Architecture Standards
### View (StatelessWidget)
- UI 렌더링만 담당. 로직은 ViewModel에 위임.
- `ref.watch()`로 상태 구독.

### ViewModel (AsyncNotifier)
- UI 상태를 `AsyncValue<State>`로 관리.
- 비즈니스 로직은 Repository 호출. BuildContext 접근 금지.
- `AsyncValue.guard()` 사용 권장.

### Repository & Data Layer
- Domain: abstract interface. Data: implementation.
- DioException을 Failure로 변환.

## State Management (Riverpod 3.x)
- 모든 Provider는 `@riverpod` 사용 (Code generation 필수).
- `manualProvider` 선언 금지.
- `AsyncValue`는 `.when()` 또는 `.map()`으로 처리.
- `autoDispose` 기본 적용, 공유 데이터는 `keepAlive: true` 신중히 사용.

## Routing (GoRouter)
- `AppRouterPath`로 경로 상수화.
- Parameter 전달 시 유효성 검사 필수.
- 중첩 라우팅 적극 활용.

## Networking (Dio)
- `DioProvider`를 통한 싱글톤 인스턴스 사용.
- `Interceptors`로 Auth 및 Logging 처리.
- API 데이터 파싱 실패 대응을 위해 `safeApiCall` 패턴 사용.

# Coding Standards & Best Practices

## Code Style & Linting
- **Linting**: `analysis_options.yaml` 규칙 준수 (always_use_package_imports, prefer_const_constructors 등).
- **위젯 분리**: build 메서드는 100줄 이하로 유지. 그 이상은 별도 파일로 분리.
- **로직 위치**: 비즈니스 로직은 반드시 ViewModel에 위치. View에는 UI 렌더링 로직만 허용.
- **Formatting**: PR 제출 전 `dart format .` 필수 실행.


## Naming Conventions
- **Classes**: PascalCase (`UserViewModel`, `TicketCard`)
- **Variables/Functions**: camelCase (`getUserList`, `isLoaded`)
- **Files**: snake_case (`user_list_view.dart`)
- **Providers**: `xxxProvider` 형식 사용.

## Git Workflow
- **Branch Strategy**: `feat/`, `fix/`, `refactor/`, `docs/` 접두사 사용.
- **Commit Message**: 전문적인 한국어 또는 영어 사용. 의미 있는 단위로 커밋.
- **PR**: 코드 리뷰가 완료된 후 merge.

## Forbidden Practices (핵심 금기 사항)
- **Hard-coding**: 문자열, 색상, 수치는 반드시 `core/constants` 또는 `core/theme` 사용.
- **Logic in View**: View에서 직접 API 호출 또는 복잡한 연산 금지.
- **Print**: 디버깅 로그는 반드시 `logger` 유틸리티 사용 (`print` 금지).
- **Manual Provider**: Code generation 없이 Provider 직접 선언 금지.
- **Direct Asset Path**: `Image.asset('assets/...')` 대신 `AppAssets` 클래스 사용.

# Presentation & UI Standards

## UI & Styling
- **Responsive Layout**: `LayoutBuilder` 또는 `MediaQuery`를 사용하여 태블릿 지원 고려.
- **Theme Usage**: `AppColors`, `AppTextStyles`, `AppSpacing`을 통한 전역 테마 관리.
- **Images**: 네트워크 이미지는 `CachedNetworkImage` 사용 필수.
- **Assets**: `AppAssets` 클래스를 통해 상수 관리.
- **Touch Target**: 최소 `48x48dp` 크기 보장.

## Freezed Models (Data Transfer Objects)
- 모든 Entity 및 DTO는 `@freezed` 사용 (Immutable 보장).
- `fromJson`, `toJson` 자동 생성 활용.
- Union types를 사용하여 상태(State) 표현 권장.
- Code generation (`build_runner`) 필수 실행.

## Localization (l10n)
- 하드코딩된 한국어 문자열 금지.
- `lib/l10n/intl_ko.arb` 및 `intl_en.arb`에 등록 후 사용.
- 위젯에서는 `S.of(context).key` 형식으로 접근.

## Performance Optimization
- `const` 생성자 적극 활용.
- 긴 리스트는 `ListView.builder`로 lazy loading 처리.
- Riverpod의 `.select()`를 사용하여 불필요한 리빌드 방지.
- 무거운 연산은 별도 Isolate 또는 ViewModel에서 처리.

# Quality Assurance & Security

## Testing Strategy
- **Unit Tests**: ViewModel 및 Repository 로직 검증 (Business logic).
- **Widget Tests**: 핵심 UI 컴포넌트 렌더링 및 인터랙션 검증.
- **Integration Tests**: 실제 시나리오 기반의 E2E 테스트.
- **Golden Tests**: 디자인 회귀(Regression) 방지를 위해 시각적 테스트 활용.

## Security Practices
- **Sensitive Data**: API Key, 개인정보 등은 `flutter_secure_storage` 사용.
- **Biometrics**: 생체 인증 연동 시 앱 내 데이터 보호 강화.
- **SSL Pinning**: (필요 시) 보안 통신 보장을 위해 도입 고려.
- **Logging**: 배포(Release) 빌드에서는 로그 출력 최소화 및 민감 정보 마스킹 필수.
- **Obfuscation**: 출시 시 코드 난독화(`--obfuscate`) 적용.

