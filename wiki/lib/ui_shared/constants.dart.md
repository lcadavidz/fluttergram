# Documentation: `constants.dart`

## Overview
This file contains a set of constants and styles used throughout a Flutter application. These constants are primarily focused on defining colors, gradients, text styles, and animation durations, ensuring consistency and reusability across the app.

---

## Constants

### Colors
The following color constants are defined for use in the application:

| Constant Name         | Type          | Value                  | Description                                                                 |
|-----------------------|---------------|------------------------|-----------------------------------------------------------------------------|
| `primaryColor`        | `Color`       | `Color(0xFFFF7643)`    | The primary color used in the app's theme.                                 |
| `primaryLightColor`   | `Color`       | `Color(0xFFFFECDF)`    | A lighter variant of the primary color.                                    |
| `primaryGradientColor`| `LinearGradient` | Gradient from `Color(0xFFFFA53E)` to `Color(0xFFFF7643)` | A gradient used for backgrounds or UI elements.                           |
| `secondaryColor`      | `Color`       | `Color(0xFF979797)`    | A secondary color for less prominent UI elements.                          |
| `textColor`           | `Color`       | `Color(0xFF757575)`    | The default color for text elements.                                       |

---

### Durations
The following constants define durations for animations and transitions:

| Constant Name         | Type          | Value                  | Description                                                                 |
|-----------------------|---------------|------------------------|-----------------------------------------------------------------------------|
| `animationDuration`   | `Duration`    | `Duration(milliseconds: 200)` | The default duration for animations.                                       |
| `defaultDuration`     | `Duration`    | `Duration(milliseconds: 250)` | A slightly longer duration for other animations or transitions.            |

---

### Text Styles
The file defines a reusable text style for headings:

| Constant Name         | Type          | Description                                                                 |
|-----------------------|---------------|-----------------------------------------------------------------------------|
| `headingStyle`        | `TextStyle`   | A bold, black text style with a font size proportional to the screen width. |

#### `headingStyle` Details:
- **Font Size**: Dynamically calculated using `getProportionateScreenWidth(28)`.
- **Font Weight**: `FontWeight.bold`.
- **Color**: `Colors.black`.
- **Line Height**: `1.5`.

---

## Insights
- **Scalability**: The use of constants ensures that the app's design system is centralized, making it easier to maintain and update.
- **Dynamic Responsiveness**: The `headingStyle` leverages `getProportionateScreenWidth` from the `size_config.dart` file, ensuring text sizes adapt to different screen sizes.
- **Consistency**: By defining colors, gradients, and durations as constants, the app maintains a consistent look and feel across all components.
- **Reusability**: These constants can be imported and reused across multiple widgets and screens, reducing code duplication.
