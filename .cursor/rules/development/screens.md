---
description: "Screen wrappers, ToastListener, BlocBuilder pattern, View and components extraction"
globs: ["lib/**/screens/**", "lib/**/presentation/**"]
alwaysApply: false
---

# Screen writing rules

## 2.8.1 Wrapper for screen when dependencies are not global

If `repo + interactor + bloc/cubit` are **not** provided in `core/app/app_providers_wrapper.dart`, the screen must have a separate `...ScreenWrapper`.

Wrapper rules:

- Wrapper is a `StatelessWidget`.
- Providers are scoped **exactly to the screen level** (no deeper).
- Order: `RepositoryProvider` → `RepositoryProvider/Provider` (interactor) → `BlocProvider`.
- Initial data loading is triggered right after creating the cubit/bloc via cascade (`..method()`).

Example:

```Dart
class PropertyScreenWrapper extends StatelessWidget {  
  const PropertyScreenWrapper({  
    required this.child,  
    required this.propertyId,  
    super.key,  
  });  
  
  final Widget child;  
  final String propertyId;  
  
  @override  
  Widget build(BuildContext context) {  
    return RepositoryProvider<PropertyInteractor>(  
      create: (context) =>  
          PropertyInteractor(propertyRepo: context.read<IPropertyRepo>()),  
      child: BlocProvider(  
        create: (context) => PropertyCubit(  
          propertyInteractor: context.read<PropertyInteractor>(),  
          logger: context.read<ILogger>(),  
        )..loadProperty(propertyId: propertyId),  
        child: child,  
      ),  
    );  
  }  
}
```

## 2.8.2 Connecting wrapper in router

The wrapper is connected in `core/presentation/navigation/router.dart` inside `GoRoute.pageBuilder`.

- Extract parameters from `state.pathParameters`.
- Return the wrapper with the actual screen inside.

Example:

```Dart
GoRoute(  
  path: 'property/:propertyId',  
  name: 'favourite-property',  
  pageBuilder: buildPageTransition((context, state) {  
    final String propertyId = state.pathParameters['propertyId']!;  
    return PropertyScreenWrapper(  
      propertyId: propertyId,  
      child: PropertyScreen(propertyId: propertyId),  
    );  
  }),  
),
```

## 2.8.3 ToastListener

Every screen must be wrapped in:

- `ToastListener<SomeCubit, SomeState, SomeState>`
- `bloc` is obtained via `context.read<SomeCubit>()`
- `messageOf` always uses `AppExceptionsTranslator.translate(...)` and `state.failure`

Template:

```Dart
ToastListener<SomeCubit, SomeState, SomeState>(  
  bloc: context.read<SomeCubit>(),  
  messageOf: (context, SomeState state) =>  
      AppExceptionsTranslator.translate(context, state.failure),  
  child: ...  
)
```

## 2.8.4 Screen responsibilities

A screen (`...Screen`) is:
- assembly of high-level layout (`Scaffold`, navigation elements)
- subscription to state (`BlocBuilder`, `BlocListener`, `BlocSelector`)
- routing parameters (e.g. `propertyId`)

A screen must **not** contain:

- large chunks of UI tree
- complex layout structures
- data formatting
- local business logic

## 2.8.5 BlocBuilder must be concise

`BlocBuilder` on a screen must:
- contain a minimal `switch` over states
- return ready-made widgets for each branch

Recommendation:
- `Loading` → compact loader
- `Loaded` → separate `...View`
- `Failure` → `InfoWidget` / shared error component with retry

Example pattern:

```Dart
BlocBuilder<PropertyCubit, PropertyState>(
  builder: (context, state) {
    switch (state) {
      case PropertyInitialState():
      case PropertyLoadingState():
        return Center(...);

      case PropertyLoadedState():
        return PropertyView(bundle: state.bundle);

      case PropertyFailureState():
        return InfoWidget(...);
    }
  },
),
```

## 2.8.6 Main UI goes into View and Components

- The main UI of a screen must be extracted into `...View` (often `StatefulWidget` when there are controllers/local state).
- Reusable and self-contained elements go in `presentation/components`.
- Private widgets (`_TitleAndPrice`) are allowed only for small parts that:
    - are not reused
    - logically belong to a specific view
    - do not grow into a separate component

Practice:
- `...Screen` → at most the "skeleton"
- `...View` → main layout and controllers
- `components/` → reusable blocks (cards, sections, tiles, gallery strips, etc.)

## 2.8.7 Formatting and "UI helpers"

- Formatting (`PriceFormatter`, `UserDataFormatter`) — not in the screen.
- Mappings / formatting — in `presentation/utils` or domain (if it is business formatting).
- The screen receives ready values or calls a formatter from utils, but does not contain its own formatting logic.
