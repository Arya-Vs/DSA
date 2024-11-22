
class Animal {
  void eat() {
    print("Animal is eating");
  }
}

class Dog extends Animal {}

void main() {
  Dog myDog = Dog();
  myDog.eat();  // Inherited from Animal
  myDog.eat(); // Defined in Dog
}