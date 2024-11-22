void main() {
 

  List<int> arr = [1, 3, 4, 5, 7, 8];
  int target = 8;
  int result = binarySearch(arr, target);
  print(result);
}

int binarySearch(List<int> arr, int target) {
  int leftIndex = 0;
  int rightIndex = arr.length - 1;

  while (leftIndex <= rightIndex) {
    int middleIndex = (leftIndex + rightIndex) ~/ 2;

    if (arr[middleIndex] == target) {
      return middleIndex;
    } else if (arr[middleIndex] < target) {
      leftIndex = middleIndex + 1;
    } else {
      rightIndex = middleIndex - 1;
    }
  }

  return -1; // Return -1 if the target is not found
}


// class Learn{
//   learn(){
//     List<int>numbers=[1,2,3,4,5];
// numbers.insert(0, 8);
// numbers.remove(8);
// print(numbers);
//   }
// }

