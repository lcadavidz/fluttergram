# Documentation: Forgot Password Screen

## Overview

The `ForgotPasswordScreen` is a Flutter widget that provides a user interface for users to reset their password. It allows users to input their email address and request a password reset link. The screen includes email validation and navigation to other parts of the application.

---

## File Metadata

- **File Name**: `forgot_password.dart`
- **Part of**: `app.auth`

---

## Class: `ForgotPasswordScreen`

### Description
This class is a `StatefulWidget` that represents the Forgot Password screen. It includes a static route for navigation and manages its state through the `_ForgotPasswordState` class.

### Properties
| Property         | Type                | Description                                      |
|------------------|---------------------|--------------------------------------------------|
| `route`          | `String`           | Static route for navigation to this screen.     |

---

## Class: `_ForgotPasswordState`

### Description
This class manages the state of the `ForgotPasswordScreen`. It handles user input, email validation, and navigation.

### Properties
| Property         | Type                     | Description                                      |
|------------------|--------------------------|--------------------------------------------------|
| `email`          | `TextEditingController` | Controller for the email input field.           |
| `emailError`     | `String`                | Stores the error message for email validation.  |

### Methods

#### `goTo(BuildContext context, String routeName)`
Navigates to a specified route.

- **Parameters**:
  - `context`: The `BuildContext` of the current widget.
  - `routeName`: The name of the route to navigate to.

#### `validateEmail(String _)`
Validates the email input using predefined validation rules.

- **Parameters**:
  - `_`: Placeholder for the unused parameter.
- **Logic**:
  - Uses `InputValidator` to check for empty input and valid email format.
  - Updates the `emailError` property based on validation results.

#### `build(BuildContext context)`
Builds the UI for the Forgot Password screen.

- **UI Components**:
  - **AppBar**: Displays the title "Forgot Password".
  - **Text**: Provides instructions for resetting the password.
  - **Input Field**: Allows the user to input their email address.
  - **Button**: Triggers the password reset process (currently not implemented).
  - **Navigation Link**: Redirects users to the Sign-Up screen if they don't have an account.

---

## Insights

### Key Features
1. **Email Validation**:
   - Ensures the email field is not empty and contains a valid email format.
   - Displays error messages dynamically based on validation results.

2. **Responsive Design**:
   - Uses `SizeConfig` and proportional screen dimensions to ensure the UI adapts to different screen sizes.

3. **Navigation**:
   - Provides a seamless way to navigate to the Sign-Up screen or other parts of the app.

4. **Custom Widgets**:
   - Utilizes custom widgets like `Input` and `Button` for consistent design and functionality.

### Dependencies
- **InputValidator**: A utility for validating user input.
- **SizeConfig**: A utility for responsive design.
- **Custom Widgets**:
  - `Input`: For rendering input fields.
  - `Button`: For rendering buttons with actions.
- **Navigation**: Relies on `Navigator.pushNamed` for route management.

### Potential Enhancements
- **Password Reset Logic**:
  - Implement the functionality for sending a password reset link when the "Send" button is pressed.
- **Error Handling**:
  - Add user-friendly error messages for network or server issues during the password reset process.
- **Accessibility**:
  - Ensure the screen is fully accessible, including support for screen readers and keyboard navigation.

### Static Route
The static route `ForgotPasswordScreen.route` is defined as:
```
"${AuthScreen.route}/forgot_password"
```
This allows for easy navigation to the Forgot Password screen from other parts of the app.

---

## UI Components Summary

| Component         | Description                                                                 |
|-------------------|-----------------------------------------------------------------------------|
| **AppBar**        | Displays the title "Forgot Password".                                      |
| **Text**          | Provides instructions for resetting the password.                         |
| **Input Field**   | Allows the user to input their email address.                              |
| **Button**        | Triggers the password reset process (currently not implemented).           |
| **Navigation Link**| Redirects users to the Sign-Up screen if they don't have an account.      |

---
