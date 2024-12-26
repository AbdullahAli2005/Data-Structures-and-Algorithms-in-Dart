# Sorting Algorithms in Dart

This project demonstrates the implementation of various sorting algorithms in Dart. Sorting algorithms are fundamental in computer science and are used to reorder elements in a list or array in a particular order (usually ascending or descending). The following sorting algorithms are implemented:

1. **Bubble Sort**
2. **Insertion Sort**
3. **Selection Sort**
4. **Quick Sort**
5. **Merge Sort**

## Table of Contents
- [1. Bubble Sort](#1-bubble-sort)
- [2. Insertion Sort](#2-insertion-sort)
- [3. Selection Sort](#3-selection-sort)
- [4. Quick Sort](#4-quick-sort)
- [5. Merge Sort](#5-merge-sort)
- [6. Notes](#6-notes)
- [7. Acknowledgements](#7-acknowledgements)

---

## 1. Bubble Sort

**Concept**:  
Bubble Sort is one of the simplest sorting algorithms. It repeatedly compares adjacent elements in the list and swaps them if they are in the wrong order. This process continues until the list is sorted. It's named "Bubble" because smaller elements "bubble" to the top of the list with each iteration.

- **Time Complexity**: O(n²)
- **Space Complexity**: O(1)

### Optimized Bubble Sort (Adaptive)
In an optimized (adaptive) version, the algorithm checks whether the list is already sorted during a pass. If no swaps are made, the algorithm terminates early, reducing unnecessary comparisons.

---

## 2. Insertion Sort

**Concept**:  
Insertion Sort builds the sorted list one element at a time. It takes each element from the unsorted part of the list and inserts it into its correct position in the sorted part. This process is similar to sorting playing cards in hand.

- **Time Complexity**: O(n²)
- **Space Complexity**: O(1)

Insertion Sort is more efficient than Bubble Sort for smaller datasets or partially sorted data.

---

## 3. Selection Sort

**Concept**:  
Selection Sort works by dividing the list into two parts: a sorted part and an unsorted part. The algorithm selects the smallest element from the unsorted part and swaps it with the first element of the unsorted part. This is repeated until the entire list is sorted.

- **Time Complexity**: O(n²)
- **Space Complexity**: O(1)

Although Selection Sort is simple, it generally performs poorly for large lists and has a higher number of comparisons than other algorithms.

---

## 4. Quick Sort

**Concept**:  
Quick Sort is a divide-and-conquer algorithm. It picks an element as a pivot, partitions the list around the pivot (such that smaller elements are on the left and larger elements are on the right), and recursively sorts the sublists. The pivot selection and partitioning are key to its efficiency.

- **Time Complexity**: O(n log n) on average, O(n²) in the worst case
- **Space Complexity**: O(log n) for recursive calls

Quick Sort is one of the fastest sorting algorithms for large datasets, but its worst-case performance (O(n²)) can be avoided with good pivot selection.

---

## 5. Merge Sort

**Concept**:  
Merge Sort is also a divide-and-conquer algorithm. It divides the list into two halves, recursively sorts them, and then merges the two sorted halves. The merging step ensures the entire list is sorted.

- **Time Complexity**: O(n log n)
- **Space Complexity**: O(n)

Merge Sort guarantees good performance for large datasets. However, it requires additional space for merging the subarrays, making it less memory-efficient compared to Quick Sort.

---

## 6. Notes

- **Time Complexity**:  
  - **Bubble Sort, Insertion Sort, Selection Sort**: O(n²) (quadratic time complexity), which makes them inefficient for large datasets.
  - **Quick Sort, Merge Sort**: O(n log n) (log-linear time complexity) on average, making them much faster for large datasets.

- **Space Complexity**:  
  - **Bubble Sort, Insertion Sort, Selection Sort**: O(1) (constant space complexity), since they perform the sorting in place.
  - **Quick Sort**: O(log n) (recursive stack space).
  - **Merge Sort**: O(n) (additional space for merging).

- **Best Use Cases**:
  - **Bubble Sort**: Teaching purposes, small datasets.
  - **Insertion Sort**: Small or nearly sorted datasets.
  - **Selection Sort**: Simple but inefficient for large datasets.
  - **Quick Sort**: Large datasets (with careful pivot selection to avoid worst-case).
  - **Merge Sort**: Large datasets that require stable sorting or when external memory is involved.

---

## 7. Acknowledgements

This project is created to demonstrate fundamental sorting algorithms in Dart. These algorithms are essential for understanding algorithmic efficiency and are often used in various computer science applications.

Feel free to use, modify, or extend this project for educational purposes. If you have any suggestions or improvements, feel free to open an issue or contribute via pull requests.

---

### Thank You! 🙏

If you have any questions or need further clarification, feel free to reach out. Happy coding! 🚀
