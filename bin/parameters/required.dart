
void greet({required String name, required int age}) {
  print('Hello, $name! You are $age years old.');
}

void main() {
  greet(name: 'Alice', age: 25);  // Output: Hello, Alice! You are 25 years old.
}
