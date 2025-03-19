# Documentation: `bottom_navbar.dart`

## Overview
This file defines a `BottomNavBar` widget, a custom bottom navigation bar for a Flutter application. It provides navigation between different screens (`Home`, `Favourite`, `Message`, and `Profile`) using icons. The widget is designed to visually indicate the currently selected menu item and supports navigation to the respective screens.

---

## Components

### Enum: `MenuState`
The `MenuState` enum defines the possible states of the bottom navigation bar. It is used to track the currently selected menu item.

| Value      | Description                          |
|------------|--------------------------------------|
| `home`     | Represents the Home screen.          |
| `favourite`| Represents the Favourite section.    |
| `message`  | Represents the Message/Chat screen.  |
| `profile`  | Represents the Profile screen.       |

---

### Class: `BottomNavBar`
The `BottomNavBar` is a `StatelessWidget` that renders the bottom navigation bar. It uses the `MenuState` enum to determine the active menu item and provides navigation functionality.

#### Constructor
| Parameter       | Type          | Description                                      |
|-----------------|---------------|--------------------------------------------------|
| `selectedMenu`  | `MenuState`   | The currently selected menu item.               |
| `key`           | `Key`         | Optional key for the widget.                    |

#### Properties
| Property        | Type          | Description                                      |
|-----------------|---------------|--------------------------------------------------|
| `selectedMenu`  | `MenuState`   | Tracks the active menu item.                    |

#### Methods
- **`build(BuildContext context)`**  
  Builds the widget tree for the bottom navigation bar. It includes:
  - A `Container` with padding, background color, shadow, and rounded corners.
  - A `Row` containing four `IconButton` widgets, each representing a menu item.

---

## Features

### Design
- **Styling**: The navigation bar has a white background, shadow effect, and rounded top corners.
- **Active/Inactive Icons**: The active menu item's icon is highlighted with the `primaryColor`, while inactive icons use a gray color (`inActiveIconColor`).

### Navigation
Each menu item is represented by an `IconButton`:
- **Home**: Navigates to the `HomeScreen` using `Navigator.pushNamed`.
- **Favourite**: Currently does not navigate to any screen (placeholder functionality).
- **Message**: Navigates to the `ChatScreen` using `Navigator.pushNamed`.
- **Profile**: Navigates to the `ProfileScreen` using `Navigator.pushNamed`.

### Responsiveness
The icon sizes are dynamically calculated using `getProportionateScreenHeight` and `getProportionateScreenWidth` to ensure responsiveness across different screen sizes.

---

## Insights

1. **Reusability**: The `BottomNavBar` widget is reusable across multiple screens by passing the `selectedMenu` parameter to indicate the active menu item.
2. **Scalability**: The use of the `MenuState` enum makes it easy to add or modify menu items in the future.
3. **Custom Icon Handling**: The `ImageFactory.svg` method is used to load SVG icons, allowing for scalable and high-quality icons.
4. **Placeholder Functionality**: The `Favourite` menu item currently lacks navigation functionality, which can be implemented later.
5. **Safe Area Usage**: The widget uses `SafeArea` to ensure proper rendering on devices with notches or other screen cutouts.

---

## Dependencies
- **Flutter Material Package**: Provides core Flutter widgets and design elements.
- **Custom Packages**:
  - `fluttergram/screen/chat/chat_view.dart`: Defines the `ChatScreen`.
  - `fluttergram/screen/home/home_view.dart`: Defines the `HomeScreen`.
  - `fluttergram/screen/profile/profile_view.dart`: Defines the `ProfileScreen`.
  - `fluttergram/ui_shared/images.dart`: Provides the `ImageFactory` for loading SVG icons.
  - `fluttergram/ui_shared/constants.dart`: Defines the `primaryColor`.
  - `fluttergram/ui_shared/size_config.dart`: Provides responsive size utilities (`getProportionateScreenHeight`, `getProportionateScreenWidth`).

---

## Potential Enhancements
1. **Dynamic Menu Items**: Allow dynamic addition of menu items by passing a list of configurations.
2. **State Management**: Integrate with a state management solution (e.g., Provider, Riverpod) for better control over the selected menu state.
3. **Accessibility**: Add semantic labels to icons for better accessibility support.
