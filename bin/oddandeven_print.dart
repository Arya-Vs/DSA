void main() {
  List<int> num = [1, 6, 3, 9, 4, 2, 7, 5];
  
  List<int> result = arrangeOddEven(num);

  print(result);
}

List<int> arrangeOddEven(List<int> num) {
  List<int> even = [];
  List<int> odd = [];

  for (int n in num) {
    if (n % 2 == 0) {
      even.add(n);
    } else {
      odd.add(n);
    }
  }

  List<int> arranged = [];
  int i = 0, j = 0;

  while (i < odd.length || j < even.length) {
    if (i < odd.length) {
      arranged.add(odd[i]);
      i++;
    }
    if (j < even.length) {
      arranged.add(even[j]);
      j++;
    }
  }

  return arranged;
}
