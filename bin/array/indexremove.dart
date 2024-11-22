// void main(){
//   List<int> removeIndexResult = removeAtIndex([3, 0,5, 4, 6, 2], 1);
//   print("Array after removing index 1: $removeIndexResult");
// }

// List<int> removeAtIndex(List<int> arr, int index) {
//   if (index >= 0 && index < arr.length) {
//     for (int i = index; i < arr.length - 1; i++) {
//       arr[i] = arr[i + 1];
//     }
//     arr.length = arr.length - 1;
//   }
//   return arr;
// }

import 'dart:io';

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6];
  print("Original array is: $numbers");
  print("Enter the index of the number to remove:");

  int? removeIndex = int.tryParse(stdin.readLineSync()!);

  if (removeIndex != null && removeIndex >= 0 && removeIndex < numbers.length) {
    numbers.removeAt(removeIndex);
    print("Updated array is: $numbers");
  } else {
    print("Invalid index. Please enter a valid index.");
  }
}
