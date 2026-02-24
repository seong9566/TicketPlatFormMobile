# PROJECT KNOWLEDGE BASE (Mobile App)

## OVERVIEW
Flutter client for TicketHub using feature-first Clean MVVM.
Primary structure is `lib/features/<feature>/{data,domain,presentation}` with shared `lib/core` and `lib/shared`.

## STRUCTURE
```text
ticket_platform_mobile/
├── lib/core/           # network, config, theme, utils, services
├── lib/features/       # auth, chat, events, sell, ticketing, profile, ...
├── lib/shared/widgets/ # reusable UI widgets
├── scripts/            # run_dev.sh, run_prod.sh
└── test/               # flutter tests
```

## WHERE TO LOOK
| Task | Location | Notes |
|------|----------|-------|
| Network/token flow | `lib/core/network/` | Dio provider, interceptors, token refresh |
| App config/env | `lib/core/config/` + `scripts/` | `--dart-define` driven runtime config |
| Chat realtime logic | `lib/features/chat/` | SignalR data source + viewmodel |
| Sell flow forms | `lib/features/sell/` | multi-step registration UI and validation |
| Shared design system | `lib/core/theme/` + `lib/shared/widgets/` | centralized colors/spacing/widgets |

## CONVENTIONS
- Keep feature boundaries: data/domain/presentation responsibilities must not mix.
- Use Riverpod codegen patterns already present in viewmodels/providers.
- Keep DTO/entity conversions aligned with existing `toEntity`/model mapping style.
- Use app theme tokens (`AppColors`, spacing/text styles) instead of hardcoded UI values.

## ANTI-PATTERNS
- Do not edit generated files (`*.g.dart`, `*.freezed.dart`) directly.
- Do not bypass core network stack with ad-hoc HTTP clients in feature code.
- Do not place feature-specific business logic inside shared widgets.
- Do not hardcode environment endpoints/keys in feature sources.

## COMMANDS
```bash
cd ticket_platform_mobile && flutter pub get
cd ticket_platform_mobile && flutter analyze
cd ticket_platform_mobile && flutter test
cd ticket_platform_mobile && dart run build_runner build
cd ticket_platform_mobile && ./scripts/run_dev.sh
```

## NOTES
- `.env` is required for local runs (`KAKAO_NATIVE_APP_KEY` via `.env.example`).
- Script-based `--dart-define` configuration is the standard local workflow.
