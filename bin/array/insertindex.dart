void main() {
  List<int> insertIndexResult = insertAtIndex([2, 3, 4, 5, ], 3, 10);
  print("Array after insertion at index: $insertIndexResult");
}

List<int> insertAtIndex(List<int> arr, int index, int element) {
  for (int i = arr.length - 1; i >=index; i--) {
    arr[i] = arr[i - 1];
  }
  arr[index] = element;
  return arr;
}
