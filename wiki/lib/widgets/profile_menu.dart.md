# ProfileMenu Widget Documentation

## Overview
The `ProfileMenu` widget is a reusable UI component designed for creating menu items in a profile or settings screen. It is implemented as a `StatelessWidget` and provides a customizable layout with an icon, text, and an optional action when pressed.

---

## Features
- Displays an icon and text in a row layout.
- Includes a trailing arrow icon (`Icons.arrow_forward_ios`) for navigation indication.
- Customizable padding, background color, and text style.
- Supports click actions via a `VoidCallback`.

---

## Constructor
The `ProfileMenu` widget is constructed using the following parameters:

| Parameter | Type          | Description                                                                 | Required |
|-----------|---------------|-----------------------------------------------------------------------------|----------|
| `text`    | `String`      | The text to display in the menu item.                                       | Yes      |
| `icon`    | `String`      | The path to the SVG icon to display.                                        | Yes      |
| `press`   | `VoidCallback`| A callback function triggered when the menu item is pressed.                | No       |
| `key`     | `Key`         | An optional key for the widget, useful for testing or widget identification.| No       |

---

## Properties
The widget has the following properties:

| Property | Type          | Description                                                                 |
|----------|---------------|-----------------------------------------------------------------------------|
| `text`   | `String`      | The label text displayed in the menu item.                                  |
| `icon`   | `String`      | The SVG icon path used for the menu item.                                   |
| `press`  | `VoidCallback`| The function executed when the menu item is pressed.                        |

---

## Methods
### `build(BuildContext context)`
The `build` method constructs the widget tree for the `ProfileMenu`. It uses the following components:
- **Padding**: Adds horizontal and vertical spacing around the menu item.
- **TextButton**: The main clickable area of the menu item, styled with padding, background color, and rounded corners.
- **Row**: Arranges the icon, text, and trailing arrow in a horizontal layout.
- **ImageFactory.svg**: Renders the SVG icon with a specified color and size.
- **Text**: Displays the menu label with a custom font size and color.
- **Icon**: Displays a forward arrow icon for navigation.

---

## Styling
The widget uses the following styles:
- **Background Color**: `Color(0xFFF5F6F9)` (light gray).
- **Primary Color**: Defined by the `primaryColor` constant.
- **Text Color**: Defined by the `textColor` constant.
- **Font Size**: `18` for the menu text.
- **Padding**: 
  - Horizontal: `20`
  - Vertical: `10`
  - Internal (TextButton): `20`
- **Border Radius**: `15` for rounded corners.

---

## Dependencies
The `ProfileMenu` widget relies on the following:
- **Flutter Material Library**: For core UI components like `TextButton`, `Icon`, and `EdgeInsets`.
- **Constants**: `primaryColor` and `textColor` are imported from `fluttergram/ui_shared/constants.dart`.
- **ImageFactory**: A utility for rendering SVG icons, imported from `fluttergram/ui_shared/images.dart`.

---

## Usage
Below is an example of how to use the `ProfileMenu` widget:

```dart
ProfileMenu(
  text: "Settings",
  icon: "assets/icons/settings.svg",
  press: () {
    print("Settings menu pressed");
  },
);
```

---

## Insights
- **Reusability**: The `ProfileMenu` widget is highly reusable for creating consistent menu items across an application.
- **Customizability**: Developers can easily modify the text, icon, and action behavior to suit their needs.
- **Design Consistency**: By using shared constants (`primaryColor`, `textColor`), the widget ensures a consistent look and feel across the app.
- **SVG Support**: The use of `ImageFactory.svg` allows for scalable and high-quality icons.
