class Persons {
  String? name;
  int? age;

  setDetails(String newname, int newage) {
    name = newname; 
    age = newage;
  }
  printDetails() => 
    print('Name: $name, Age: $age');
}

void main() {
  Persons()
    ..setDetails('Jomon', 23)
    ..printDetails();
}
