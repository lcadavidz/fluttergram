# Documentation: `Button` Widget

## Overview

The `Button` class is a custom reusable widget in Flutter that extends the `StatelessWidget`. It provides a styled button with customizable text, action, and state (enabled/disabled). This widget is designed to adapt to the screen size and is styled to match a specific design system.

---

## File Metadata

- **File Name**: `button.dart`

---

## Class: `Button`

### Constructor

The `Button` class constructor allows the creation of a button with the following parameters:

| Parameter   | Type                  | Description                                                                 | Required | Default Value |
|-------------|-----------------------|-----------------------------------------------------------------------------|----------|---------------|
| `text`      | `String`              | The text to display on the button.                                          | Yes      | N/A           |
| `onPress`   | `void Function()`     | The callback function to execute when the button is pressed.                | Yes      | N/A           |
| `disable`   | `bool`                | Determines whether the button is disabled.                                  | No       | `false`       |
| `key`       | `Key`                 | An optional key for the widget.                                             | No       | `null`        |

---

### Properties

| Property    | Type                  | Description                                                                 |
|-------------|-----------------------|-----------------------------------------------------------------------------|
| `text`      | `String`              | The text displayed on the button.                                           |
| `onPress`   | `void Function()`     | The callback function executed when the button is pressed.                  |
| `disable`   | `bool`                | Indicates whether the button is disabled.                                   |

---

### Methods

#### `build(BuildContext context)`

- **Description**: Builds the widget tree for the `Button` widget.
- **Returns**: A `Widget` that represents the button.
- **Implementation**:
  - Uses a `LayoutBuilder` to adapt the button's width to the available constraints.
  - The button is styled using `TextButton` with the following properties:
    - **Text Style**: Font size is dynamically calculated using `getProportionateScreenWidth(18)` for responsive design. The text color is set to white.
    - **Shape**: A rounded rectangle with a border radius of 30.
    - **Background Color**: 
      - If `disable` is `false`, the button uses the `primaryColor` from the constants.
      - If `disable` is `true`, the button uses a predefined color (`Color(0xFFFFAF91)`).
    - **OnPressed**: 
      - If `disable` is `false`, the `onPress` callback is executed.
      - If `disable` is `true`, the button is disabled (`onPressed` is `null`).

---

## Insights

1. **Responsive Design**: The button's font size is dynamically calculated using `getProportionateScreenWidth`, ensuring it adapts to different screen sizes.
2. **Custom Styling**: The button's appearance is highly customizable, with a rounded shape and dynamic background color based on its state (`disable`).
3. **Reusability**: This widget is designed to be reusable across the application, reducing code duplication and ensuring consistent styling.
4. **State Management**: The `disable` property allows for easy state management, enabling or disabling the button as needed.
5. **Dependencies**:
   - `size_config.dart`: Provides the `getProportionateScreenWidth` function for responsive design.
   - `constants.dart`: Supplies the `primaryColor` for consistent theming.

---

## Usage Example

```dart
Button(
  text: "Submit",
  onPress: () {
    print("Button Pressed");
  },
  disable: false,
)
```

In this example:
- The button displays the text "Submit".
- When pressed, it prints "Button Pressed" to the console.
- The button is enabled (`disable: false`).
