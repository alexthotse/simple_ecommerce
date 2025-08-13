# Flutter Application Refactoring Plan: MVVM-Hexagonal Architecture

This document outlines the plan to refactor the existing Flutter application into a clean, scalable, and testable MVVM-Hexagonal Architecture.

## 1. Architectural Goal

The goal is to decouple the core business logic from external concerns like UI, databases, and third-party services. This is achieved by adhering to the principles of Hexagonal Architecture (also known as Ports and Adapters).

The new structure will be organized into three main layers:

- **Domain:** The center of the hexagon. Contains the core business entities and rules. It has no dependencies on any other layer.
- **Application:** Orchestrates the domain logic. It contains the business use cases, implemented here as BLoCs. It depends only on the Domain layer.
- **Infrastructure:** Contains all the implementation details and dependencies on external frameworks (Flutter, Pocketbase, etc.). This includes the UI (Presentation), data sources, and services. It depends on the Application and Domain layers.

MVVM (Model-View-ViewModel) will be the pattern used within the Presentation adapter, where the BLoC acts as the ViewModel.

## 2. New Directory Structure

The `lib` directory will be reorganized as follows:

```
lib/
├── application/
│   └── blocs/              # Feature-specific BLoCs
├── domain/
│   ├── models/             # Pure business entities
│   └── repositories/       # Abstract repository interfaces (ports)
├── infrastructure/
│   ├── data/               # Data Transfer Objects (DTOs) for data sources
│   └── repositories/       # Concrete implementation of repositories (adapters)
└── presentation/
    ├── core/               # App-wide widgets, routing, theme
    ├── features/           # Feature-specific UI screens and widgets
    │   ├── auth/
    │   ├── cart/
    │   ├── chat/
    │   ├── checkout/
    │   ├── product_catalog/
    │   └── profile/
    └── main.dart           # Application entry point
```

## 3. File Migration Map

This table maps the existing files to their new locations.

| Old Path (`simple_ecommerce/lib/...`) | New Path (`simple_ecommerce/lib/...`) | Layer | Notes |
| :--- | :--- | :--- | :--- |
| `main.dart` | `presentation/main.dart` | Presentation | App entry point. |
| `routes.dart` | `presentation/core/routes.dart` | Presentation | Manages app navigation. |
| `theme.dart` | `presentation/core/theme.dart` | Presentation | App-wide theme data. |
| `constants.dart` | `presentation/core/constants.dart` | Presentation | App-wide constants. |
| `size_config.dart` | `presentation/core/size_config.dart` | Presentation | UI utility. |
| `helper/keyboard.dart` | `presentation/core/keyboard.dart` | Presentation | UI utility. |
| **Models** | | | |
| `models/*` | `domain/models/` | Domain | All existing models will be moved here and stripped of any data-source-specific logic. |
| **Providers (to be BLoCs)** | | | |
| `providers/RegisterProvider.dart` | `application/blocs/auth/auth_bloc.dart` | Application | Will be refactored into a BLoC. |
| `providers/CardProvider.dart` | `application/blocs/checkout/checkout_bloc.dart` | Application | Will be refactored into a BLoC. |
| `providers/ChatProvider.dart` | `application/blocs/chat/chat_bloc.dart` | Application | Will be refactored into a BLoC. |
| **Components (Shared Widgets)** | | | |
| `components/*` | `presentation/core/widgets/` | Presentation | All shared components go here. A new `widgets` subdir will be created. |
| **Screens (Feature-Specific UI)** | | | |
| `screens/splash/*` | `presentation/features/splash/` | Presentation | Splash screen is its own feature. |
| `screens/sign_in/*`, `screens/sign_up/*`, `screens/forgot_password/*`, `screens/otp/*`, `screens/login_success/*`, `screens/complete_profile/*` | `presentation/features/auth/` | Presentation | All auth-related screens and their components. |
| `screens/home/*`, `screens/details/*` | `presentation/features/product_catalog/` | Presentation | Screens for viewing products. |
| `screens/cart/*` | `presentation/features/cart/` | Presentation | The shopping cart feature. |
| `screens/profile/*` | `presentation/features/profile/` | Presentation | The user profile feature. |
| `screens/credit_card/*` | `presentation/features/checkout/` | Presentation | Credit card management belongs to the checkout flow. |
| `screens/chat/*` | `presentation/features/chat/` | Presentation | The chat feature. |

## 4. Refactoring Process

The refactoring will be executed in the following order:
1.  Create the new directory structure.
2.  Move all files according to the map above.
3.  Update all `import` statements in every `.dart` file to reflect the new paths.
4.  Refactor the state management from direct `setState` and static variables to use the new BLoCs. This will involve removing the static `SignForm.email` and passing state correctly.
5.  Connect the UI to the BLoCs using `BlocProvider` and `BlocBuilder` widgets.
6.  Create the concrete repository implementations in the `infrastructure/repositories` layer to connect to Pocketbase.
7.  Update the BLoCs to use the abstract repositories from the Domain layer, injected via dependency injection.
