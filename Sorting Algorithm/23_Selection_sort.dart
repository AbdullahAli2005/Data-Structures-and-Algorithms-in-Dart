void printArray(List<int> array) {
  for (var element in array) {
    print('$element ');
  }
  print('');
}

void selectionSort(List<int> array) {
  int minIndex, temp;
  print('Running Selection Sort...');

  for (int currentPass = 0; currentPass < array.length - 1; currentPass++) {
    minIndex = currentPass;

    // Loop to find the smallest element in the unsorted portion
    for (int i = currentPass + 1; i < array.length; i++) {
      if (array[i] < array[minIndex]) {
        minIndex = i;
      }
    }

    // Swap the smallest element with the first unsorted element
    temp = array[currentPass];
    array[currentPass] = array[minIndex];
    array[minIndex] = temp;
  }
}

void main() {
  List<int> array = [78, 45, 90, 12, 34, 70, 43, 56, 88, 9];

  print('Array before sorting:');
  printArray(array);

  selectionSort(array);

  print('Array after sorting:');
  printArray(array);
}
