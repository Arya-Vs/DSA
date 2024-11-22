
void greet({String name = 'Guest', int age = 0}) {
  print('Hello, $name. You are $age years old.');
}

void main() {
  greet(); // Uses default values: 'Guest' and 0
  greet(name: 'Alice'); // age uses default value: 0
  greet(age: 30); // name uses default value: 'Guest'
  greet(name: 'Bob', age: 25); // No default values used
}
