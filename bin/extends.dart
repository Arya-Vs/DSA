class Superclass {
  void method() {
    print('Method from Superclass');
  }
}

class Subclass extends Superclass {
  void anotherMethod() {
    print('Method from Subclass');
  }
}

void main() {
  Subclass obj = Subclass();
  obj.method(); // Inherited from Superclass
  obj.anotherMethod(); // Defined in Subclass
}
