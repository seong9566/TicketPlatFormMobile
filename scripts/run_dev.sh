#!/bin/bash

# Development 환경으로 앱 실행
# 사용법: ./scripts/run_dev.sh

echo "🚀 Starting Flutter app in Development mode..."

flutter run \
  --dart-define=APP_PROD=false \
  --dart-define=API_BASE_URL_IOS=http://192.168.2.1:5224 \
  --dart-define=API_BASE_URL_ANDROID=http://123.2.156.230:5224 \
  --dart-define=SUPABASE_URL= \
  --dart-define=SUPABASE_ANON_KEY=
