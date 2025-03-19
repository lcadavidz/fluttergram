# Documentation: `StorageRepository` Class

## Overview
The `StorageRepository` class provides an abstraction layer for interacting with Firebase Storage in a Dart application. It encapsulates common operations such as uploading files, retrieving download URLs, and listing files in a folder. This class is designed to simplify Firebase Storage operations by providing reusable methods.

---

## File Metadata
- **File Name**: `storage.dart`

---

## Class: `StorageRepository`

### Purpose
The `StorageRepository` class is responsible for managing file storage operations using Firebase Storage. It initializes a Firebase Storage instance and provides methods to interact with files and folders in the storage.

---

### Constructor

#### `StorageRepository()`
- **Description**: Initializes the `StorageRepository` instance and sets up the `FirebaseStorage` instance.
- **Behavior**: 
  - Assigns the singleton instance of `FirebaseStorage` to the `storage` property.

---

### Methods

#### `setReference(String path)`
- **Description**: Creates a reference to a specific path in Firebase Storage.
- **Parameters**:
  - `path` (String): The path in Firebase Storage to which the reference should point.
- **Returns**: 
  - `Reference`: A Firebase Storage reference object for the specified path.

---

#### `Future<ListResult> getAllFilesInFolder(String path)`
- **Description**: Retrieves a list of all files and folders within a specified folder in Firebase Storage.
- **Parameters**:
  - `path` (String): The folder path in Firebase Storage.
- **Returns**: 
  - `Future<ListResult>`: A future that resolves to a `ListResult` object containing the list of files and folders.

---

#### `Future<String> getDownloadUrl(String file)`
- **Description**: Retrieves the download URL for a specific file in Firebase Storage.
- **Parameters**:
  - `file` (String): The file path in Firebase Storage.
- **Returns**: 
  - `Future<String>`: A future that resolves to the download URL of the file.

---

#### `Future<void> uploadFile(String path, String filePath)`
- **Description**: Uploads a file from the local file system to Firebase Storage.
- **Parameters**:
  - `path` (String): The destination path in Firebase Storage where the file will be uploaded.
  - `filePath` (String): The local file system path of the file to be uploaded.
- **Behavior**:
  - Creates a `File` object from the provided `filePath`.
  - Attempts to upload the file to the specified Firebase Storage path.
  - Catches and logs any `FirebaseException` that occurs during the upload process.
- **Returns**: 
  - `Future<void>`: A future that completes when the upload operation is finished.

---

## Insights

### Key Features
- **Firebase Storage Integration**: The class leverages the `FirebaseStorage` package to interact with Firebase Storage.
- **Reusability**: Provides reusable methods for common storage operations, reducing boilerplate code.
- **Error Handling**: Implements basic error handling for file uploads using `try-catch` blocks.

### Dependencies
- **Dart IO**: Used for file system operations (`File` class).
- **Firebase Storage**: The `firebase_storage` package is required for interacting with Firebase Storage.

### Potential Enhancements
- **Error Handling**: Enhance error handling by providing more detailed error messages or custom exceptions.
- **Progress Tracking**: Add support for tracking upload progress.
- **Validation**: Validate input parameters (e.g., check if `filePath` exists before attempting upload).

### Use Cases
- Uploading user-generated content (e.g., images, videos) to Firebase Storage.
- Retrieving download URLs for files to display or share.
- Listing all files in a specific folder for administrative or user-facing purposes.
