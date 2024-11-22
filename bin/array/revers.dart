// void main() {
//   List<int> originalList = [1, 2, 3, 4, 5, 6];
//   List<int> reversedList = List.from(originalList.reversed);
//   print("Reversed array: $reversedList");
// }

void main() {
  List<int> array = [1, 2, 3, 4, 5, 6];
  print("Original Array is: $array");

  List<int> reversedArray = [];
  for (int i = array.length - 1; i >= 0; i--) {
    reversedArray.add(array[i]);
  }

  print("Reversed Array is: $reversedArray");
}
