---
description: "Dart code style: comments, naming, Equatable models, DTO/domain naming, copyWith, constructors"
globs: ["lib/**/*.dart"]
alwaysApply: false
---

# Code writing

## 2.1 Comments

- All comments in Dart code must be in English only (`//`, `///`, `/* */`).
- Do not add comments that duplicate the obvious.
- Emojis, informal abbreviations, and smileys are prohibited in comments.

## 2.2 Naming and readability

- All identifiers must be semantically clear and reflect purpose.
- Do not create variables "just because" — only when logically justified.
- Single-letter names (`i`, `j`, `k`) are prohibited except in common cases (e.g. loop indices in a very local scope when truly appropriate).

## 2.3 Constructs and Dart style

- Follow the style guide: `https://dart.dev/effective-dart/style`.
- Use `dart format`.
- Prefer `final` when the value does not change.
- Do not ignore `Future`: do not leave it without `await` or `.then()` without reason.
- In async methods, handle errors via `try-catch`.

## 2.4 Architectural conventions for classes

### 2.4.1 Constructors (DI approach)

Constructors must use initialization via `:` with explicit assignment to fields (private/public).

```Dart
class ScannerInteractor {
  ScannerInteractor({required IScannerRepository scannerRepository})
      : _scannerRepository = scannerRepository;

  final IScannerRepository _scannerRepository;
}
```

### 2.4.2 Models (Data / Domain)

#### Equatable inheritance

- All `data` and `domain` models must extend `Equatable`.
- Override `props` in all cases.
- Objects must be immutable (fields are `final`).

#### Naming
- DTO models: `NameDto`
- Domain models: `Name`

Example:
```
UserDto  →  User  
SessionDto → Session
```

#### DTO models (data/models)

Requirements:

- Name ends with `Dto`.
- Extends `Equatable`.
- Implements:
    - `factory NameDto.fromJson(Map<String, Object?> json)`
    - `Map<String, Object?> toJson()`
    - `copyWith(...)`

DTO is responsible only for:
- JSON
- API
- transport structures

#### Domain models (domain/models)

Requirements:

- Name has no suffix.
- Extends `Equatable`.
- Has:
    - `factory Name.fromDto(NameDto dto)
    - `copyWith(...)`

Domain model:

- Does not contain `toJson`
- Does not contain `fromJson`
- Does not know about API format
- Works only with business data


### 2.4.3. copyWith

- All models (DTO and Domain) must have `copyWith`.
- `copyWith` must allow changing any field of the model.
- Returns a new instance; does not mutate the existing one.
