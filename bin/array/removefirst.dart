// void main() {
//   List<int> removedFirst = removeFirst([100, 2, 3, 4, 5,9]);
//   print("Remove From first: $removedFirst");
// }

// List<int> removeFirst(List<int> arr) {
//   if (arr.isNotEmpty) {
//     for (int i = 0; i < arr.length - 1; i++) {
//       arr[i] = arr[i + 1];
//     }
//     arr.length = arr.length - 1;
//   }
//   return arr;
// }

void main() {
  List<int> originalList = [3,1, 2, 3, 4, 5];
  List<int> removedFirst = originalList.sublist(1);
  print("Remove From first: $removedFirst");
}
