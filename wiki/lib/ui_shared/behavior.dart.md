# Documentation: `behavior.dart`

## Overview

This file contains the implementation of a custom scroll behavior in Flutter. The primary purpose of the `NeverGrowthScroll` class is to override the default vertical scroll behavior, ensuring that no additional visual effects (such as overscroll glow) are applied to the viewport.

---

## Class: `NeverGrowthScroll`

### Description
The `NeverGrowthScroll` class extends the `ScrollBehavior` class provided by Flutter. It customizes the behavior of scrollable widgets by overriding the `buildViewportChrome` method. This ensures that the viewport does not display any chrome effects, such as overscroll glow, regardless of the scroll direction.

### Implementation

#### Constructor
The class does not define a custom constructor, as it relies on the default constructor provided by Dart.

#### Method: `buildViewportChrome`
```dart
@override
Widget buildViewportChrome(
    BuildContext context, Widget child, AxisDirection axisDirection) =>
    child;
```

- **Purpose**: This method is overridden to remove any visual effects (chrome) applied to the viewport during scrolling.
- **Parameters**:
  - `BuildContext context`: The build context in which the widget is being built.
  - `Widget child`: The child widget that represents the scrollable content.
  - `AxisDirection axisDirection`: The direction of the scroll (e.g., vertical or horizontal).
- **Return Value**: Returns the `child` widget directly, bypassing any additional chrome effects.

---

## Insights

- **Use Case**: This class is particularly useful in applications where a clean and minimalistic scroll experience is desired, without the default overscroll glow effect.
- **Integration**: To apply this custom scroll behavior globally, you can use the `ScrollConfiguration` widget in your Flutter app:
  ```dart
  ScrollConfiguration(
    behavior: NeverGrowthScroll(),
    child: YourScrollableWidget(),
  );
  ```
- **Customization**: While this implementation removes all viewport chrome effects, developers can further customize the `buildViewportChrome` method to apply specific visual effects if needed.

---

## Metadata

| Key         | Value            |
|-------------|------------------|
| **File Name** | `behavior.dart` |
