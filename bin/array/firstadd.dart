// void main() {
//   List<int> prependedList = prependElement([2, 1, 3, 4], 100);
//   print("Array after inserting at first: $prependedList");
// }

// List<int> prependElement(List<int> arr, int element) {
//   arr.insert(0, element);
//   return arr;
// }

void main() {
  List<int> originalList = [2, 1, 3, 4];
  int elementToPrepend = 1000;
  List<int> prependedList = [elementToPrepend, ...originalList];
  print("Array after inserting at first: $prependedList");
}
