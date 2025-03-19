# Documentation: `login_event.dart`

## Overview

This file defines the `LoginEvent` class hierarchy, which is part of the `login_bloc.dart` file. It is used to represent events related to the login process in a BLoC (Business Logic Component) architecture. The events defined here are immutable and are intended to be dispatched to the `LoginBloc` for handling.

## Data Structures

### `LoginEvent`

- **Type**: Abstract class
- **Purpose**: Serves as the base class for all login-related events.
- **Attributes**: None (abstract class).

### `Login`

- **Type**: Concrete class extending `LoginEvent`
- **Purpose**: Represents the event of attempting to log in with user credentials.
- **Attributes**:
  - `email` (String): The email address of the user attempting to log in.
  - `password` (String): The password of the user attempting to log in.

#### Constructor

| Parameter | Type   | Description                          |
|-----------|--------|--------------------------------------|
| `email`   | String | The user's email address.           |
| `password`| String | The user's password.                |

The constructor is used to initialize the `email` and `password` fields when creating a `Login` event.

## Insights

- **Immutability**: The `@immutable` annotation ensures that instances of `LoginEvent` and its subclasses cannot be modified after they are created. This is a best practice in event-driven architectures to maintain consistency and avoid side effects.
- **BLoC Integration**: This file is part of a larger BLoC implementation (`login_bloc.dart`). The `LoginEvent` class hierarchy is designed to encapsulate user actions (e.g., login attempts) and pass them to the BLoC for processing.
- **Extensibility**: The `LoginEvent` class is abstract, allowing for the addition of new event types in the future (e.g., `Logout`, `ForgotPassword`) without modifying existing code.
- **Null Safety**: The constructor does not enforce non-null values for `email` and `password`. Consider adding validation or using required named parameters to ensure data integrity.
