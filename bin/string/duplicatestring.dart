// void main() {
//   String result = duplicateStringCount('AAABBC');
//   print(result);
// }

// String duplicateStringCount(String str) {
//   int count = 1;
//   String newString = "";
//   for (int i = 1; i < str.length; i++) {
//     if (str.codeUnitAt(i) == str.codeUnitAt(i - 1)) {
//       count++;
//     } else {
//       newString = newString + count.toString() + str[i - 1];
//       count = 1;
//     }
//   }
//   newString = newString + count.toString() + str[str.length - 1];
//   return newString;
// }



void main() {
  List<int> numbers = [1, 2, 3, 4, 2, 5, 6, 1, 7, 8, 9, 10, 5];

  Set<int> uniqueSet = Set();
  Set<int> duplicateSet = Set();

  for (int number in numbers) {
    if (!uniqueSet.add(number)) {
      // If the number is not added to the set, it's a duplicate
      duplicateSet.add(number);
    }
  }

  if (duplicateSet.isEmpty) {
    print("No duplicate elements found.");
  } 
  else {
    print("Duplicate elements found: ${duplicateSet.toList()..sort()}");
  }
}
