import 'dart:io';

class MyArray {
  late int totalSize; // Total size of the array
  late int usedSize; // Used size of the array
  late List<int> array; // Dynamic list to hold elements

  // Method to create and initialize the array
  void createArray(int totalSize, int usedSize) {
    this.totalSize = totalSize;
    this.usedSize = usedSize;
    array = List.filled(totalSize, 0); // Initialize array with default values
  }

  // Method to display the array elements
  void show() {
    for (int i = 0; i < usedSize; i++) {
      print("Element $i: ${array[i]}");
    }
  }

  // Method to set values in the array
  void setValue() {
    for (int i = 0; i < usedSize; i++) {
      stdout.write("Enter element $i: ");
      int? value = int.tryParse(stdin.readLineSync() ?? "0");
      array[i] = value ?? 0; // Assign value or default to 0 if input is invalid
    }
  }
}

void main() {
  MyArray marks = MyArray();
  
  // Creating the array
  marks.createArray(8, 4);

  print("We are running setValue now:");
  marks.setValue();

  print("We are running show now:");
  marks.show();
}
