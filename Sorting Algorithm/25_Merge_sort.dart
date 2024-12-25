void printArray(List<int> array) {
  for (int i = 0; i < array.length; i++) {
    print(array[i]);
  }
}

void merge(List<int> array, int low, int middle, int high) {
  List<int> tempArray = List.filled(array.length, 0); 

  int leftIndex = low; // Starting index of left subarray
  int rightIndex = middle + 1; // Starting index of right subarray
  int tempIndex = low; // Starting index for temp array

  // Merge the two halves into tempArray
  while (leftIndex <= middle && rightIndex <= high) {
    if (array[leftIndex] < array[rightIndex]) {
      tempArray[tempIndex] = array[leftIndex];
      leftIndex++;
    } else {
      tempArray[tempIndex] = array[rightIndex];
      rightIndex++;
    }
    tempIndex++;
  }

  // Copy the remaining elements from the left subarray
  while (leftIndex <= middle) {
    tempArray[tempIndex] = array[leftIndex];
    leftIndex++;
    tempIndex++;
  }

  // Copy the remaining elements from the right subarray
  while (rightIndex <= high) {
    tempArray[tempIndex] = array[rightIndex];
    rightIndex++;
    tempIndex++;
  }

  // Copy the sorted elements back to the original array
  for (int i = low; i <= high; i++) {
    array[i] = tempArray[i];
  }
}

void mergeSort(List<int> array, int low, int high) {
  if (low < high) {
    int middle = (low + high) ~/ 2; 

    // Sort the left half
    mergeSort(array, low, middle);

    // Sort the right half
    mergeSort(array, middle + 1, high);

    // Merge the two halves
    merge(array, low, middle, high);
  }
}

void main() {
  List<int> array = [78, 45, 90, 12, 34, 70, 43, 56, 88, 9];

  print("Array before sorting:");
  printArray(array);

  mergeSort(array, 0, array.length - 1);

  print("Array after sorting:");
  printArray(array);
}
