# Documentation: Error Codes and Messages

## Overview

This Dart file defines two classes, `ErrorCodes` and `ErrorMessages`, which serve as data structures for managing error codes and their corresponding user-friendly error messages. These classes are designed to standardize error handling in an application, particularly for Firebase-related errors.

---

## Classes

### 1. `ErrorCodes`

The `ErrorCodes` class contains a set of static constant strings that represent various error codes. These codes are typically used to identify specific error scenarios in the application.

#### Error Codes

| Constant Name                          | Value                     | Description                                      |
|----------------------------------------|---------------------------|--------------------------------------------------|
| `ERROR_C0DE_NETWORK_ERROR`             | `"FirebaseException"`     | Represents a network-related error.             |
| `ERROR_USER_NOT_FOUND`                 | `"user-not-found"`        | Indicates that the user could not be found.     |
| `ERROR_TOO_MANY_REQUESTS`              | `"operation-not-allowed"` | Represents too many requests being made.        |
| `ERROR_INVALID_EMAIL`                  | `"invalid-email"`         | Indicates an invalid email format.              |
| `ERROR_CODE_USER_DISABLED`             | `"user-disabled"`         | Represents a disabled user account.             |
| `ERROR_CODE_WRONG_PASSWORD`            | `"wrong-password"`        | Indicates an incorrect password.                |
| `ERROR_CODE_EMAIL_ALREADY_IN_USE`      | `"email-already-in-use"`  | Indicates that the email is already registered. |
| `ERROR_OPERATION_NOT_ALLOWED`          | `"operation-not-allowed"` | Represents an operation that is not allowed.    |
| `ERROR_CODE_WEAK_PASSWORD`             | `"weak-password"`         | Indicates that the password is too weak.        |

---

### 2. `ErrorMessages`

The `ErrorMessages` class contains a set of static constant strings that provide user-friendly error messages corresponding to the error codes defined in the `ErrorCodes` class. These messages are intended to be displayed to the user.

#### Error Messages

| Constant Name                          | Value                                      | Description                                      |
|----------------------------------------|--------------------------------------------|--------------------------------------------------|
| `ERROR_C0DE_NETWORK_ERROR`             | `"Network Error! Check internet connection."` | Message for network-related errors.             |
| `ERROR_USER_NOT_FOUND`                 | `"User Not Found!"`                        | Message when the user is not found.             |
| `ERROR_TOO_MANY_REQUESTS`              | `"Too Many Requests!"`                     | Message for rate-limiting scenarios.            |
| `ERROR_INVALID_EMAIL`                  | `"Invalid Email!"`                         | Message for invalid email format.               |
| `ERROR_CODE_USER_DISABLED`             | `"User is Banned!"`                        | Message for disabled user accounts.             |
| `ERROR_CODE_WRONG_PASSWORD`            | `"Wrong Password!"`                        | Message for incorrect password input.           |
| `ERROR_CODE_EMAIL_ALREADY_IN_USE`      | `"This email is already in use!"`          | Message for duplicate email registration.       |
| `ERROR_OPERATION_NOT_ALLOWED`          | `"Operation not allowed"`                  | Message for disallowed operations.              |
| `ERROR_CODE_WEAK_PASSWORD`             | `"Weak password!"`                         | Message for weak password input.                |
| `DEFAULT`                              | `"Unknown error!"`                         | Default message for unspecified errors.         |

---

## Insights

- **Purpose**: These classes are designed to decouple error codes from their user-facing messages, making the codebase more maintainable and scalable.
- **Usage**: 
  - `ErrorCodes` can be used to match error responses from APIs or services (e.g., Firebase).
  - `ErrorMessages` can be used to display meaningful messages to the user based on the error code.
- **Scalability**: Adding new error codes and messages is straightforward, as they are defined as constants.
- **Consistency**: By centralizing error codes and messages, the application ensures consistent error handling and messaging across different modules.
- **Default Handling**: The `DEFAULT` message in `ErrorMessages` provides a fallback for unknown errors, ensuring the user is always informed.
