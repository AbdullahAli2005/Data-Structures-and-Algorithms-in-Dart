void main() {
  List<int> arr = [25, 34, 56, 77, 98, 11, 33, 55];
  int element = 12;

  int searchIndex = linearSearch(arr, element);

  if (searchIndex != -1) {
    print("The element $element was found at index $searchIndex.");
  } else {
    print("The element $element was not found in the array.");
  }
}

int linearSearch(List<int> arr, int element) {
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == element) {
      return i; // Return the index if the element is found
    }
  }
  return -1; // Return -1 if the element is not found
}
