---
description: "Flutter UI: no widget functions, theme extensions, responsiveness, components, performance"
globs: ["lib/**/*.dart", "lib/uikit/**"]
alwaysApply: false
---

# Flutter UI

## 2.5.1 Widget functions prohibited

- Do not use functions that return `Widget` (e.g. `Widget buildHeader()`).
- Instead, create separate classes:
    - `StatelessWidget` for static components
    - `StatefulWidget` for components with state

## 2.5.2. Types in children

- Do not write `<Widget>` in `children:` and similar places in widget trees.

### 2.5.3 Theme / Colors / Extensions

- Do not use `withOpacity`; use `withAlpha` instead.
- Do not use `Theme.of(context)` directly.
- Use extensions:
    - `final colorScheme = context.colorScheme;`
    - `final textScheme = context.textScheme;` (only `label`, `headline`, `display`)
    - `final l10n = context.l10n;`

### 2.5.4 Responsiveness and no hardcoded values

- Do not use fixed sizes (`width: 300`, `fontSize: 14`, `padding: EdgeInsets.all(16)` without a system-based rationale).

- Sizes must:
    - depend on layout context (`MediaQuery`, `LayoutBuilder`)
    - or come from the design system / constants
    - or be computed relative to available space

- Use:    
    - `Expanded`, `Flexible`
    - `Spacer`        
    - `FractionallySizedBox`
    - constraints via `BoxConstraints`        
    - `AspectRatio` when applicable
    
- UI must look correct:
    - on small screens    
    - on large screens
    - in landscape (if supported)
    - on web/desktop (if supported)

### 2.5.5 Text responsiveness

- Text size must not be hardcoded.    
- Use text styles from `textScheme`.
- Respect system `textScaleFactor`.
- Do not truncate text unnecessarily.
- Use `maxLines` and `overflow` deliberately.

### 2.5.6 UI/UX best practices

- Minimize widget nesting.
- Avoid deep trees when decomposition is possible.
- One widget — one responsibility.
- Components must be:
    - reusable
    - isolated
    - independent of a specific screen
- Move formatting and mapping logic out of UI into `presentation/utils` or domain.

### 2.5.7 Component reuse

- Put shared UI elements in:
    - `core/presentation/components/` — when used across multiple features.
    - `uikit/...` — when it is a root component of the project's UI/UX system (e.g. PrimaryButton or ConfirmableTextfield)
    - `presentation/components/` — when used within a single feature.

- Do not duplicate identical buttons, cards, headers.
- Configuration must be passed via constructor parameters.

### 2.5.8 UI performance

- Use `const` constructors where possible.
- Use `RepaintBoundary` when:
    - the widget is repainted often independently of the parent
    - there is heavy drawing (graphics, custom animation, large lists)

- In lists:
    - use `ListView.builder`
    - do not use `ListView(children: [...])` for large collections
    - avoid unnecessary rebuilds

### 2.5.9 Isolation from business logic

- UI must not contain business validation.
- UI must not work directly with DTOs.
- UI works only with domain models.
- All logic goes through Bloc/Cubit.
