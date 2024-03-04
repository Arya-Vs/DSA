void main() {
  int findIndexResult = findIndex([3, 4, 5, 3, 5], 4);
  print("Index of value : $findIndexResult");
}

int findIndex(List<int> list, int value) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] == value) {
      return i;
    }
  }
  return -1; // Return -1 if the value is not found in the list
}
