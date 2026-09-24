import 'can_fly.dart';

abstract class Tier {
  void move() {
    print('I like to move it..');
  }

  void makeSound() {
    print("I can speak like...");
  }

  void canBreathe() {
    print('I`m an Animal, i can breathe');
  }
}

void globalFly(Object? obj) {
  if (obj is CanFly) obj.fly();
}
