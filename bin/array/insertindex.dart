// void main() {
//   List<int> insertIndexResult = insertAtIndex([2, 3, 4, 5, ], 3, 10);
//   print("Array after insertion at index: $insertIndexResult");
// }

// List<int> insertAtIndex(List<int> arr, int index, int element) {
//   for (int i = arr.length - 1; i >=index; i--) {
//     arr[i] = arr[i - 1];
//   }
//   arr[index] = element;
//   return arr;
// }

void main() {
  List<int> array = [1, 2, 3, 4, 5];
  int index = 2; // Example index
  int value = 99; // Example value to insert

  List<int> updatedArray = insertAtIndex(array, index, value);
  print("Array after inserting $value at index $index: $updatedArray");
}

List<int> insertAtIndex(List<int> arr, int index, int value) {
  if (index >= 0 && index <= arr.length) {
    arr.insert(index, value);
  } else {
    print("Index out of range");
  }
  return arr;
}
