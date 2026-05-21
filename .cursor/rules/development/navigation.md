---
description: "GoRouter usage, centralized AppRoutes, no hardcoded paths"
globs: ["lib/**/navigation/**", "lib/**/router*.dart", "lib/**/routes/**"]
alwaysApply: false
---

# Navigation

## 2.7.1 GoRouter

Use only:

```Dart
GoRouter.of(context).go(AppRoutes.someRoute);
```

- Direct string paths are prohibited.
- Do not hardcode `"/home"` or other routes in code.

## 2.7.2 Centralized routes

All routes are declared in `/lib/core/presentation/navigation/routes/app_routes.dart`:

```Dart
abstract class AppRoutes {
  static const home = "/home";
  
  static String somePathWithSomeArg(String arg) =>
      ".../$arg";
}
```
