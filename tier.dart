import 'can_fly.dart';
import 'can_walk.dart';

abstract class Tier implements CanWalk {
  void move() {}

  void makeSound() {
    print("I can speak like...");
  }

  void canBreathe() {
    print('I`m an Animal, i can breathe');
  }

  @override
  void canWalk() {
    print('I can walk like an Animal');
  }
}

void globalFly(Object? obj) {
  if (obj is CanFly) {
    obj.fly();
  }
}
