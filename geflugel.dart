import 'can_walk.dart';
import 'tier.dart';
import 'can_fly.dart';

class Geflugel extends Tier implements CanFly, CanWalk {
  String name;

  Geflugel({required this.name});

  @override
  void move() {
    print('I can move, walk and run because I`m Geflugel');
  }

  @override
  void makeSound() {
    print('I speak like $name: twitt, twitt...');
  }

  @override
  void fly() {
    print('I can fly. I`am a flying bird');
  }

  @override
  void canWalk() {
    print('I can walk like an Animal');
    move();
  }

  void get getName {
    print('My name is ${this.name}');
  }

  @override
  bool canFly() {
    return true;
  }
}
