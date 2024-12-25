void printArray(List<int> array) {
  for (var element in array) {
    print('$element ');
  }
  print('');
}

void bubbleSort(List<int> array) {
  int temp;
  for (int pass = 0; pass < array.length - 1; pass++) {
    print('Working on pass number ${pass + 1}');
    for (int i = 0; i < array.length - 1 - pass; i++) {
      if (array[i] > array[i + 1]) {
        temp = array[i];
        array[i] = array[i + 1];
        array[i + 1] = temp;
      }
    }
  }
}

void bubbleSortAdaptive(List<int> array) {
  int temp;
  bool isAlreadySorted;
  for (int pass = 0; pass < array.length - 1; pass++) {
    print('Working on pass number ${pass + 1}');
    isAlreadySorted = true;
    for (int i = 0; i < array.length - 1 - pass; i++) {
      if (array[i] > array[i + 1]) {
        temp = array[i];
        array[i] = array[i + 1];
        array[i + 1] = temp;
        isAlreadySorted = false;
      }
    }
    if (isAlreadySorted) {
      return;
    }
  }
}

void main() {
  // List<int> array = [78, 45, 90, 12, 34, 70, 43, 56, 88, 9];
  List<int> array = [2, 4, 6, 8, 10];

  print('Array before sorting:');
  printArray(array);

  bubbleSort(array);
  bubbleSortAdaptive(array);

  print('Array after sorting:');
  printArray(array);
}
