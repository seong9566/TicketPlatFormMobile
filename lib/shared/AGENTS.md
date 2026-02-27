# PROJECT KNOWLEDGE BASE (lib/shared)

## OVERVIEW
Feature-agnostic reusable UI widgets. 7 widgets used across multiple features. No business logic, no Riverpod providers, no feature imports.

## STRUCTURE
```text
lib/shared/widgets/
├── app_button.dart           # Primary/secondary button with loading state
├── app_text_field.dart       # Styled text input with validation support
├── app_search_bar.dart       # Search input with clear action
├── app_toggle.dart           # Toggle switch component
├── app_dialog.dart           # Reusable dialog with confirm/cancel actions
├── date_selection_calendar.dart  # Date picker calendar widget
└── full_screen_image_viewer.dart # Full-screen image viewer with zoom
```

## WHERE TO LOOK
| Task | Location | Notes |
|------|----------|-------|
| Common button | `app_button.dart` | Use instead of raw `ElevatedButton` |
| Form inputs | `app_text_field.dart` | Styled consistently with theme |
| Confirmation dialogs | `app_dialog.dart` | Standard modal pattern |
| Image viewing | `full_screen_image_viewer.dart` | Chat images, ticket images |

## CONVENTIONS
- Widgets here must be feature-agnostic: no imports from `lib/features/*`.
- Accept only primitive/model data via constructor — no Riverpod `ref` or provider access.
- Use theme tokens (`AppColors`, `AppSpacing`, `AppTextStyles`) exclusively — no hardcoded values.
- Keep widgets stateless unless animation or controller is unavoidable.

## ANTI-PATTERNS
- Never add feature-specific business logic or API calls to shared widgets.
- Never import from `lib/features/` in any file here.
- Never use `context.read()` or `ref.watch()` inside shared widgets.
- Never create feature-specific widgets here — they belong in the feature's own `presentation/widgets/`.

## NOTES
- If a widget starts needing feature-specific data, move it to the feature's `presentation/widgets/` directory.
- Theme reference: `lib/core/theme/` — `AppColors`, `AppSpacing`, `AppRadius`, `AppTextStyles`.
