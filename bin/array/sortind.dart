void main() {
  List<int> originalList = [5, 2, 8, 1, 3, 7];
  print("Array :$originalList");
  // Sort the original list in ascending order
  originalList.sort();
  print("Sorted array (ascending): $originalList");

  // If you want to sort in descending order, you can use the List.from constructor
  List<int> descendingOrderList = List.from(originalList.reversed);
  print("Sorted array (descending): $descendingOrderList");
}
