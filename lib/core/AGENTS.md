# PROJECT KNOWLEDGE BASE (lib/core)

## OVERVIEW
Cross-cutting infrastructure for the Flutter app. All features depend on core; core never imports from features.

## STRUCTURE
```text
lib/core/
├── config/        # AppConfig — --dart-define runtime values (prod/dev factory)
├── constants/     # app-wide string/int constants
├── enums/         # shared enums (category, etc.)
├── error/         # error types, failure classes
├── navigation/    # deep_link_handler.dart
├── network/       # Dio provider, interceptors, token refresh, ApiEndpoint, BaseResponse
├── router/        # GoRouter setup (app_router.dart), AppRouterPath enum
├── services/      # fcm_service.dart, local_notification_service.dart
├── storage/       # token_storage.dart (secure storage)
├── theme/         # AppColors, text styles, spacing tokens
└── utils/         # date_format_util, number_format_util, logger, pagination_mixin, error_handler
```

## WHERE TO LOOK
| Task | Location | Notes |
|------|----------|-------|
| Add/change API endpoint | `network/api_endpoint.dart` | All URL constants here; match backend route |
| Token refresh logic | `network/token_refresh_service.dart` + `network/api_interceptor.dart` | Dio interceptor handles 401 auto-refresh |
| Environment config | `config/app_config.dart` | `--dart-define` keys; iOS/Android URL split |
| Navigation/routing | `router/app_router.dart` + `router/app_router_path.dart` | GoRouter; all named routes defined here |
| Push notifications | `services/fcm_service.dart` | FCM token registration + foreground handler |
| Local notifications | `services/local_notification_service.dart` | flutter_local_notifications wrapper |
| Secure token storage | `storage/token_storage.dart` | flutter_secure_storage; access/refresh tokens |
| Deep links | `navigation/deep_link_handler.dart` | GoRouter redirect integration |
| Theme tokens | `theme/` | Use `AppColors`, spacing, text styles — never hardcode |

## CONVENTIONS
- `api_endpoint.dart` is the single source of truth for all API paths — always add here first.
- `AppConfig` factories (`development()` / `production()`) are selected by `APP_PROD` dart-define; never branch on `kDebugMode` for API URLs.
- Generated files (`*.g.dart`) exist for: `dio_provider`, `app_router`, `fcm_service`, `local_notification_service`, `token_storage`, `deep_link_handler` — run `build_runner` after editing.
- Pagination: use `PaginationMixin` from `utils/pagination_mixin.dart` for list viewmodels.

## ANTI-PATTERNS
- Never import `lib/features/*` from any file in `lib/core/`.
- Never add feature-specific logic to core services or utils.
- Never call network or storage directly in feature code — use the DI providers exposed from core.
- Never hardcode API base URLs in feature files — always read from `AppConfig`.

## NOTES
- `BaseResponse<T>` (in `network/base_response.dart`) is the standard API response wrapper; use `safeApiCall` for error handling.
- iOS dev URL = `API_BASE_URL_IOS`, Android dev URL = `API_BASE_URL_ANDROID`; both override with `API_BASE_URL` if set.
