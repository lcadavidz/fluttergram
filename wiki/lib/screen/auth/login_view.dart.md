# Documentation: `LoginScreen` Implementation

## Overview

The `LoginScreen` is a stateful widget that provides a user interface for logging into the application. It includes input fields for email and password, validation logic, and options for social media login. The screen also integrates with a `LoginBloc` for handling authentication events and navigation services for routing.

---

## File Metadata

- **File Name**: `login_view.dart`
- **Part of**: `app.auth`

---

## Class Summary

### `LoginScreen`
- **Type**: `StatefulWidget`
- **Purpose**: Represents the login screen of the application.
- **Static Route**: `AuthScreen.route + "/login"`

### `_LoginState`
- **Type**: `State<LoginScreen>`
- **Purpose**: Manages the state and logic for the `LoginScreen`.

---

## Key Features

### 1. **State Management**
   - **`LoginBloc`**: Used to handle login events and manage authentication state.
   - **State Variables**:
     - `TextEditingController email`: Manages the email input field.
     - `TextEditingController password`: Manages the password input field.
     - `String emailError`: Stores validation error for the email field.
     - `String passwordError`: Stores validation error for the password field.

### 2. **Validation**
   - **Email Validation**:
     - Uses `InputValidator` to check for empty input and valid email format.
   - **Password Validation**:
     - Ensures the password is at least 6 characters long.

### 3. **Navigation**
   - **`goTo(String routeName)`**: Navigates to a specified route using the `NavigationService`.

### 4. **UI Components**
   - **Input Fields**:
     - Email and password fields with validation feedback.
   - **Buttons**:
     - Sign-in button (disabled if fields are empty).
     - Social media login buttons (Google, Facebook, Twitter).
   - **Links**:
     - "Forgot Password" link.
     - "Sign Up" link for new users.
   - **Checkbox**:
     - "Remember me" option.

### 5. **Lifecycle Methods**
   - **`initState()`**: Initializes the `LoginBloc` instance.
   - **`dispose()`**: Disposes of the `TextEditingController` instances to free resources.

---

## Widget Tree

| **Widget**                  | **Description**                                                                 |
|-----------------------------|---------------------------------------------------------------------------------|
| `Scaffold`                  | Provides the structure for the screen, including an `AppBar` and `body`.       |
| `AppBar`                    | Displays the title "Login" at the top of the screen.                           |
| `ScrollConfiguration`       | Customizes scrolling behavior.                                                |
| `SingleChildScrollView`     | Allows the screen to be scrollable.                                            |
| `Column`                    | Organizes the UI elements vertically.                                          |
| `Input`                     | Custom widget for email and password input fields.                            |
| `Checkbox`                  | "Remember me" option.                                                         |
| `Button`                    | Custom button for the "Sign In" action.                                        |
| `SocialButton`              | Custom buttons for social media login (Google, Facebook, Twitter).            |
| `InkWell`                   | Provides tappable links for "Forgot Password" and "Sign Up".                  |

---

## Methods

| **Method**          | **Description**                                                                                     |
|---------------------|-----------------------------------------------------------------------------------------------------|
| `goTo(String routeName)` | Navigates to the specified route using the `NavigationService`.                                  |
| `validateEmail(String _)` | Validates the email input and updates the `emailError` state.                                   |
| `validatePassword(String _)` | Validates the password input and updates the `passwordError` state.                          |
| `initState()`       | Initializes the `LoginBloc` and sets up the state.                                                  |
| `dispose()`         | Disposes of the `TextEditingController` instances to prevent memory leaks.                          |

---

## Insights

1. **Validation Logic**:
   - The email validation uses a centralized `InputValidator` utility, which ensures consistency across the application.
   - Password validation is simple but effective, enforcing a minimum length of 6 characters.

2. **Navigation Abstraction**:
   - The use of `NavigationService` decouples navigation logic from the UI, making the code more modular and testable.

3. **Responsive Design**:
   - The screen layout uses utility methods like `getProportionateScreenWidth` and `getProportionateScreenHeight` to adapt to different screen sizes.

4. **Social Media Integration**:
   - Placeholder buttons for Google, Facebook, and Twitter login are included, indicating potential for third-party authentication.

5. **User Experience**:
   - The screen provides clear feedback for validation errors and includes helpful links for password recovery and account creation.

6. **Code Modularity**:
   - Custom widgets like `Input`, `Button`, and `SocialButton` improve reusability and maintainability.

---

## Dependencies

| **Dependency**         | **Purpose**                                                                 |
|------------------------|-----------------------------------------------------------------------------|
| `NavigationService`    | Handles navigation between screens.                                         |
| `LoginBloc`            | Manages authentication state and events.                                   |
| `InputValidator`       | Provides validation utilities for input fields.                            |
| `SizeConfig`           | Handles responsive design calculations.                                    |
| `Icons`                | Provides material design icons for input fields.                           |
| `primaryColor`         | Defines the primary color used in the UI.                                  |

---
