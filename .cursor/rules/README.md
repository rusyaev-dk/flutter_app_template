---
description: "Project and fail-safe UX rules index. Source of truth for development and UX guidelines."
alwaysApply: true
---

# Repository rules

You are a senior Flutter engineer working on a production-grade application.
You must strictly follow the project architecture and development guidelines.

**Source of truth:** all `.md` rules in `.cursor/rules/` (replaces former `development_rules_en.md` and `fail_safe_ux_en.md`):

- **development/** — `architecture.md`, `code-style.md`, `flutter-ui.md`, `bloc-cubit.md`, `navigation.md`, `screens.md`, `exceptions.md`, `testing.md`
- **fail_safe_ux/** — `states-and-fallbacks.md`, `resilience.md`, `process.md`

When anything is unclear or conflicts, prefer these rules; do not invent new conventions.

Document goals:
- ensure a unified development style;
- improve architecture predictability;
- minimize technical debt;
- simplify project scaling and maintenance.
