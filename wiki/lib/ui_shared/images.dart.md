# Documentation: `images.dart`

## Overview
The `images.dart` file defines a utility class `ImageFactory` for creating image widgets in a Flutter application. It provides methods to handle both raster images (e.g., PNG, JPG) and vector images (SVG). This class simplifies the process of rendering images from assets by abstracting the logic for different image formats.

---

## Class: `ImageFactory`

### Purpose
The `ImageFactory` class is designed to streamline the creation of image widgets in Flutter. It supports both raster images and SVG images, allowing developers to specify dimensions, alignment, and other properties in a consistent manner.

---

### Methods

#### 1. `fromAssets`
Creates an image widget from an asset file. It automatically determines whether the asset is an SVG or a raster image based on the file extension.

**Signature:**
```dart
static Widget fromAssets({
  @required String asset,
  double height,
  double width,
  BoxFit fit = BoxFit.contain
})
```

**Parameters:**
| Parameter | Type         | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| `asset`   | `String`     | The path to the asset file. **Required**.                                   |
| `height`  | `double`     | The height of the image widget. Optional.                                   |
| `width`   | `double`     | The width of the image widget. Optional.                                    |
| `fit`     | `BoxFit`     | Defines how the image should be inscribed into the widget. Default: `BoxFit.contain`. |

**Behavior:**
- If the asset file ends with `.svg`, it delegates the rendering to the `svg` method.
- Otherwise, it uses `Image.asset` to render raster images.

**Returns:**  
A `Widget` representing the image.

---

#### 2. `svg`
Creates an SVG image widget from an asset file.

**Signature:**
```dart
static Widget svg(
  String name, {
  double height,
  double width,
  BoxFit fit = BoxFit.contain,
  Color color,
  AlignmentGeometry alignment = Alignment.center,
})
```

**Parameters:**
| Parameter     | Type                | Description                                                                 |
|---------------|---------------------|-----------------------------------------------------------------------------|
| `name`        | `String`            | The path to the SVG asset file. **Required**.                               |
| `height`      | `double`            | The height of the SVG widget. Optional.                                     |
| `width`       | `double`            | The width of the SVG widget. Optional.                                      |
| `fit`         | `BoxFit`            | Defines how the SVG should be inscribed into the widget. Default: `BoxFit.contain`. |
| `color`       | `Color`             | Applies a color filter to the SVG. Optional.                                |
| `alignment`   | `AlignmentGeometry` | Defines the alignment of the SVG within its bounds. Default: `Alignment.center`. |

**Returns:**  
A `Widget` representing the SVG image.

---

## Insights

### Key Features
1. **Automatic Format Detection:**  
   The `fromAssets` method automatically detects whether the asset is an SVG or a raster image based on the file extension, reducing the need for manual checks.

2. **Customizable Rendering:**  
   Both methods allow customization of dimensions (`height`, `width`), alignment, and fitting behavior (`BoxFit`).

3. **SVG-Specific Options:**  
   The `svg` method provides additional options like `color` and `alignment`, which are specific to SVG rendering.

### Use Cases
- Rendering images in a Flutter application from asset files.
- Handling both raster and vector images seamlessly.
- Applying consistent styling and alignment to images.

### Dependencies
- **Flutter Material Package:** Provides the `Image.asset` widget for raster images.
- **Flutter SVG Package:** Provides the `SvgPicture.asset` widget for SVG images.

---

### Example Usage

#### Rendering a Raster Image:
```dart
Widget pngImage = ImageFactory.fromAssets(
  asset: 'assets/images/example.png',
  height: 100,
  width: 100,
  fit: BoxFit.cover,
);
```

#### Rendering an SVG Image:
```dart
Widget svgImage = ImageFactory.fromAssets(
  asset: 'assets/images/example.svg',
  height: 100,
  width: 100,
  fit: BoxFit.contain,
);
```

#### Directly Using the `svg` Method:
```dart
Widget customSvgImage = ImageFactory.svg(
  'assets/images/example.svg',
  height: 150,
  width: 150,
  color: Colors.red,
  alignment: Alignment.topLeft,
);
```
