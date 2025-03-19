# UserRepository Class Documentation

## Overview

The `UserRepository` class provides an abstraction layer for user authentication using Firebase Authentication. It encapsulates methods for user registration, login, logout, and user session management. The class also handles error mapping for Firebase authentication exceptions, providing meaningful error messages.

---

## Class: `UserRepository`

### Properties

| Property       | Type            | Description                                                                 |
|----------------|-----------------|-----------------------------------------------------------------------------|
| `firebaseAuth` | `FirebaseAuth`  | Instance of Firebase Authentication used to perform authentication actions. |

---

### Constructor

| Constructor         | Description                                                                 |
|---------------------|-----------------------------------------------------------------------------|
| `UserRepository()`  | Initializes the `firebaseAuth` property with the default Firebase instance. |

---

### Methods

#### `Future<User> registerUserWithEmailPass(String email, String pass)`

Registers a new user with an email and password.

| Parameter | Type     | Description                     |
|-----------|----------|---------------------------------|
| `email`   | `String` | The email address of the user. |
| `pass`    | `String` | The password for the user.     |

**Returns:**  
A `Future<User>` representing the newly created user.

**Throws:**  
An `Exception` with a meaningful error message if registration fails.

**Error Handling:**  
The method maps Firebase error codes to user-friendly error messages using the `ErrorCodes` and `ErrorMessages` classes.

---

#### `Future<User> loginWithEmailAndPassword(String email, String password)`

Logs in a user with an email and password.

| Parameter   | Type     | Description                     |
|-------------|----------|---------------------------------|
| `email`     | `String` | The email address of the user. |
| `password`  | `String` | The password for the user.     |

**Returns:**  
A `Future<User>` representing the authenticated user.

**Throws:**  
An `Exception` with a meaningful error message if login fails.

**Error Handling:**  
The method maps Firebase error codes to user-friendly error messages using the `ErrorCodes` and `ErrorMessages` classes.

---

#### `Future<void> logout()`

Logs out the currently authenticated user.

**Returns:**  
A `Future<void>` indicating the completion of the logout process.

---

#### `bool isLoggedIn()`

Checks if a user is currently logged in.

**Returns:**  
A `bool` value:
- `true` if a user is logged in.
- `false` otherwise.

---

#### `User getCurrentUser()`

Retrieves the currently authenticated user.

**Returns:**  
A `User` object representing the currently logged-in user, or `null` if no user is logged in.

---

## Error Handling

The class uses the `ErrorCodes` and `ErrorMessages` classes to map Firebase error codes to user-friendly error messages. Below is a mapping of error codes to their corresponding messages:

| Error Code                              | Error Message                              |
|-----------------------------------------|-------------------------------------------|
| `ERROR_C0DE_NETWORK_ERROR`              | `ErrorMessages.ERROR_C0DE_NETWORK_ERROR`  |
| `ERROR_USER_NOT_FOUND`                  | `ErrorMessages.ERROR_USER_NOT_FOUND`      |
| `ERROR_TOO_MANY_REQUESTS`               | `ErrorMessages.ERROR_TOO_MANY_REQUESTS`   |
| `ERROR_INVALID_EMAIL`                   | `ErrorMessages.ERROR_INVALID_EMAIL`       |
| `ERROR_CODE_USER_DISABLED`              | `ErrorMessages.ERROR_CODE_USER_DISABLED`  |
| `ERROR_CODE_WRONG_PASSWORD`             | `ErrorMessages.ERROR_CODE_WRONG_PASSWORD` |
| `ERROR_CODE_EMAIL_ALREADY_IN_USE`       | `ErrorMessages.ERROR_CODE_EMAIL_ALREADY_IN_USE` |
| `ERROR_OPERATION_NOT_ALLOWED`           | `ErrorMessages.ERROR_OPERATION_NOT_ALLOWED` |
| `ERROR_CODE_WEAK_PASSWORD` (login only) | `ErrorMessages.ERROR_CODE_WEAK_PASSWORD`  |
| Default                                 | `ErrorMessages.DEFAULT`                   |

---

## Insights

1. **Error Mapping:**  
   The class provides a robust error-handling mechanism by mapping Firebase error codes to user-friendly messages. This improves the user experience by providing clear feedback.

2. **Session Management:**  
   The `isLoggedIn` and `getCurrentUser` methods allow for easy session management, enabling developers to check the authentication state and retrieve the current user.

3. **Firebase Dependency:**  
   The class heavily relies on Firebase Authentication. Any changes to the Firebase API may require updates to this class.

4. **Extensibility:**  
   The class can be extended to include additional authentication methods, such as social login or phone authentication, by leveraging Firebase's capabilities.

5. **ErrorCodes and ErrorMessages:**  
   The `ErrorCodes` and `ErrorMessages` classes are external dependencies that must be implemented to provide meaningful error messages.
