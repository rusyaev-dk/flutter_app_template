---
description: "AppException hierarchy, Data/Domain exceptions, usage in repositories and interactors"
globs: ["lib/app/exceptions.dart", "lib/core/**/exceptions.dart"]
alwaysApply: false
---

# Errors and exceptions

## 3.1 Base classes

All exceptions in the project are built around `AppException`.

`lib/app/exceptions.dart`

- `AppException` — base class for all application errors.
- `AppUnknownException` — wrapper for any "unexpected" errors (including non-`AppException`), to unify handling.

Key fields of `AppException`:

- `message` — human-readable message
- `error` — original error/object (optional)
- `stackTrace` — stack trace (optional)
- `statusCode` — status code (optional, often for API)
- `details` — additional context (optional)

## 3.2 Data layer errors

`lib/core/data/models/exceptions.dart`

The Data layer returns errors related to external sources: network, API, storage.

### 3.2.1 Storage exceptions
 
- `StorageException` — base storage error (DB, secure storage, file system, etc.)
- `StorageIOException` — specific I/O issues (no access, corrupted file, read/write error)

### 3.2.2 API exceptions

- `ApiException` — base API error (HTTP / transport / backend)
- `ApiUnauthorizedException` — 401
- `ApiForbiddenException` — 403
- `ApiValidationException` — 422
- `ApiNotFoundException` — 404
- `ApiServerException` — 5xx / server errors
- `ApiTimeoutException` — timeouts

## 3.3 Domain layer errors

`lib/core/domain/models/exceptions.dart`

The Domain layer describes business-logic and validation errors that do not depend on a specific data source.

- `DomainException` — base domain exception type
- `InvalidCharactersException` — invalid characters
- `CharactersCountViolationException` — length requirement violation
- `RequiredValueNotProvidedException` — required value not provided
- `InconsistentValueException` — inconsistent/contradictory value

## 3.4 Usage rules in repositories and interactors

### 3.4.1 Repositories (Data layer)

- Repositories must throw **only** Data-layer exceptions (`ApiException`, `StorageException` and their subclasses) or `AppException` when appropriate.
- If an error is not an `AppException`, it must be wrapped in `AppUnknownException` (passing `error` and `stackTrace`).

### 3.4.2 Interactors (Domain layer)

- Interactors must throw **domain** exceptions (`DomainException` and subclasses) when it is about business validation/rules.
- An interactor may rethrow `AppException` from the repository as-is when that is the expected contract (e.g. API 401/403/5xx).
- If an interactor catches a non-`AppException`, it must wrap it in `AppUnknownException`.

## 3.5 Recommended principle

- **Data**: everything about I/O and external systems → `ApiException` / `StorageException`.
- **Domain**: everything about business rules/validation → `DomainException`.
- **Unknown**: everything unexpected → `AppUnknownException`.
