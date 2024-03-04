void main() {
  List<int> numbers = [2, 1, 8, 3];
  int result = sum(numbers);
  print('Sum is: $result');
}

int sum(List<int> numbers) {
  if (numbers.isEmpty) {
    return 0;
  }
  return numbers.first + sum(numbers.sublist(1));
}
