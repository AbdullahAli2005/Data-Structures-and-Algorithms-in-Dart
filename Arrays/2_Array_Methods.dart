import 'dart:io';

void display(List<int> arr) {
  // Code for Traversal
  for (int i = 0; i < arr.length; i++) {
    stdout.write('${arr[i]} ');
  }
  print('');
}

bool insertion(List<int> arr, int element, int capacity, int index) {
  // Code for Insertion
  if (arr.length >= capacity) {
    return false; // Insertion failed
  }
  arr.insert(index, element);
  return true;
}

void deletion(List<int> arr, int index) {
  // Code for Deletion
  arr.removeAt(index);
}

void main() {
  List<int> arr = [2, 4, 6, 10, 12];
  int capacity = 100; // Similar to the array capacity in C
  int element = 8, index = 3;

  print("Array Traversal:");
  display(arr);

  // Insertion
  if (insertion(arr, element, capacity, index)) {
    print("Array Insertion Completed:");
    display(arr);
  } else {
    print("Insertion failed: Capacity exceeded");
  }

  // Deletion
  deletion(arr, index);
  print("Element Deleted:");
  display(arr);
}
