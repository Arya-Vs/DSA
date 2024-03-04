void main(){
  List<int> removeIndexResult = removeAtIndex([3, 0,5, 4, 6, 2], 1);
  print("Array after removing index 1: $removeIndexResult");
}

List<int> removeAtIndex(List<int> arr, int index) {
  if (index >= 0 && index < arr.length) {
    for (int i = index; i < arr.length - 1; i++) {
      arr[i] = arr[i + 1];
    }
    arr.length = arr.length - 1;
  }
  return arr;
}
