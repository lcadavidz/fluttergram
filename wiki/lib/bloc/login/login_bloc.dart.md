# Documentation: `login_bloc.dart`

## Overview
The `LoginBloc` class is part of a Flutter application that uses the BLoC (Business Logic Component) pattern for state management. It handles user login events and manages the state transitions related to the login process. The class interacts with a `UserRepository` for authentication and a `NavigationService` for routing.

---

## File Metadata
- **File Name**: `login_bloc.dart`

---

## Class: `LoginBloc`

### Purpose
The `LoginBloc` class is responsible for:
1. Handling login events (`LoginEvent`).
2. Managing login states (`LoginState`).
3. Authenticating users via the `UserRepository`.
4. Navigating to the home screen upon successful login using `NavigationService`.

---

### Constructor
```dart
LoginBloc(this.repository) : super(LoginState());
```
- **Parameters**:
  - `repository`: An instance of `UserRepository` used for authentication.
- **Initial State**: The bloc starts with the default `LoginState`.

---

### Properties
| **Property**       | **Type**              | **Description**                                                                 |
|---------------------|-----------------------|---------------------------------------------------------------------------------|
| `repository`        | `UserRepository`     | Handles user authentication logic.                                             |
| `navigator`         | `NavigationService`  | Manages navigation and routing within the application.                         |

---

### Methods

#### `mapEventToState`
```dart
@override
Stream<LoginState> mapEventToState(LoginEvent event) async* { ... }
```
- **Purpose**: Maps incoming `LoginEvent` to corresponding state changes.
- **Logic**:
  - If the event is of type `Login`, it delegates the processing to `_mapLoginWithCredentialsPressedToState`.

---

#### `_mapLoginWithCredentialsPressedToState`
```dart
Stream<LoginState> _mapLoginWithCredentialsPressedToState({String email, String password}) async* { ... }
```
- **Purpose**: Handles the login process using the provided email and password.
- **Parameters**:
  - `email`: The user's email address.
  - `password`: The user's password.
- **Logic**:
  - Trims the email and password inputs.
  - Calls `repository.loginWithEmailAndPassword` for authentication.
  - On successful login, navigates to the home screen using `NavigationService`.
  - Logs errors to the console if authentication fails.

---

## Dependencies
| **Dependency**               | **Purpose**                                                                 |
|-------------------------------|-----------------------------------------------------------------------------|
| `bloc`                       | Provides the base class for implementing the BLoC pattern.                  |
| `fluttergram/locator.dart`   | Provides dependency injection for services like `NavigationService`.        |
| `fluttergram/helpers/navigator.dart` | Contains navigation-related utilities.                                   |
| `fluttergram/screen/home/home_view.dart` | Defines the home screen view and its route.                            |
| `fluttergram/repository/user.dart` | Handles user-related operations such as authentication.                  |
| `meta`                       | Provides annotations like `@required` for better code readability.          |

---

## Insights

1. **State Management**: The `LoginBloc` uses the BLoC pattern to separate business logic from UI, ensuring a clean architecture.
2. **Error Handling**: Errors during login are logged to the console but not propagated to the UI. Consider adding error states to inform the user about login failures.
3. **Navigation**: The `NavigationService` is used for routing, which decouples navigation logic from the UI components.
4. **Scalability**: The current implementation supports only email/password login. It can be extended to handle other authentication methods (e.g., social login).
5. **Dependency Injection**: The use of `locator` for injecting dependencies like `NavigationService` promotes modularity and testability.
