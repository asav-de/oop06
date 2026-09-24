import 'can_fly.dart';
import 'fisch.dart';

/// A flying fish: a [Fish] that can also jump out of the water and fly.
class FlugFish extends Fish implements CanFly {
  new({required super.name});

  @override
  void fly() {
    print('I can speed up, jump out of the water, and fly a hundred meters');
  }

  @override
  void move() {
    print('I move under the water and sometimes above the water like a bird');
  }

  @override
  bool canFly() {
    return true;
  }
}
