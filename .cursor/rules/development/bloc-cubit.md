---
description: "Bloc/Cubit structure, Type A/B, error handling, state/event Equatable, file layout"
globs: ["lib/**/blocs/**", "lib/**/cubit/**"]
alwaysApply: false
---

# Bloc/Cubit: structure, types, and error handling

## 2.6.1. Bloc/Cubit dependencies

- Bloc/Cubit accepts **only** interactors and logger.
- Logger is passed as `required ILogger logger` and stored in a private field via initializer list.

```Dart
AuthCubit({required AuthInteractor authInteractor, required ILogger logger})
    : _authInteractor = authInteractor,
      _logger = logger,
      super(const AuthUnauthenticatedState());
```

## 2.6.2. File layout and barrel exports

- Each bloc/cubit lives in **its own folder of the same name**.
- In the shared blocs folder for a feature there is a barrel file that exports all blocs 

Required structure:

```
presentation/blocs/auth_cubit/
├── auth_cubit.dart
├── auth_state.dart
```

In `presentation/blocs/blocs.dart`:

```Dart
export auth_cubit/auth_cubit.dart
...
```

## 2.6.3 Two types of Bloc/Cubit

### Type A: Feature flow / state machine (e.g. `AuthCubit`)

Used when:
- there is a scenario/flow (login, logout, loading, errors)
- states represent **stages** and **outcomes** of execution

**How states are formed:**

- Base `sealed class State extends Equatable`
- Several concrete states for different UI branches:
    - success state (e.g. authenticated)
    - idle/unauthenticated
    - failure state (if needed as a separate state)
- Inside the state — `copyWith` for local updates (if needed for UI)
    

Minimum requirements:

- States are immutable.
- `props` includes all fields that affect UI.
- Inside the cubit:
    - `pending` state before calling the interactor
    - `success` state on success
    - `failure` state on error
        

**Error and failure:**

- In this type, `failure` is often a separate state (`XFailureState`) or a separate field in one of the states.
- It is allowed to handle a specific expected case (e.g. `ApiUnauthorizedException`) in a local `try { } on ... { }`.

### Type B: Form/validation state holder (e.g. `RegistrationValidatorCubit`)

Used when:
- the cubit holds form data and validation errors
- UI reacts to **partial changes** of fields
- it is updated frequently as the user types

**How state is formed:**

- Usually a **single** `State` class (e.g. `RegistrationValidatorState`) with fields:
    - field values (`fullName`, `phoneNumber`)        
    - field-level errors (`fullNameException`, `phoneNumberException`)
    - a general `failure` for unexpected errors

**copyWith with "noChange" marker:**

- To distinguish "do not change field" from "reset field to null".
- Use a static marker `_noChange` and `Object?` parameters.

static const Object _noChange = Object();

**Update rule:**

- Validation must result in one of:
    - updated value + cleared field-exception
    - updated value + set field-exception        
    - cleared value (`null`) + set field-exception

- `failure` is used only for truly unexpected situations (interactor error, formatter, I/O, etc.).

## 2.6.4 Error handling in Bloc/Cubit

### General standard

In bloc/cubit, `catch` must be written strictly as:

```Dart
catch (e, st) {
  _logger.exception(e, st);

  final AppException appException = e is AppException
      ? e
      : AppUnknownException(
          message: e.toString(),
          error: e,
          stackTrace: st,
        );

  emit(XFailureState(failure: appException));
}
```

## 2.6.5. Forming states and events

- All states/events extend `Equatable`.
- `props` must include all fields that affect UI.
- States and events are immutable (`final` fields).
- `copyWith` is required for states that are updated partially (especially in form/validation cubit).
