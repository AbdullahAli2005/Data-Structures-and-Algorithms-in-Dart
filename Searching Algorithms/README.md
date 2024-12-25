# Searching Algorithms  

This folder contains Dart implementations of fundamental searching algorithms, demonstrating both linear and binary search techniques.

## Files in this Folder  

1. **`3_Linear_Search.dart`:**  
   - Implements the Linear Search algorithm.  
   - **Features:**  
     - Sequentially checks each element in the array until the target element is found or the end of the array is reached.  
   - **Key Functions:**  
     - `linearSearch(List<int> arr, int element)`: Searches for the given element in the array.  
       - Returns the index of the element if found, otherwise returns `-1`.  
   - **Example Usage:**  
     - Input array: `[25, 34, 56, 77, 98, 11, 33, 55]`.  
     - Searches for the element `12`, demonstrating the algorithm's behavior when the element is absent.  

2. **`4_Binary_Search.dart`:**  
   - Implements the Binary Search algorithm.  
   - **Features:**  
     - Works only on sorted arrays.  
     - Divides the array into halves to locate the target element efficiently.  
   - **Key Functions:**  
     - `binarySearch(List<int> arr, int element)`: Searches for the given element using binary search logic.  
       - Returns the index of the element if found, otherwise returns `-1`.  
   - **Example Usage:**  
     - Input array: `[12, 24, 35, 48, 55, 78, 99]`.  
     - Searches for the element `99` and returns its index.  

## Notes  
- **Linear Search:**  
  - Does not require the array to be sorted.  
  - Suitable for smaller datasets or unsorted arrays.  
  - Time Complexity: O(n), where n is the size of the array.  

- **Binary Search:**  
  - Requires a sorted array for operation.  
  - Highly efficient for large datasets.  
  - Time Complexity: O(log n).  

## How to Use  
- Execute each Dart file individually to observe the behavior of the search algorithms.  
- Experiment with different arrays and target elements to better understand the nuances of each method.  
- The files are organized and numbered systematically to aid learning and quick reference.  

---
