void printArray(List<int> array) {
  for (int i = 0; i < array.length; i++) {
    print(array[i]);
  }
}

int partition(List<int> array, int low, int high) {
  int pivot = array[low];  
  int left = low + 1;      
  int right = high;       
  int temp;

  do {
    // Move left pointer rightward until an element greater than pivot is found
    while (left <= high && array[left] <= pivot) {
      left++;
    }

    // Move right pointer leftward until an element less than or equal to pivot is found
    while (right >= low && array[right] > pivot) {
      right--;
    }

    // If left is still less than right, swap the elements
    if (left < right) {
      temp = array[left];
      array[left] = array[right];
      array[right] = temp;
    }
  } while (left < right);

  // Swap the pivot element with the element at the right pointer
  temp = array[low];
  array[low] = array[right];
  array[right] = temp;

  // Return the index where the pivot is located after partition
  return right;
}

void quickSort(List<int> array, int low, int high) {
  if (low < high) {
    int partitionIndex = partition(array, low, high);

    // Recursively sort the left and right subarrays
    quickSort(array, low, partitionIndex - 1);  
    quickSort(array, partitionIndex + 1, high); 
  }
}

void main() {
  List<int> array = [78, 45, 90, 12, 34, 70, 43, 56, 88, 9];
  print('Original Array:');
  printArray(array);
  
  quickSort(array, 0, array.length - 1); 

  print('\nSorted Array:');
  printArray(array);
}
