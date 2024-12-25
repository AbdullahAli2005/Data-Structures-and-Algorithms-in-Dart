void printArray(List<int> array) {
  for (var element in array) {
    print('$element ');
  }
  print('');
}

void insertionSort(List<int> array) {
  for (int currentIndex = 1; currentIndex < array.length; currentIndex++) {
    int currentValue = array[currentIndex];
    int position = currentIndex - 1;

    // Shift elements to the right if they are greater than the current value
    while (position >= 0 && array[position] > currentValue) {
      array[position + 1] = array[position];
      position--;
    }
    // Insert the current value in the correct position
    array[position + 1] = currentValue;
  }
}

void main() {
  List<int> array = [78, 45, 90, 12, 34, 70, 43, 56, 88, 9];

  print('Array before sorting:');
  printArray(array);

  insertionSort(array);

  print('Array after sorting:');
  printArray(array);
}
