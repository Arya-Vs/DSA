mixin Swimmer {
  void swim() {
    print("Swimming");
  }
}

class Fish with Swimmer {}

class Human with Swimmer {}

void main() {
  Fish fish = Fish();
  Human human = Human();
  
  fish.swim();   // Output: Swimming
  human.swim();  // Output: Swimming
}
