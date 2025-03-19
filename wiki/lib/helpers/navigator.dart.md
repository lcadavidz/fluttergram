# Documentation: `navigator.dart`

## Overview

The `NavigationService` class provides a centralized service for managing navigation within a Flutter application. It abstracts navigation logic, allowing developers to perform navigation operations without directly relying on `BuildContext`. This is particularly useful for scenarios where navigation needs to be triggered from non-widget classes, such as services or controllers.

---

## Class: `NavigationService`

### Properties

| Property Name       | Type                          | Description                                                                 |
|---------------------|-------------------------------|-----------------------------------------------------------------------------|
| `navigatorKey`      | `GlobalKey<NavigatorState>`   | A global key used to access the primary navigator's state.                 |
| `authNavigatorKey`  | `GlobalKey<NavigatorState>`   | A global key used to access the authentication navigator's state.          |

---

### Methods

#### `push`
Navigates to a new route by pushing it onto the navigation stack.

**Signature:**
```dart
void push(GlobalKey<NavigatorState> navKey, {BuildContext context, String route, dynamic params})
```

| Parameter   | Type                          | Description                                                                 |
|-------------|-------------------------------|-----------------------------------------------------------------------------|
| `navKey`    | `GlobalKey<NavigatorState>`   | The navigator key to use for navigation. Defaults to `navigatorKey` if null. |
| `context`   | `BuildContext`               | (Optional) The build context.                                              |
| `route`     | `String`                     | The name of the route to navigate to.                                       |
| `params`    | `dynamic`                    | (Optional) Parameters to pass to the route.                                 |

---

#### `replace`
Replaces the current route with a new route.

**Signature:**
```dart
void replace(GlobalKey<NavigatorState> navKey, {String route, dynamic params})
```

| Parameter   | Type                          | Description                                                                 |
|-------------|-------------------------------|-----------------------------------------------------------------------------|
| `navKey`    | `GlobalKey<NavigatorState>`   | The navigator key to use for navigation. Defaults to `navigatorKey` if null. |
| `route`     | `String`                     | The name of the route to navigate to.                                       |
| `params`    | `dynamic`                    | (Optional) Parameters to pass to the route.                                 |

---

#### `removeHistory`
Clears the navigation stack by popping all routes.

**Signature:**
```dart
void removeHistory(GlobalKey<NavigatorState> navKey)
```

| Parameter   | Type                          | Description                                                                 |
|-------------|-------------------------------|-----------------------------------------------------------------------------|
| `navKey`    | `GlobalKey<NavigatorState>`   | The navigator key to use for navigation. Defaults to `navigatorKey` if null. |

---

#### `popAndPush`
Pops the current route and pushes a new route onto the stack.

**Signature:**
```dart
void popAndPush(GlobalKey<NavigatorState> navKey, {String route})
```

| Parameter   | Type                          | Description                                                                 |
|-------------|-------------------------------|-----------------------------------------------------------------------------|
| `navKey`    | `GlobalKey<NavigatorState>`   | The navigator key to use for navigation. Defaults to `navigatorKey` if null. |
| `route`     | `String`                     | The name of the route to navigate to.                                       |

---

#### `goBack`
Pops the current route off the stack and optionally returns a result.

**Signature:**
```dart
void goBack(GlobalKey<NavigatorState> navKey, dynamic params)
```

| Parameter   | Type                          | Description                                                                 |
|-------------|-------------------------------|-----------------------------------------------------------------------------|
| `navKey`    | `GlobalKey<NavigatorState>`   | The navigator key to use for navigation. Defaults to `navigatorKey` if null. |
| `params`    | `dynamic`                    | (Optional) The result to return to the previous route.                      |

---

## Insights

1. **Global Navigation Management**: The use of `GlobalKey<NavigatorState>` allows navigation to be managed globally, decoupling it from the widget tree. This is particularly useful for triggering navigation from non-UI components.

2. **Multiple Navigator Support**: The class supports multiple navigators (`navigatorKey` and `authNavigatorKey`), enabling the management of separate navigation stacks (e.g., for authentication flows).

3. **Error Handling**: The methods assume that the provided `navKey` is valid and initialized. Additional error handling could be implemented to handle cases where `navKey.currentState` is null.

4. **Flexibility**: The methods provide flexibility by allowing optional parameters (`params`) to pass data between routes.

5. **Simplified Navigation**: By abstracting navigation logic, this service reduces boilerplate code and improves maintainability.

---

## Usage Example

```dart
final NavigationService navigationService = NavigationService();

// Navigate to a new route
navigationService.push(navigationService.navigatorKey, route: '/home', params: {'userId': 123});

// Replace the current route
navigationService.replace(navigationService.navigatorKey, route: '/login');

// Clear navigation history
navigationService.removeHistory(navigationService.navigatorKey);

// Pop the current route and push a new one
navigationService.popAndPush(navigationService.navigatorKey, route: '/dashboard');

// Go back to the previous route
navigationService.goBack(navigationService.navigatorKey, {'result': 'success'});
```
