import 'dart:io';

void main() {
  int num;
  bool prime = true;  // Initialize prime to true

  print("Enter a number");
  num = int.parse(stdin.readLineSync()!);

  if (num < 2) {
    prime = false;  // Numbers less than 2 are not prime
  } else {
    for (var i = 2; i <= num ~/ 2; i++) {  // Check up to num ~/ 2
      if (num % i == 0) {
        prime = false;
        break;
      }
    }
  }

  if (prime) {
    print("Prime");
  } else {
    print("Not prime");
  }
}
