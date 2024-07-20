void main() {
  List<int> appendedList = appendElement([3, 3, 3, 1], 8);
  print("Array after inserting at last: $appendedList");
}

List<int> appendElement(List<int> arr, int element) {
  arr.add(element);
  return arr;
}