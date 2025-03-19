# Documentation: `size_config.dart`

## Overview
This Dart file provides a utility class and functions to handle responsive design in Flutter applications. It calculates screen dimensions and proportions based on the device's screen size, enabling developers to create layouts that adapt to different screen sizes and orientations.

---

## Class: `SizeConfig`

The `SizeConfig` class is a utility for initializing and storing screen-related properties such as width, height, and orientation. It is designed to be initialized once, typically in the `build` method of the root widget.

### Properties
| Property          | Type               | Description                                                                 |
|-------------------|--------------------|-----------------------------------------------------------------------------|
| `_mediaQueryData` | `MediaQueryData`   | Stores the `MediaQueryData` object for the current screen.                 |
| `screenWidth`     | `double`           | The width of the screen in logical pixels.                                 |
| `screenHeight`    | `double`           | The height of the screen in logical pixels.                                |
| `defaultSize`     | `double`           | Reserved for potential use as a default size (not currently implemented).  |
| `orientation`     | `Orientation`      | The orientation of the screen (`portrait` or `landscape`).                 |

### Method: `init(BuildContext context)`
This method initializes the `SizeConfig` class by extracting screen dimensions and orientation from the `MediaQuery` object.

#### Parameters
| Parameter | Type          | Description                                      |
|-----------|---------------|--------------------------------------------------|
| `context` | `BuildContext`| The build context used to access `MediaQuery`.   |

#### Usage
Call this method in the `build` method of the root widget to initialize the screen properties:
```dart
@override
Widget build(BuildContext context) {
  SizeConfig().init(context);
  return MaterialApp(
    home: MyHomePage(),
  );
}
```

---

## Functions

### `getProportionateScreenHeight(double inputHeight)`
Calculates the proportional height based on the screen size. This function ensures that the height scales appropriately across different devices.

#### Parameters
| Parameter      | Type    | Description                                      |
|----------------|---------|--------------------------------------------------|
| `inputHeight`  | `double`| The height value from the design layout.         |

#### Returns
| Type    | Description                                      |
|---------|--------------------------------------------------|
| `double`| The proportional height for the current screen.  |

#### Formula
```dart
(inputHeight / 812.0) * screenHeight
```
- `812.0` is the reference height used by the designer.

---

### `getProportionateScreenWidth(double inputWidth)`
Calculates the proportional width based on the screen size. This function ensures that the width scales appropriately across different devices.

#### Parameters
| Parameter     | Type    | Description                                      |
|---------------|---------|--------------------------------------------------|
| `inputWidth`  | `double`| The width value from the design layout.          |

#### Returns
| Type    | Description                                      |
|---------|--------------------------------------------------|
| `double`| The proportional width for the current screen.   |

#### Formula
```dart
(inputWidth / 375.0) * screenWidth
```
- `375.0` is the reference width used by the designer.

---

## Insights

1. **Responsive Design**: The `SizeConfig` class and its associated functions are essential for creating responsive layouts in Flutter. By using proportional dimensions, developers can ensure that their UI adapts seamlessly to various screen sizes and orientations.

2. **Design Reference**: The reference dimensions (`812.0` for height and `375.0` for width) are based on a specific design layout. These values should align with the dimensions used by the UI/UX designer.

3. **Orientation Handling**: The `orientation` property allows developers to adjust layouts dynamically based on whether the device is in portrait or landscape mode.

4. **Scalability**: The utility functions (`getProportionateScreenHeight` and `getProportionateScreenWidth`) abstract the complexity of scaling, making it easier to maintain consistent design across devices.

5. **Initialization Dependency**: The `SizeConfig` class must be initialized with a valid `BuildContext` before using its properties or functions. Failure to do so will result in runtime errors.
