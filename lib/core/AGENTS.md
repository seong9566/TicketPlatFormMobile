# PROJECT KNOWLEDGE BASE (lib/core)

## OVERVIEW
Cross-cutting infrastructure for the Flutter app. All features depend on core; core never imports from features. 11 modules, ~30 Dart files.

## STRUCTURE
```text
lib/core/
├── config/        # AppConfig — `--dart-define` runtime values; `development()` / `production()` factories
├── constants/     # app-wide string/int constants (app_constants.dart, app_assets.dart)
├── enums/         # shared enums (bank_type.dart, category.dart)
├── error/         # Failure union (Freezed), Either<L,R> sealed type
├── navigation/    # deep_link_handler.dart (GoRouter integration)
├── network/       # Dio provider, api_interceptor, token_refresh_service, api_endpoint, base_response, safe_api_call
├── router/        # app_router.dart (GoRouter), app_router_path.dart (route enum)
├── services/      # fcm_service.dart, local_notification_service.dart
├── storage/       # token_storage.dart (flutter_secure_storage wrapper)
├── theme/         # AppColors, AppTextStyles, AppSpacing, AppRadius
└── utils/         # error_handler.dart (mixin), logger, date_format_util, number_format_util, pagination_mixin, text_field_formatter
```

## WHERE TO LOOK
| Task | Location | Notes |
|------|----------|-------|
| Add/change API endpoint | `network/api_endpoint.dart` | All URL constants here; match backend route exactly |
| Token refresh logic | `network/token_refresh_service.dart` + `network/api_interceptor.dart` | Dio interceptor handles 401 auto-refresh |
| Environment config | `config/app_config.dart` | `APP_PROD` dart-define selects factory; iOS/Android URL split |
| Navigation/routing | `router/app_router.dart` + `router/app_router_path.dart` | GoRouter; all named routes defined here |
| Push notifications | `services/fcm_service.dart` | FCM token registration + foreground/background handler |
| Local notifications | `services/local_notification_service.dart` | flutter_local_notifications wrapper |
| Secure token storage | `storage/token_storage.dart` | flutter_secure_storage; access/refresh tokens |
| Deep links | `navigation/deep_link_handler.dart` | GoRouter redirect integration |
| Theme tokens | `theme/` | Use `AppColors`, `AppSpacing`, `AppRadius`, `AppTextStyles` — never hardcode |
| Failure types | `error/failures.dart` | Freezed union: ServerFailure, NetworkFailure, UnauthorizedFailure, etc. |
| Network wrapper | `network/safe_api_call.dart` | Wraps Dio calls; `BaseResponse<T>` with `dataOrThrow`, `mapOrThrow()` |
| Pagination | `utils/pagination_mixin.dart` | Mixin for list viewmodels with cursor pagination |

## CONVENTIONS
- `api_endpoint.dart` is the single source of truth for all API paths — always add here first.
- `AppConfig` factories (`development()` / `production()`) selected by `APP_PROD` dart-define; **never** branch on `kDebugMode` for API URLs.
- iOS dev URL = `API_BASE_URL_IOS`, Android dev URL = `API_BASE_URL_ANDROID`.
- Generated files (`*.g.dart`) exist for: `dio_provider`, `app_router`, `fcm_service`, `local_notification_service`, `token_storage`, `deep_link_handler` — run `build_runner` after editing.
- Use `PaginationMixin` from `utils/pagination_mixin.dart` for list viewmodels with cursor-based pagination.

## ANTI-PATTERNS
- Never import `lib/features/*` from any file in `lib/core/` (unidirectional dependency).
- Never add feature-specific logic to core services or utils.
- Never call network or storage directly in feature code — use DI providers exposed from core.
- Never hardcode API base URLs in feature files — read from `AppConfig`.
- Never branch on `kDebugMode` for environment selection — use `AppConfig` factory.

## NOTES
- `BaseResponse<T>` (in `network/base_response.dart`) is the standard API response wrapper; extensions: `dataOrThrow`, `dataOrNull`, `mapOrThrow()`.
- `Either<L,R>` and `Failure` types available in `error/`; current codebase uses exception-based flow via `ErrorHandler` mixin.
- iOS dev URL = `API_BASE_URL_IOS`, Android dev URL = `API_BASE_URL_ANDROID`; both override with `API_BASE_URL` if set.
