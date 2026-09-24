import 'fisch.dart';
import 'flug_fisch.dart';
import 'geflugel.dart';
import 'tier.dart';

void main() {
  Geflugel spatz = Geflugel(name: 'Spatz');

  spatz.getName;
  globalFly(spatz);
  spatz.canBreathe();
  spatz.move();
  spatz.canWalk();
  spatz.fly();
  spatz.makeSound();

  Fish karpfen = Fish(name: 'Karpfen');

  karpfen.getName;
  globalFly(karpfen);
  karpfen.canBreathe();
  karpfen.canBreatheUnderWater();
  karpfen.move();
  karpfen.makeSound();

  FlugFish flugFish = FlugFish(name: 'FlugFish');

  flugFish.getName;
  globalFly(flugFish);
  flugFish.canBreathe();
  flugFish.canBreatheUnderWater();
  flugFish.move();
  flugFish.makeSound();
}
