# Documentation: `profile_event.dart`

## Overview

This file defines the `ProfileEvent` class hierarchy, which is part of the `profile_bloc.dart` file. It is used to represent events related to user profile management in a BLoC (Business Logic Component) architecture. The events defined here are immutable and extend the abstract base class `ProfileEvent`.

## Classes

### 1. `ProfileEvent`
- **Type**: Abstract class
- **Purpose**: Serves as the base class for all profile-related events.
- **Modifiers**: Annotated with `@immutable` to ensure that all subclasses are immutable.

### 2. `ProfileImage`
- **Type**: Concrete class
- **Purpose**: Represents an event where a profile image is updated or provided.
- **Constructor**: 
  - `ProfileImage(this.path)`
    - Accepts a `String` parameter `path` that specifies the file path of the profile image.
- **Fields**:
  - `path` (String): The file path of the profile image.

### 3. `CurrentUser`
- **Type**: Concrete class
- **Purpose**: Represents an event to fetch or handle the current user's profile information.
- **Constructor**: Implicit default constructor with no parameters.

## Insights

- **Event-Driven Design**: The `ProfileEvent` hierarchy is designed to support event-driven state management using the BLoC pattern. Each event corresponds to a specific action or trigger in the application.
- **Immutability**: The use of the `@immutable` annotation ensures that all event objects are immutable, which is a best practice in state management to avoid unintended side effects.
- **Extensibility**: The abstract `ProfileEvent` class allows for easy addition of new event types in the future without modifying existing code.
- **Separation of Concerns**: Each event class encapsulates a specific type of action, promoting clean and maintainable code.

## Usage

| Event Class    | Description                                      | Parameters         |
|----------------|--------------------------------------------------|--------------------|
| `ProfileImage` | Triggered when a profile image is updated.       | `path` (String): The file path of the profile image. |
| `CurrentUser`  | Triggered to fetch or handle the current user.   | None               |

This structure is typically used in conjunction with a `ProfileBloc` to handle these events and update the application state accordingly.
