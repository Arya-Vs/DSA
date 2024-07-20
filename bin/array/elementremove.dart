// void main() {
//   List<int> removeElementResult = removeByElement([3, 4, 4, 5, 1], 5);
//   print("Array after removing element 5: $removeElementResult");
// }

// List<int> removeByElement(List<int> arr, int element) {
//   arr.remove(element);
//   return arr;
// }


void main(){
  List<int>removeByElementResult=removeByElement([1,2,3,4,5],5);
  print("Array after removing element 5:$removeByElementResult ");
}

List<int>removeByElement(List<int>arr,int element){
  arr.remove(element);
  return arr;
}
