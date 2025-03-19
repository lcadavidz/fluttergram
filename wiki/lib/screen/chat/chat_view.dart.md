# Chat Screen Documentation

## Overview

The `ChatScreen` is a Flutter widget that represents a chat interface. It is designed as a stateful widget to manage dynamic interactions and updates. The screen includes a search bar, a list of user profiles, and recent chat messages. It leverages custom UI components and shared utilities for responsive design and consistent styling.

---

## Metadata

| **File Name** | `chat_view.dart` |
|---------------|------------------|

---

## Features

### 1. **Search Bar**
- **Component**: `Input`
- **Purpose**: Allows users to search for specific chats or contacts.
- **Properties**:
  - `placeholder`: Displays "Search" as a hint text.
  - `controller`: Uses a `TextEditingController` to manage the input text.
  - `icon`: Displays a search icon (`Icons.search`).

### 2. **User Profiles**
- **Purpose**: Displays a row of user profile pictures with names.
- **Design**:
  - Circular profile pictures with borders.
  - Names displayed below each profile picture.
- **Users**:
  - Anna
  - Christina
  - Mary
  - Ariana

### 3. **Recent Chats**
- **Purpose**: Displays a list of recent chat messages with user avatars and message previews.
- **Design**:
  - Each chat includes:
    - Profile picture (single or group).
    - User name or group name.
    - Message preview with timestamp.
- **Chats**:
  - Jessica Park: "That's hilarious, really."
  - Daniel Lee: "Why?"
  - The Gang: "Hello, party people!"
  - Josh Yoo: "Nice photo! Where are you?"
  - Charlie Brown: "Hey dude! How's going?"

### 4. **Responsive Design**
- **Utility**: `SizeConfig`
- **Purpose**: Ensures the UI adapts to different screen sizes.
- **Usage**:
  - `getProportionateScreenHeight` and `getProportionateScreenWidth` are used to calculate dimensions relative to the screen size.

### 5. **Custom Scroll Behavior**
- **Utility**: `NeverGrowthScroll`
- **Purpose**: Prevents unwanted scroll growth effects for a smoother user experience.

### 6. **Bottom Navigation Bar**
- **Component**: `BottomNavBar`
- **Purpose**: Provides navigation options for the app.
- **Selected Menu**: `MenuState.message`

---

## Code Structure

### Class Definitions

| **Class**         | **Description**                                                                 |
|--------------------|---------------------------------------------------------------------------------|
| `ChatScreen`       | Stateful widget representing the chat screen.                                  |
| `_ChatState`       | State class for `ChatScreen`, managing dynamic UI updates and interactions.    |

### Methods

| **Method**         | **Description**                                                                 |
|--------------------|---------------------------------------------------------------------------------|
| `build(BuildContext context)` | Constructs the UI for the chat screen.                              |

---

## Insights

### 1. **Custom UI Components**
The code utilizes custom widgets like `Input`, `BottomNavBar`, and `NeverGrowthScroll` to enhance modularity and reusability.

### 2. **Dynamic Date Formatting**
The `DateFormat` utility from the `intl` package is used to format the current date dynamically, ensuring the chat timestamps are always up-to-date.

### 3. **Responsive Design**
The use of `SizeConfig` ensures the UI adapts seamlessly to various screen sizes, making the app suitable for both mobile and tablet devices.

### 4. **Scalable Design**
The modular approach to defining user profiles and chat rows allows for easy scalability. Additional profiles or chats can be added with minimal changes to the code.

### 5. **Accessibility**
The use of `TextAlign.center` and consistent styling ensures the text is readable and visually appealing.

### 6. **State Management**
The `TextEditingController` is used to manage the state of the search bar input, demonstrating effective state management within the widget.

---

## Dependencies

| **Package**        | **Purpose**                                                                 |
|--------------------|-----------------------------------------------------------------------------|
| `flutter/material.dart` | Provides core Flutter widgets and material design components.         |
| `fluttergram/ui_shared/size_config.dart` | Handles responsive design calculations.              |
| `fluttergram/ui_shared/behavior.dart` | Custom scroll behavior for smoother interactions.       |
| `fluttergram/widgets/bottom_navbar.dart` | Implements the bottom navigation bar.                |
| `fluttergram/widgets/input/input.dart` | Custom input field for the search bar.                |
| `fluttergram/ui_shared/theme.dart` | Provides consistent styling and theming.                  |
| `intl`             | Used for date formatting.                                                  |
