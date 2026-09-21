import 'can_fly.dart';
import 'fisch.dart';

class FlugFish extends Fish implements CanFly {
  new({required super.name});

  @override
  void fly() {
    print('I can speed up, jump out of the water, and fly a hundred meters');
  }

  @override
  void canWalk() {
    print(
      'I can`t walk, but i can swim, jump out of the water, and fly like a bird',
    );
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
