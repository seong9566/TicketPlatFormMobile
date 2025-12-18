---
alwaysApply: true
---

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
