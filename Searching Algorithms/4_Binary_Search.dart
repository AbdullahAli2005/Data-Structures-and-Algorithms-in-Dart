int binarySearch(List<int> arr, int element) {
  int low = 0;
  int high = arr.length - 1;

  // Keep searching until low <= high
  while (low <= high) {
    int mid = (low + high) ~/ 2; // Use integer division
    if (arr[mid] == element) {
      return mid; // Element found
    }
    if (arr[mid] < element) {
      low = mid + 1; // Move to the right subarray
    } else {
      high = mid - 1; // Move to the left subarray
    }
  }
  return -1; // Element not found
}

void main() {
  // Array must be sorted for binary search
  List<int> arr = [12, 24, 35, 48, 55, 78, 99];
  int element = 99; // Element to search for
  int searchIndex = binarySearch(arr, element);

  if (searchIndex != -1) {
    print("The element $element was found at index $searchIndex.");
  } else {
    print("The element $element was not found in the array.");
  }
}
