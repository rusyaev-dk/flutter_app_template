---
description: "Test structure, flutter_test/bloc_test/mocktail, naming, what to verify and what not"
globs: ["test/**"]
alwaysApply: false
---

# Testing

## 4.1 Folder structure

- In `/test` use the same hierarchy as in `/lib`.
- Structure mirrors production code so any file can be found quickly.
- Place the test as close as possible in relative path to the file under test.

Example:

```
lib/features/auth/presentation/blocs/auth_cubit/auth_cubit.dart  
test/features/auth/presentation/blocs/auth_cubit/auth_cubit_test.dart
```

## 4.2 Tools used

- `flutter_test`
- `bloc_test`
- `mocktail`

Mock objects are created with `mocktail`.

## 4.3 General test file structure

Order inside the file:
1. `TestWidgetsFlutterBinding.ensureInitialized();`
2. Declaration of all `late` variables
3. `setUp()`
4. `tearDown()`
5. `group()` blocks

Example structure:

```Dart
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockDependency mockDependency;
  late TargetCubit targetCubit;

  setUp(() {
    mockDependency = MockDependency();
    targetCubit = TargetCubit(dependency: mockDependency);
  });

  tearDown(() async {
    await targetCubit.close();
  });

  group('TargetCubit', () {
    group('methodName', () {
      // tests
    });
  });
}
```

## 4.4 Test naming

Strict hierarchy:

- `group('AuthCubit', ...)` — name of the class under test
- `group('tryLogIn', ...)` — name of the method under test
- `blocTest` / `test` — names start with `should...`

Example:

```Dart
group('AuthCubit', () {  
group('tryLogIn', () {  
blocTest<AuthCubit, AuthState>(  
'should emit [Unauthenticated(pending), Authenticated] when logIn succeeds',  
...  
);  
});  
});
```


## 4.5 What we verify

- States (`expect`)
- Dependency calls (`verify`)
- Correct exception handling
- Etc.

## 4.6 What we do NOT verify

- Logging.
- Do not write tests for whether `_logger` was called.
- Do not use `verify` to check `logger`.
- Logger is not part of business logic.

## 4.7 Exceptions

If a method's current contract rethrows a non-`AppException`, this behavior must be explicitly verified with:

```Dart
await expectLater(
  () => cubit.someMethod(),
  throwsA(isA<StateError>()),
);
```

## 4.8 Principles

- One test — one scenario.
- Test behavior, not implementation.
- Use `const` states where possible.
- Do not test internal implementation details.
- Do not duplicate production logic inside tests.
