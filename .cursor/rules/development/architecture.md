---
description: "Project structure, feature-first approach, Clean Architecture layers (data, domain, presentation)"
globs: ["lib/**", "test/**"]
alwaysApply: false
---

# Project architecture

## 1.1 Overall architecture

```
lib/  
├── app/  
├── core/  
├── di/  
├── features/  
├── gen/  
├── l10n/  
├── mock/  
├── runners/  
├── uikit/  
└── main.dart  
test/
```

## 1.2 Feature-first or feature-based approach

Each feature is isolated under `lib/features/...` and typically contains:

```
features/  
└── feature_name/  
├── data/  
│ ├── models/  
│ └── repositories/  
│  
├── domain/  
│ ├── models/  
│ └── interactors/  
│  
└── presentation/  
  ├── components/  
  ├── screens/ 
  ├── models/ (optional)   
  ├── modals/ (optional)  
  └── utils/ (optional)  
```

## 1.3 Clean Architecture

Each feature has 3 layers: data, domain, and presentation.

### 1.3.1 Data layer

Data — layer for working with data sources. Contains DTOs and repositories.

Each repository is organized in its own folder:

```
data/repositories/
├── repositories.dart
└── some_repo/
    ├── some_repo.dart
    ├── i_some_repo.dart
    ├── impl_some_repo.dart
    └── mock_some_repo.dart
```

Naming convention:
- Interface: `ISomeRepo`
- Implementation: `ImplSomeRepo`
- Mock implementation: `MockSomeRepo`  

Each repository must have:
- an interface file
- an implementation file or mock implementation file

### 1.3.2 Domain layer

Domain — layer for business logic. Contains domain models (or entities) and interactors, where use-cases of similar scope or scenario are described as methods. Interactors receive repositories via constructor and use them internally.

### 1.3.3 Presentation layer

Presentation — layer for UI. Contains BLoCs/Cubits, screens, small composite components, UI models, etc. 

BLoC/Cubit receives via constructor the required interactors and logger (required ILogger logger).
