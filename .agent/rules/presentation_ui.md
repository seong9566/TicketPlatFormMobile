---
alwaysApply: true
---

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
