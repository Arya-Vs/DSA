// void main() {
//   List<int> numbers = [1, 2, 3, 4, 5];
//   print('enter a number:');
  
  
//   print(numbers); 
// }

// void main(List<String>argument){
//   List<int>result =findElementOfSum([1,3,4,3,2,6],10);
//   print(result);
// }

// List<int> findElementOfSum(List<int> num, int target) {
//   Set<int>nums={};
//   for(int i=0;i<num.length;i++){
//     int number=num[i];
//     int match =target-number;
//     if (num.contains(match)) {
//       return[number,match];
//     }
//     else{
//       nums.add(match);
//     }
//   }
//   return[];


///////// ADD ///////


// }
// void main() {
//   List<int> appendedList = appendElement([3, 3, 3, 1], 8);
//   print("Array after inserting at last: $appendedList");
// }

// List<int> appendElement(List<int> arr, int element) {
//   arr.add(element);
//   return arr;
// }

void main() {
  List<int> originalList = [1, 2, 3, 4];
  List<int> appendedList = [...originalList, 5];
  print("Array after inserting at last: $appendedList");
}
