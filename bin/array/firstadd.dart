// void main() {
//   List<int> prependedList = prependElement([2, 1, 3, 4], 100);
//   print("Array after inserting at first: $prependedList");
// }

// List<int> prependElement(List<int> arr, int element) {
//   arr.insert(0, element);
//   return arr;
// }

// void main() {
//   List<int> originalList = [2, 1, 3, 4];
//   int elementToPrepend = 1000;
//   List<int> prependedList = [elementToPrepend, ...originalList];
//   print("Array after inserting at first: $prependedList");
// }



/////////////////Last

import 'dart:io';
void main() {
  // Create a growable list of integers
  List<int> numbers = [10, 20, 30, 40, 50];

  // Print the original list
  print("Original list: $numbers");

  // Ask the user to input a number to add
  print("Enter a number to add to the list:");
  int? addInput = int.tryParse(stdin.readLineSync()!);

  if (addInput != null) {
    // Add the number to the list
    numbers.add(addInput);
    print("Number added. Updated list: $numbers");
  } else {
    print("Invalid input. Please enter a valid number.");
  }
}



//////////////////First



// void main() {
//   // Create a growable list of integers
//   List<int> numbers = [10, 20, 30, 40, 50];

//   // Print the original list
//   print("Original list: $numbers");

//   // Ask the user to input a number to add
//   print("Enter a number to add to the beginning of the list:");
//   int? addInput = int.tryParse(stdin.readLineSync()!);

//   if (addInput != null) {
//     // Add the number to the beginning of the list
//     numbers.insert(0, addInput);
//     print("Number added. Updated list: $numbers");
//   } else {
//     print("Invalid input. Please enter a valid number.");
//   }
// }
