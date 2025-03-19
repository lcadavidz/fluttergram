# Walkthrough Screen Documentation

## Overview

The `WalkthroughScreen` is a Flutter widget that provides a guided introduction to the application. It consists of a series of slides that display information about the app's features, accompanied by images. The walkthrough is designed to be shown to users when they first open the app, and it transitions to the login screen upon completion.

---

## File Metadata

| **Property**       | **Value**                |
|---------------------|--------------------------|
| **File Name**       | `walkthrough_view.dart`  |
| **Purpose**         | Implements the walkthrough screen for the app. |

---

## Key Components

### 1. **Data Structure: `sliderData`**
A list of maps that defines the content for each slide in the walkthrough.

| **Key**   | **Description**                                                                 |
|-----------|---------------------------------------------------------------------------------|
| `text`    | The text description displayed on the slide.                                   |
| `image`   | The path to the image asset displayed on the slide.                            |

Example:
```dart
[
  {
    "text": "Welcome to Fluttergram",
    "image": "assets/images/friends.svg",
  },
  {
    "text": "We help people connect with friends \naround the world",
    "image": "assets/images/vacations.svg"
  },
  {
    "text": "Meet interesting people\n and interact with them",
    "image": "assets/images/love.svg",
  },
]
```

---

### 2. **Widget: `WalkthroughScreen`**
A `StatefulWidget` that manages the walkthrough screen.

#### Static Property
| **Property** | **Type** | **Description**                          |
|--------------|----------|------------------------------------------|
| `route`      | `String` | The route name for navigation purposes.  |

---

### 3. **State: `_WalkthroughScreenState`
The state class that manages the walkthrough's behavior and UI.

#### Properties
| **Property**   | **Type** | **Description**                                                                 |
|----------------|----------|---------------------------------------------------------------------------------|
| `currentPage`  | `int`    | Tracks the currently displayed slide in the walkthrough.                        |

#### Methods
| **Method**       | **Return Type** | **Description**                                                                                     |
|-------------------|----------------|-----------------------------------------------------------------------------------------------------|
| `goToLogin()`     | `void`         | Saves a flag in `SharedPreferences` to indicate the walkthrough has been viewed and navigates to the login screen. |
| `buildDot()`      | `AnimatedContainer` | Builds a dot indicator for the current slide in the walkthrough.                                   |

---

## UI Structure

The walkthrough screen is divided into two main sections:

### 1. **PageView (Slides)**
- Displays the slides defined in `sliderData`.
- Each slide contains:
  - A title ("FLUTTERGRAM").
  - A description text.
  - An SVG image loaded using `ImageFactory.svg`.
- The `PageView` updates the `currentPage` property when the user swipes between slides.

### 2. **Bottom Section**
- Contains:
  - **Dot Indicators**: Represent the current slide position.
  - **Next Button**: Navigates to the login screen when pressed.

---

## Navigation

- **Route Name**: `/walkthrough`
- **Next Screen**: `AuthScreen` (Login screen).

---

## Insights

1. **State Management**: The `currentPage` property is managed using `setState`, ensuring the UI updates dynamically as the user navigates through the slides.
2. **Persistent Storage**: The walkthrough completion status is stored in `SharedPreferences` to prevent the walkthrough from being shown again.
3. **Responsive Design**: The screen uses utility functions like `getProportionateScreenWidth` and `getProportionateScreenHeight` to ensure responsiveness across different screen sizes.
4. **Custom Widgets**: The `Button` widget is used for the "Next" button, and `ImageFactory.svg` is utilized for rendering SVG images.
5. **Animation**: The dot indicators use `AnimatedContainer` to provide a smooth transition effect when the current slide changes.
