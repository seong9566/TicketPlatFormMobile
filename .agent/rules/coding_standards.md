---
alwaysApply: true
---

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
