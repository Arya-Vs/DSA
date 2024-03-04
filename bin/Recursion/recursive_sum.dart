void main() {
  int result = addTwoNumbers(2,6);
  print('Sum is :$result');
}

int addTwoNumbers(int a, int b) {
  if (b == 0) {
    return a;
  }
  return 1+ addTwoNumbers(a, b - 1);
}
