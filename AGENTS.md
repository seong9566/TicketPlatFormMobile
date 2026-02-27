# PROJECT KNOWLEDGE BASE (Mobile App)

## OVERVIEW
Flutter client for TicketHub using feature-first Clean MVVM. 17 features across `lib/features/` with shared `lib/core` and `lib/shared`. Riverpod codegen + Freezed throughout.

## STRUCTURE
```text
ticket_platform_mobile/
├── lib/core/           # network, config, theme, utils, services (see lib/core/AGENTS.md)
├── lib/features/       # 17 features: auth, bank_account, chat, dispute, events, home, notification,
|                       #   payment, profile, reputation, sales_dashboard, search, sell, splash, ticketing,
|                       #   wishlist, withdrawal (see lib/features/AGENTS.md)
├── lib/shared/widgets/ # reusable feature-agnostic widgets (see lib/shared/AGENTS.md)
├── scripts/            # run_dev.sh, run_prod.sh (--dart-define injection)
└── test/               # flutter tests
```

## WHERE TO LOOK
| Task | Location | Notes |
|------|----------|-------|
| Network/token flow | `lib/core/network/` | Dio provider, interceptors, token refresh |
| App config/env | `lib/core/config/` + `scripts/` | `--dart-define` driven runtime config |
| Core modules detail | `lib/core/AGENTS.md` | per-module guidance for core |
| Feature structure | `lib/features/AGENTS.md` | 17 features, Clean MVVM template |
| Shared widgets | `lib/shared/AGENTS.md` | reusable feature-agnostic widgets |
| Chat realtime logic | `lib/features/chat/` | SignalR datasource + viewmodel |
| Sell flow forms | `lib/features/sell/` | 6-step wizard with ShellRoute |
| Shared design system | `lib/core/theme/` + `lib/shared/widgets/` | centralized colors/spacing/widgets |

## CONVENTIONS
- Keep feature boundaries: data/domain/presentation responsibilities must not mix.
- Riverpod codegen: `@riverpod` annotation + `part '*.g.dart'`; run `build_runner` after annotated file changes.
- DTO → Entity conversion via `toEntity()` on DTO or in repository impl — never in use-cases or viewmodels.
- Use theme tokens (`AppColors`, `AppSpacing`, `AppTextStyles`) — never hardcode UI values.
- `*_di.dart` suffix for provider wiring files in `presentation/providers/`.

## ANTI-PATTERNS
- Never edit generated files (`*.g.dart`, `*.freezed.dart`) directly — regenerate via `build_runner`.
- Never bypass core network stack with ad-hoc HTTP clients in feature code.
- Never place feature-specific business logic inside shared widgets.
- Never hardcode environment endpoints/keys in feature sources — use `AppConfig`.
- Never import `lib/features/*` from `lib/core/` (unidirectional: core ← features).
- Never use `context.read()` inside viewmodels — use Riverpod `ref`.

## COMMANDS
```bash
cd ticket_platform_mobile && flutter pub get
cd ticket_platform_mobile && flutter analyze
cd ticket_platform_mobile && flutter test
cd ticket_platform_mobile && dart run build_runner build
cd ticket_platform_mobile && ./scripts/run_dev.sh
```

## NOTES
- `.env` required for local runs (`KAKAO_NATIVE_APP_KEY` via `.env.example`).
- `--dart-define` keys: `APP_PROD`, `API_BASE_URL_IOS`, `API_BASE_URL_ANDROID`, `TOSS_CLIENT_KEY`, `SUPABASE_URL`, `SUPABASE_ANON_KEY`.
- `splash` and `search` features are presentation-only (no data/domain layer) by design.
- `sell` uses GoRouter `ShellRoute` across 6 steps — do not break shell wrapping.
- FCM: Android fully implemented; iOS deferred pending Apple Developer account.
