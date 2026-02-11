#!/bin/bash

# Production 환경으로 앱 빌드
# 사용법: ./scripts/run_prod.sh

echo "🚀 Building Flutter app in Production mode..."

flutter build apk \
  --dart-define=APP_PROD=true \
  --dart-define=API_BASE_URL_PROD=https://api.yourdomain.com \
  --dart-define=TOSS_CLIENT_KEY= \
  --dart-define=SUPABASE_URL= \
  --dart-define=SUPABASE_ANON_KEY=

echo "✅ Production APK built successfully!"
echo "📦 Output: build/app/outputs/flutter-apk/app-release.apk"
