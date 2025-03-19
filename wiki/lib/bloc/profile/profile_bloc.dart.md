# ProfileBloc Documentation

## Overview

The `ProfileBloc` class is a **Business Logic Component (BLoC)** that manages the state and events related to user profile operations. It interacts with a `UserRepository` for user-related data and a `StorageRepository` for file storage operations. This BLoC listens to specific events (`ProfileEvent`) and emits corresponding states (`ProfileState`).

---

## File Metadata

| **File Name** | `profile_bloc.dart` |
|---------------|----------------------|

---

## Class: `ProfileBloc`

### Purpose
The `ProfileBloc` is responsible for handling user profile-related events, such as updating the profile image and fetching the current user. It uses asynchronous streams to manage state transitions.

### Constructor
```dart
ProfileBloc(this.repository) : super(ProfileState());
```
- **Parameters**:
  - `repository`: An instance of `UserRepository` used to interact with user-related data.
- **Initial State**: The BLoC starts with an empty `ProfileState`.

---

## Dependencies

| **Dependency**         | **Purpose**                                                                 |
|-------------------------|-----------------------------------------------------------------------------|
| `UserRepository`        | Provides methods to fetch and update user data.                            |
| `StorageRepository`     | Handles file uploads and retrieves download URLs for stored files.         |
| `FirebaseAuth`          | Used to manage Firebase user authentication and profile updates.           |
| `bloc`                  | Provides the base `Bloc` class for state management.                       |

---

## Events and State Management

### Events
The `ProfileBloc` listens to the following events, defined in `profile_event.dart`:

| **Event**       | **Description**                                                                 |
|------------------|---------------------------------------------------------------------------------|
| `ProfileImage`   | Triggered when a user updates their profile image. Contains the image file path.|
| `CurrentUser`    | Triggered to fetch the currently authenticated user.                           |

### States
The `ProfileBloc` emits states defined in `profile_state.dart`. The primary state is `ProfileState`, which contains the following properties:

| **Property** | **Type** | **Description**                     |
|--------------|----------|-------------------------------------|
| `user`       | `User?`  | The current user object (nullable).|

---

## Methods

### `mapEventToState(ProfileEvent event)`
This method maps incoming events to corresponding state changes. It delegates the logic to private helper methods based on the event type.

#### Logic
- **`ProfileImage` Event**: Calls `_mapProfileImageEventToState` to handle profile image updates.
- **`CurrentUser` Event**: Calls `_mapCurrentUserEventToState` to fetch the current user.

---

### `_mapCurrentUserEventToState()`
Fetches the currently authenticated user from the `UserRepository` and emits a new `ProfileState` with the user data.

#### Workflow
1. Calls `repository.getCurrentUser()` to retrieve the user.
2. Emits a new `ProfileState` with the fetched user.
3. Handles any exceptions by logging the error.

---

### `_mapProfileImageEventToState(String photo)`
Handles the process of updating the user's profile image.

#### Workflow
1. Generates a unique file path for the image using the current timestamp.
2. Retrieves the current user using `repository.getCurrentUser()`.
3. Uploads the image to the storage using `StorageRepository.uploadFile`.
4. Retrieves the download URL of the uploaded image.
5. Updates the user's profile with the new photo URL using `user.updateProfile`.
6. Reloads the user data and emits a new `ProfileState` with the updated user.

---

## Insights

- **State Management**: The `ProfileBloc` uses the `bloc` package to manage state transitions in a reactive and asynchronous manner.
- **Firebase Integration**: The class integrates with Firebase Authentication to manage user profiles and Firebase Storage for file uploads.
- **Error Handling**: While exceptions are caught and logged, no error states are emitted. Consider adding error states for better user feedback.
- **Scalability**: The separation of concerns between `UserRepository` and `StorageRepository` makes the code modular and easier to test or extend.
- **Event-Driven Architecture**: The use of events (`ProfileEvent`) and states (`ProfileState`) ensures a clean separation between UI and business logic.
