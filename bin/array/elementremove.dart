// void main() {
//   List<int> removeElementResult = removeByElement([3, 4, 4, 5, 1], 5);
//   print("Array after removing element 5: $removeElementResult");
// }

// List<int> removeByElement(List<int> arr, int element) {
//   arr.remove(element);
//   return arr;
// }


import 'dart:io';

void main() {
  List<int> numbers = [10, 20, 30, 40, 50];

  print("Original list: $numbers");

  print("Enter a number to remove from the list:");

  int? userInput = int.tryParse(stdin.readLineSync()!);

  if (userInput != null) {
    // Check if the number exists in the list
    if (numbers.contains(userInput)) {
      // Remove the number from the list
      numbers.remove(userInput);
      print("Number removed. Updated list: $numbers");
    } else {
      print("Number not found in the list.");
    }
  } else {
    print("Invalid input. Please enter a valid number.");
  }
}
