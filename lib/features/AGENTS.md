# PROJECT KNOWLEDGE BASE (lib/features)

## OVERVIEW
17 feature modules using feature-first Clean MVVM. Each feature is self-contained: data → domain → presentation.

## STRUCTURE
Every feature follows this template:
```text
lib/features/<feature>/
├── data/
│   ├── datasources/      # remote data source (Dio calls)
│   ├── dto/
│   │   ├── request/      # API request body models (Freezed)
│   │   └── response/     # API response models (Freezed + fromJson)
│   └── repositories/     # repository implementation
├── domain/
│   ├── entities/         # pure domain models (Freezed)
│   ├── repositories/     # repository interface (abstract)
│   └── usecases/         # single-responsibility use cases
└── presentation/
    ├── providers/        # Riverpod provider declarations
    ├── ui_models/        # view-specific composite models
    ├── viewmodels/       # AsyncNotifier/Notifier subclasses
    ├── views/            # Screen widgets (View suffix)
    └── widgets/          # feature-local reusable widgets
```

## FEATURES
| Feature | Primary Concern | Notable Complexity |
|---------|----------------|---|
| `auth` | Login, signup, social (Kakao/Google), find-id/pw | Social OAuth + JWT |
| `bank_account` | Register + 1-won verify flow | 2-step bank verification |
| `chat` | Realtime SignalR chat + transaction state machine | Largest feature; 11 usecases; SignalR datasource |
| `dispute` | Dispute create/detail/evidence upload | File upload + status polling |
| `events` | Event listing and filtering | Paginated list |
| `home` | Home feed aggregation | Multi-section layout |
| `notification` | FCM notification list + read | Unread badge count |
| `payment` | Toss Payments request → confirm | External SDK + confirm handshake; `keepAlive: true` |
| `profile` | Profile view/edit, transaction history, password change | Image upload |
| `reputation` | Rate buyer/seller after transaction | One-time per transaction |
| `sales_dashboard` | Seller's active ticket overview | Per-event ticket breakdown |
| `search` | Ticket search by keyword | Lightweight, presentation-only (no data/domain) |
| `sell` | 6-step ticket registration wizard | Most complex UI (ShellRoute) |
| `splash` | App init, auth gate, deep-link | Minimal — presentation-only, router redirect logic |
| `ticketing` | Browse tickets, detail view | Nested routes (ticket_detail/) |
| `wishlist` | Wishlist add/remove/list | Optimistic UI updates |
| `withdrawal` | Seller withdrawal requests | Balance + bank account gate |

## WHERE TO LOOK
| Task | Location | Notes |
|------|----------|-------|
| SignalR chat realtime | `chat/data/datasources/` | Hub connection, stream subscription |
| Sell wizard navigation | `sell/presentation/views/sell_shell_view.dart` | ShellRoute wrapping 6 sub-steps |
| Payment confirm flow | `payment/presentation/viewmodels/` | Toss widget callback → API confirm |
| Dispute evidence upload | `dispute/data/datasources/` | Supabase Storage upload path |
| Auth token flow | `auth/presentation/viewmodels/` | Token storage + router redirect |

## CONVENTIONS
- Use-cases are single-method classes: one `call(Params)` method, one responsibility.
- DTOs live in `data/dto/` (never in `domain/`); entities live in `domain/entities/` (never in `data/`).
- DTO → Entity conversion: `toEntity()` on response DTO or in repository impl — never in use-cases.
- Viewmodels extend `AsyncNotifier<T>` or `Notifier<T>` with `@riverpod` codegen annotation.
- State classes are Freezed `@freezed` with `copyWith()` — never mutable.
- `ui_models/` holds view-specific aggregations with `fromEntity()` factory — not business entities, not raw DTOs.
- Providers in `presentation/providers/*_di.dart` wire datasource → repo → usecase → viewmodel.

## ANTI-PATTERNS
- Never import one feature from another feature (cross-feature dependency → extract to `core` or `shared`).
- Never put network calls directly in viewmodels — go through use-case → repository → datasource.
- Never use `context.read()` inside viewmodels — use Riverpod `ref` passed to `AsyncNotifier`.
- Never skip the domain layer for "simple" features — at minimum keep the repository interface.
- Never place feature widgets in `lib/shared/widgets/` unless truly feature-agnostic.
- Never access `TokenStorage` or `AppConfig` directly in features — use DI providers from core.

## NOTES
- `search` has no `data/` or `domain/` layer — presentation only (local state).
- `splash` has no `data/` or `domain/` — viewmodel checks auth state and redirects.
- `sell` uses GoRouter `ShellRoute` to share state across 6 steps — do not break shell wrapping.
- `chat` SignalR datasource manages WebSocket lifecycle; max 200 messages in memory; markAsRead throttled (700ms).
- `payment` viewmodel uses `@Riverpod(keepAlive: true)` for persistent state across navigation.
- After adding or renaming routes, regenerate `app_router.g.dart` via `dart run build_runner build`.
