# Documentation: `social_button.dart`

## Overview
The `SocialButton` class is a reusable UI component designed for Flutter applications. It represents a circular button with an icon, typically used for social media actions or integrations. The button is interactive and triggers a callback function when tapped.

---

## Class: `SocialButton`

### Description
The `SocialButton` is a stateless widget that encapsulates the following functionalities:
- Displays a circular button with a customizable icon.
- Executes a callback function when the button is pressed.
- Adapts its size dynamically based on screen dimensions using proportional scaling.

### Constructor
```dart
SocialButton({@required this.icon, @required this.onPress, Key key})
```

#### Parameters:
| Name      | Type                  | Description                                                                 |
|-----------|-----------------------|-----------------------------------------------------------------------------|
| `icon`    | `String`              | The path or identifier for the icon to be displayed inside the button.      |
| `onPress` | `void Function()`     | Callback function executed when the button is tapped.                      |
| `key`     | `Key` (optional)      | A unique key for the widget, useful for widget identification.              |

---

### Properties
| Name      | Type                  | Description                                                                 |
|-----------|-----------------------|-----------------------------------------------------------------------------|
| `icon`    | `String`              | Represents the icon to be displayed. Typically, it is an SVG asset.         |
| `onPress` | `void Function()`     | Callback function triggered when the button is tapped.                      |

---

### Methods

#### `build(BuildContext context)`
Builds the widget tree for the `SocialButton`.

- **Returns**: A `Widget` representing the circular button.
- **Key Components**:
  - **`InkWell`**: Provides tap detection and ripple effects.
  - **`SizedBox`**: Defines the button's dimensions using proportional screen scaling.
  - **`DecoratedBox`**: Adds styling, including background color and circular shape.
  - **`Padding`**: Ensures proper spacing around the icon.
  - **`ImageFactory.svg`**: Renders the SVG icon inside the button.

---

## Insights

### Key Features
1. **Proportional Scaling**:
   - The button's dimensions (`height` and `width`) and padding are dynamically calculated using `getProportionateScreenHeight` and `getProportionateScreenWidth`. This ensures consistent sizing across different screen sizes and resolutions.

2. **Customizable Icon**:
   - The `icon` parameter allows developers to specify any SVG asset, making the button highly versatile for various use cases.

3. **Interactive Design**:
   - The `InkWell` widget provides a user-friendly tap interaction with visual feedback.

4. **Reusable Component**:
   - The `SocialButton` is designed to be reusable across the application, reducing code duplication and improving maintainability.

### Dependencies
- **`fluttergram/ui_shared/size_config.dart`**:
  - Provides methods for proportional screen scaling (`getProportionateScreenHeight` and `getProportionateScreenWidth`).

- **`fluttergram/ui_shared/images.dart`**:
  - Contains the `ImageFactory.svg` method for rendering SVG images.

### Use Cases
- Social media login buttons (e.g., Facebook, Google, Twitter).
- Action buttons for sharing, liking, or commenting.
- Any circular button requiring an icon and tap functionality.

### Limitations
- The button is designed specifically for SVG icons. If other image formats are required, additional modifications may be necessary.
- The background color and shape are fixed. Customization would require extending or modifying the class.

---

## Metadata
| Key         | Value               |
|-------------|---------------------|
| **File Name** | `social_button.dart` |
