import 'can_breathe_under_water.dart';
import 'tier.dart';

/// A fish: lives and breathes under water and cannot walk.
class Fish extends Tier implements CanBreatheUnderWater {
  Fish({required this.name});

  String name;

  @override
  void canBreatheUnderWater() {
    print('I can breathe under Water because i`m a Fish');
  }

  @override
  void canBreathe() {
    canBreatheUnderWater();
  }

  @override
  void makeSound() {
    print('I make sound under the Water like a Fish: bul, bul..');
  }

  @override
  void move() {
    print('I move under the water');
  }

  void get getName {
    print('My name is $name');
  }
}
