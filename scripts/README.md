# Flutter Run Scripts

AppConfig `--dart-define` 주입용 원클릭 실행 스크립트.

## 사용법

### 개발 환경 실행
```bash
./scripts/run_dev.sh
```

**설정 값**:
- `APP_PROD=false`
- `API_BASE_URL_IOS=http://192.168.2.1:5224`
- `API_BASE_URL_ANDROID=http://123.2.156.230:5224`
- `TOSS_CLIENT_KEY=test_gck_docs_Ovk5rk1EwkEbP0W43n07xlzm`

### 프로덕션 빌드
```bash
./scripts/run_prod.sh
```

**주의**: 실제 프로덕션 키를 스크립트에 하드코딩하지 말고, 실행 전에 수동으로 수정하거나 환경변수를 사용하세요.

**설정 값**:
- `APP_PROD=true`
- `API_BASE_URL_PROD=https://api.yourdomain.com`
- `TOSS_CLIENT_KEY=` (수동 입력 필요)

## 커스텀 설정

스크립트를 복사해서 수정하거나, 직접 명령어 실행:

```bash
flutter run \
  --dart-define=APP_PROD=false \
  --dart-define=API_BASE_URL=http://your-custom-url:port \
  --dart-define=TOSS_CLIENT_KEY=your_key
```

## Antigravity IDE 연동

Antigravity 버튼에서 스크립트를 직접 실행할 수 없다면, 터미널에서 위 명령어를 사용하세요.
