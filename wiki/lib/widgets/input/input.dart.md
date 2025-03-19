# Documentation for `Input` Widget

## Overview

The `Input` widget is a customizable and reusable text input field designed for Flutter applications. It provides a wide range of configuration options, including support for validation, formatting, and styling. This widget is particularly useful for creating forms or input fields with specific requirements, such as password fields, phone number inputs, or currency inputs.

---

## Features

- **Customizable Input Field**: Allows configuration of label, placeholder, error messages, icons, and suffix widgets.
- **Validation and Formatting**: Supports input validation and formatting for specific use cases like phone numbers and currency.
- **Focus Management**: Handles focus management with an optional `FocusNode`.
- **Password Input**: Supports obscured text for password fields.
- **Input Formatters**: Includes support for custom input formatters and predefined types like phone numbers and money.
- **Event Handling**: Provides a callback for handling input changes.

---

## Constructor

### `Input`

| Parameter                  | Type                              | Default Value | Description                                                                                     |
|----------------------------|-----------------------------------|---------------|-------------------------------------------------------------------------------------------------|
| `controller`               | `TextEditingController`          | Required      | Manages the text being edited.                                                                 |
| `label`                    | `String`                         | `null`        | The label text displayed above the input field.                                                |
| `placeholder`              | `String`                         | `null`        | The placeholder text displayed inside the input field.                                          |
| `error`                    | `String`                         | `null`        | The error message displayed below the input field.                                              |
| `icon`                     | `IconData`                       | `null`        | An optional icon displayed at the start of the input field.                                     |
| `suffix`                   | `Widget`                         | `null`        | An optional widget displayed at the end of the input field.                                     |
| `node`                     | `FocusNode`                      | `null`        | A custom `FocusNode` for managing focus.                                                       |
| `enabled`                  | `bool`                           | `true`        | Whether the input field is enabled.                                                            |
| `autocorrect`              | `bool`                           | `false`       | Whether autocorrect is enabled.                                                                |
| `autofocus`                | `bool`                           | `false`       | Whether the input field should gain focus automatically.                                        |
| `isPassword`               | `bool`                           | `false`       | Whether the input field should obscure text (for passwords).                                    |
| `enableSuggestions`        | `bool`                           | `false`       | Whether text suggestions are enabled.                                                          |
| `keyboardType`             | `TextInputType`                  | `TextInputType.text` | The type of keyboard to use for the input field.                                               |
| `onChange`                 | `void Function(String)`          | `null`        | A callback triggered when the input value changes.                                              |
| `formatters`               | `List<TextInputFormatter>`       | `null`        | A list of custom input formatters.                                                             |
| `type`                     | `TextInputType`                  | `null`        | Specifies the type of input (e.g., phone, number).                                              |
| `textInputFormatterType`   | `TextInputFormatterType`          | `TextInputFormatterType.none` | Specifies a predefined formatter type (e.g., money).                                           |
| `key`                      | `Key`                            | `null`        | A unique key for the widget.                                                                   |

---

## Methods

### `dispose()`
- Disposes of the `FocusNode` if it was created internally.
- Ensures proper cleanup of resources.

### `initState()`
- Initializes the `FocusNode` if not provided by the user.

### `formatValue(String value)`
- Formats the input value as currency.
- Updates the `TextEditingController` with the formatted value.
- Triggers the `onChange` callback with the formatted value.

### `getDecorator()`
- Returns an `InputDecoration` object for styling the input field.
- Configures label, placeholder, error text, icons, and suffix widgets.

### `build(BuildContext context)`
- Builds the `TextFormField` widget with the configured properties.
- Applies input formatters and handles input changes.

---

## Input Formatting

The widget supports the following input formatting options:

| Formatter Type                  | Description                                                                 |
|---------------------------------|-----------------------------------------------------------------------------|
| `TextInputFormatterType.none`   | No special formatting is applied.                                           |
| `TextInputFormatterType.money`  | Formats the input as currency (e.g., adds commas and limits to 11 digits).  |
| `TextInputType.phone`           | Formats the input as a phone number (e.g., `### ### ####`).                 |

---

## Insights

1. **Focus Management**: The widget provides flexibility in managing focus by allowing users to pass a custom `FocusNode` or letting the widget create one internally.
2. **Currency Formatting**: The `formatValue` method ensures that numeric inputs are formatted as currency, making it ideal for financial applications.
3. **Error Handling**: The widget supports error messages with customizable styles, improving user feedback.
4. **Reusability**: The widget is highly reusable due to its extensive configuration options and support for various input types.
5. **Extensibility**: Developers can extend the widget's functionality by providing custom input formatters or modifying the `onChange` callback.

---

## Dependencies

The widget relies on the following packages:
- `flutter_multi_formatter`: For input formatting (e.g., currency and phone numbers).
- `flutter/material.dart`: For UI components and styling.
- `flutter/services.dart`: For input formatters and text editing utilities.

---

## Example Usage

```dart
Input(
  controller: TextEditingController(),
  label: "Phone Number",
  placeholder: "Enter your phone number",
  icon: Icons.phone,
  keyboardType: TextInputType.phone,
  textInputFormatterType: TextInputFormatterType.none,
  onChange: (value) {
    print("Input changed: $value");
  },
)
```
