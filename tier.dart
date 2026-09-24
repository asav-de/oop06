import 'can_fly.dart';

/// Abstract base class for all animals.
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

/// Lets [obj] fly if it implements [CanFly]; does nothing otherwise.
void globalFly(Object? obj) {
  if (obj is CanFly) obj.fly();
}
