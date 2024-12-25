# Arrays

This folder contains Dart implementations of array operations, showcasing various functionalities and methods commonly used when working with arrays.

## Files in this Folder

1. **`1_Array.dart`:**
   - Implements a basic array-like structure using a Dart class.
   - **Features:**
     - Create and initialize an array with a specified size.
     - Set values interactively using user input.
     - Display the current elements of the array.
   - **Key Functions:**
     - `createArray(int totalSize, int usedSize)`: Initializes the array.
     - `setValue()`: Allows user input for setting array elements.
     - `show()`: Prints all elements of the array.

   - **Example Usage:**
     - An array is created with a total size of 8 and used size of 4.
     - Users can set values and display them via terminal interactions.

2. **`2_Array_methods.dart`:**
   - Implements common operations for array manipulation.
   - **Features:**
     - Traversing the array to display all elements.
     - Inserting a new element at a specified index.
     - Deleting an element at a specified index.
   - **Key Functions:**
     - `display(List<int> arr)`: Prints all elements of the array.
     - `insertion(List<int> arr, int element, int capacity, int index)`: Inserts an element at the given index if capacity allows.
     - `deletion(List<int> arr, int index)`: Removes the element at the given index.

   - **Example Usage:**
     - Demonstrates insertion of an element (`8`) at index `3`.
     - Shows deletion of the element at the same index.
     - Provides visual feedback on array contents after each operation.

## Notes
- The files utilize Dart's dynamic `List` type to simulate array behavior.
- While Dart does not have static arrays like C, these implementations offer an educational bridge for transitioning from languages like C to Dart.
- The methods showcase commonly performed array operations, making the code useful for beginners.

## How to Use
- Run the Dart files individually to see the operations in action.
- Modify the parameters (e.g., array size, elements, indices) to test different scenarios.
- Files are numbered (e.g., `1_Array.dart`, `2_Array_methods.dart`) for organizational purposes. This numbering is part of the author's learning approach and may help beginners follow along systematically.

---
